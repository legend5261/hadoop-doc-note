for host in $(cat /root/$1)
do
sstop=`sshpass -p rootdzwl ssh $host "/sbin/service ntpd stop"`
echo "$host ntp service stop info $sstop"
date=`sshpass -p rootdzwl ssh $host ntpdate jyibd34`
echo "$host:$date"
sstrt=`sshpass -p rootdzwl ssh $host "/sbin/service ntpd start"`
echo "$host start info :$sstart"
done
