for host in $(cat $1)
#for host in $(cat /root/$1)
do
date=`sshpass -p rootdzwl ssh $host "date"`
echo "$host:$date"
shift
done
