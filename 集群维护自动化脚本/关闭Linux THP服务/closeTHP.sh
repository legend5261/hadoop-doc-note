for host in $(cat $1)
do
#result=`ssh $host "cat /sys/kernel/mm/redhat_transparent_hugepage/defrag"`
result=`ssh $host "cat /sys/kernel/mm/redhat_transparent_hugepage/enabled"`
des=`ssh $host "echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled"`
desResult=`ssh $host "cat /sys/kernel/mm/redhat_transparent_hugepage/enabled"`
echo "$host--$desResult"
shift
done
