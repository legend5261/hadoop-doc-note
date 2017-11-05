#bin/shell
#用于监测namenode根目录大小和hdfs集群使用率及其反恐标准化数据和DWD表大小
#注意：
#    此脚本只能运行在namenode主机上
function spaecDaysSize(){   # $1=/hdata/fkv2/dwd/DWD_IMSI_IMEI_MAPPING  $2=date $3=days
   echo "$1:"
   talesizes=`hadoop fs -du -h $1 | sed 's/ //g'`
   number=0
   for table in $talesizes
   do
      date=`echo "$table" | cut -d/ -f6`
      if [ $date -ge $2 ];then
          number=`expr $number + 1`
          size=`echo "$table" | cut -d/ -f1`
          echo "                   $date is $size"
      fi
   done
   
   if [ $number -lt $3 ];then
      day=`expr $3 - $number`
      printDwdMiss $1 $day
   fi
}

function pathSize(){
   if [ "$2" == "0" ];then
      size=`hadoop fs -du -s -h $1`
      echo "$size"
    else
      size=`spaecDaysSize $1 $3 7`
      echo "$size" 
   fi
}

function isExists(){
	hadoop fs -test -d $1
	if [ "$?" == "0"  ];then
	   	echo "0"
	else
  		echo "1"
	fi
}


#/hdata/fkv2/bakdata:
#                   20150111/coninfo is 41.1G
#                   20150110/coninfo is 54.2G
#                   20150109/coninfo is 66.7G
#                   20150108/coninfo is 69.1G
#                   20150107/coninfo is 119.0G
#                   20150106/coninfo is 114.0G
#                   20150105/coninfo is 115.3G

function checkBakdataSize(){ #$1=/hdata/fkv2/bakdata/  $2=interval $3=coninfo/posinfo
   echo "$1:"
   for day in `seq $2 | sort -r`
   do
      time=`date --date "$day day ago" +%F | sed  's/-//g'`
      if [ $# -eq 3 ];then
         exists=`isExists "$1/$time/$3"`
         if [ "$exists" == "0" ];then
	         destsize=`hadoop fs -du -s -h $1/$time/$3 | sed 's/ //g'`
	      	 size=`echo "$destsize" | cut -d/ -f1`
	      	 echo "                   $time/$3 is $size"
	     else
	         echo "                   $time/$3---------NOT EXISTS--------"
      	 fi
      else
         exists=`isExists "$1/$time"`
         if [ "$exists" == "0" ];then
	      destsize=`hadoop fs -du -s -h $1/$time | sed 's/ //g'`
	      size=`echo "$destsize" | cut -d/ -f1`
	         echo "                   $time is $size"
	      else
	         echo "		          $time---------NOT EXISTS--------"
	     fi
      fi
   done
}


function printDwdMiss(){
	for day in `seq $2 | sort -r`
	   do
	      time=`date --date "$day day ago" +%F | sed  's/-//g'`
	         exists=`isExists "$1/$time"`
	         if [ "$exists" == "0" ];then
		         destsize=`hadoop fs -du -s -h $1/$time | sed 's/ //g'`
		      	 size=`echo "$destsize" | cut -d/ -f1`
		      	 echo "                   $time is $size"
		     else
		        echo "                   $time---------NOT EXISTS--------"
	      	 fi
	    done
}


sevendayago=`date --date "7 day ago" +%F | sed  's/-//g'`
formatDir=/hdata/fkv2/bakdata
dwdDir=/hdata/fkv2/dwd

#dwd global
dwdImsiImeiMappingday=$dwdDir/DWD_IMSI_IMEI_MAPPING_DAY

export LANG=zh_CN
diskUseLimit=60
dfsUseLimit=75

statTime=`date "+%F %T"`
echo "统计开始时间：$statTime"
echo
rootUse=`df -h | grep "/dev/sda2" | awk '{print $5}'` 
echo "nameNode($HOSTNAME)根目录使用率：$rootUse"
div=`echo "$rootUse" | cut -d% -f1 | awk '{print $1$2}'`
if [ $(echo "$div > $diskUseLimit" | bc) -eq 1 ];then
   echo "nameNode($HOSTNAME)根目录使用率：$rootUse%，超过$diskUseLimit，请尽快清理根目录空间"
   /home/hadoop/clusterCheck/printRootPathableDeletePath.sh
fi
echo

dfsUsed=`hadoop dfsadmin -report | sed -n '0,/---/p' | grep "DFS Used%"|awk  '{print $3}'`
echo "HDFS集群使用率: $dfsUsed"
div=`echo "$dfsUsed" | cut -d% -f1 | awk '{print $1$2}'`
if [ $(echo "$div > $dfsUseLimit" | bc) -eq 1 ];then
   echo "HDFS集群使用率: $dfsUsed 超过$dfsUseLimit%,请尽快清理集群空间"
   /home/hadoop/clusterCheck/hdfsAbleRemovePath.sh
fi
echo
echo "标准化数据："
checkBakdataSize $formatDir 7 

checkBakdataSize $formatDir 7 coninfo
checkBakdataSize $formatDir 7 posinfo
checkBakdataSize $formatDir 7 coninfo/cdr
checkBakdataSize $formatDir 7 coninfo/gsm
checkBakdataSize $formatDir 7 coninfo/smdr
checkBakdataSize $formatDir 7 coninfo/roam
checkBakdataSize $formatDir 7 coninfo/mms
checkBakdataSize $formatDir 7 coninfo/sms

checkBakdataSize $formatDir 7 posinfo/ldr
checkBakdataSize $formatDir 7 posinfo/gprs
checkBakdataSize $formatDir 7 posinfo/wap

echo
echo "DWD表数据："
pathSize $dwdImsiImeiMappingday 1 $sevendayago
for p in `hadoop fs -ls /hdata/fkv2/dwd | grep -iv "bak" | grep -iv "_day" | sed -n '2,$p' | grep DWD | grep -iv "zero" |awk '{print $8}'`
do 
   pathSize "$p" 1 $sevendayago   
done
statTime=`date "+%F %T"`
echo "统计结束时间：$statTime"
