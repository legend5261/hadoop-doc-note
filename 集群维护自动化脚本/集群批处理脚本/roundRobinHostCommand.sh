for host in `cat $1`
do
  cmd=`echo "$2##$host" | awk -F## 'gsub(/%s/,$2,$1){print $1}'`
  echo "ssh $host $cmd"
  result=`ssh $host "$cmd"`
  echo "$host : $result"
done
