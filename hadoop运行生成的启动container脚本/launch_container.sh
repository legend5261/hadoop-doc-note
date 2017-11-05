#!/bin/bash

export JAVA_HOME="/usr/java/jdk1.7.0_67-cloudera"
export NM_AUX_SERVICE_mapreduce_shuffle="AAA0+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
"
export NM_HOST="jyibd37"
export HADOOP_YARN_HOME="/usr/lib/hadoop-yarn"
export HADOOP_ROOT_LOGGER="INFO,console"
export JVM_PID="$$"
export STDERR_LOGFILE_ENV="/var/log/hadoop-yarn/container/application_1455673413228_168148/container_1455673413228_168148_01_000052/stderr"
export PWD="/data01/yarn/nm/usercache/hadoop/appcache/application_1455673413228_168148/container_1455673413228_168148_01_000052"
export NM_PORT="8041"
export LOGNAME="hadoop"
export MALLOC_ARENA_MAX="4"
export LD_LIBRARY_PATH="$PWD:/usr/lib/hadoop/lib/native:"
export LOG_DIRS="/var/log/hadoop-yarn/container/application_1455673413228_168148/container_1455673413228_168148_01_000052"
export NM_HTTP_PORT="8042"
export SHELL="/bin/bash"
export LOCAL_DIRS="/data01/yarn/nm/usercache/hadoop/appcache/application_1455673413228_168148,/data02/yarn/nm/usercache/hadoop/appcache/application_1455673413228_168148"
export HADOOP_COMMON_HOME="/usr/lib/hadoop"
export HADOOP_TOKEN_FILE_LOCATION="/data01/yarn/nm/usercache/hadoop/appcache/application_1455673413228_168148/container_1455673413228_168148_01_000052/container_tokens"
export CLASSPATH="$PWD:$HADOOP_CLIENT_CONF_DIR:$HADOOP_CONF_DIR:$HADOOP_COMMON_HOME/*:$HADOOP_COMMON_HOME/lib/*:$HADOOP_HDFS_HOME/*:$HADOOP_HDFS_HOME/lib/*:$HADOOP_YARN_HOME/*:$HADOOP_YARN_HOME/lib/*:$HADOOP_MAPRED_HOME/*:$HADOOP_MAPRED_HOME/lib/*:$MR2_CLASSPATH:job.jar/job.jar:job.jar/classes/:job.jar/lib/*:$PWD/*"
export STDOUT_LOGFILE_ENV="/var/log/hadoop-yarn/container/application_1455673413228_168148/container_1455673413228_168148_01_000052/stdout"
export USER="hadoop"
export HADOOP_CLIENT_OPTS=""
export HADOOP_HDFS_HOME="/usr/lib/hadoop-hdfs"
export CONTAINER_ID="container_1455673413228_168148_01_000052"
export HOME="/home/"
export HADOOP_CONF_DIR="/var/run/cloudera-scm-agent/process/12446-yarn-NODEMANAGER"
ln -sf "/data02/yarn/nm/filecache/4899/jasper-runtime-5.5.23.jar" "jasper-runtime-5.5.23.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/5025/oozie-client-4.0.0-cdh5.2.0.jar" "oozie-client-4.0.0-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4834/xz-1.0.jar" "xz-1.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/usercache/hadoop/appcache/application_1455673413228_168148/filecache/11/job.jar" "job.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4924/oro-2.0.8.jar" "oro-2.0.8.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4913/antlr-runtime-3.4.jar" "antlr-runtime-3.4.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4960/hbase-client-0.98.6-cdh5.2.0-tests.jar" "hbase-client-0.98.6-cdh5.2.0-tests.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4939/commons-httpclient-3.1.jar" "commons-httpclient-3.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4841/core-3.1.1.jar" "core-3.1.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4838/jetty-util-6.1.26.cloudera.2.jar" "jetty-util-6.1.26.cloudera.2.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4843/commons-io-2.4.jar" "commons-io-2.4.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4954/hbase-protocol-0.98.6-cdh5.2.0.jar" "hbase-protocol-0.98.6-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/usercache/hadoop/appcache/application_1455673413228_168148/filecache/10/job.xml" "job.xml"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4956/commons-el-1.0.jar" "commons-el-1.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/5026/elasticsearch-0.19.10.jar" "elasticsearch-0.19.10.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4837/snappy-java-1.0.4.1.jar" "snappy-java-1.0.4.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4900/commons-lang-2.4.jar" "commons-lang-2.4.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4912/jasper-compiler-5.5.23.jar" "jasper-compiler-5.5.23.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4886/stringtemplate-3.2.1.jar" "stringtemplate-3.2.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4948/commons-codec-1.4.jar" "commons-codec-1.4.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4853/commons-compress-1.4.1.jar" "commons-compress-1.4.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4908/log4j-1.2.16.jar" "log4j-1.2.16.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4946/jackson-core-asl-1.8.8.jar" "jackson-core-asl-1.8.8.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4909/slf4j-api-1.7.5.jar" "slf4j-api-1.7.5.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/5027/ojdbc6-11.2.0.1.0.jar" "ojdbc6-11.2.0.1.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4929/jsr305-1.3.9.jar" "jsr305-1.3.9.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4877/jsch-0.1.42.jar" "jsch-0.1.42.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4937/jackson-mapper-asl-1.8.8.jar" "jackson-mapper-asl-1.8.8.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4959/hbase-common-0.98.6-cdh5.2.0.jar" "hbase-common-0.98.6-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4878/jansi-1.9.jar" "jansi-1.9.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4936/htrace-core-2.04.jar" "htrace-core-2.04.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4888/jython-standalone-2.5.3.jar" "jython-standalone-2.5.3.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4863/paranamer-2.3.jar" "paranamer-2.3.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4880/jsp-2.1-6.1.14.jar" "jsp-2.1-6.1.14.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4869/jsp-api-2.1-6.1.14.jar" "jsp-api-2.1-6.1.14.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/5028/mds-common-1.0.3-dependencies.jar" "mds-common-1.0.3-dependencies.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4926/ant-1.6.5.jar" "ant-1.6.5.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4828/protobuf-java-2.5.0.jar" "protobuf-java-2.5.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4931/jline-0.9.94.jar" "jline-0.9.94.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4861/findbugs-annotations-1.3.9-1.jar" "findbugs-annotations-1.3.9-1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4864/servlet-api-2.5-6.1.14.jar" "servlet-api-2.5-6.1.14.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4951/hbase-client-0.98.6-cdh5.2.0.jar" "hbase-client-0.98.6-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4922/antlr-2.7.7.jar" "antlr-2.7.7.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4902/jetty-6.1.14.jar" "jetty-6.1.14.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4955/commons-collections-3.2.1.jar" "commons-collections-3.2.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4874/netty-3.6.6.Final.jar" "netty-3.6.6.Final.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4947/pig-0.12.0-cdh5.2.0.jar" "pig-0.12.0-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4920/jets3t-0.6.1.jar" "jets3t-0.6.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4881/parquet-pig-bundle-1.5.0-cdh5.2.0.jar" "parquet-pig-bundle-1.5.0-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4917/piggybank-0.12.0-cdh5.2.0.jar" "piggybank-0.12.0-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/5024/dxshs-fk-wf-2.3.0-SNAPSHOT.jar" "dxshs-fk-wf-2.3.0-SNAPSHOT.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4890/guava-11.0.2.jar" "guava-11.0.2.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4910/kfs-0.3.jar" "kfs-0.3.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4923/oozie-hadoop-utils-2.5.0-cdh5.2.0.oozie-4.0.0-cdh5.2.0.jar" "oozie-hadoop-utils-2.5.0-cdh5.2.0.oozie-4.0.0-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4911/commons-logging-1.1.jar" "commons-logging-1.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4943/json-simple-1.1.jar" "json-simple-1.1.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4839/automaton-1.11-8.jar" "automaton-1.11-8.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4898/joda-time-1.6.jar" "joda-time-1.6.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4918/oozie-sharelib-pig-4.0.0-cdh5.2.0.jar" "oozie-sharelib-pig-4.0.0-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4879/avro-1.7.6-cdh5.2.0.jar" "avro-1.7.6-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data02/yarn/nm/filecache/4860/hsqldb-1.8.0.10.jar" "hsqldb-1.8.0.10.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
ln -sf "/data01/yarn/nm/filecache/4914/oozie-sharelib-oozie-4.0.0-cdh5.2.0.jar" "oozie-sharelib-oozie-4.0.0-cdh5.2.0.jar"
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
exec /bin/bash -c "$JAVA_HOME/bin/java -Djava.net.preferIPv4Stack=true -Dhadoop.metrics.log.level=WARN  -Djava.net.preferIPv4Stack=true -Xmx1073741824 -Djava.io.tmpdir=$PWD/tmp -Dlog4j.configuration=container-log4j.properties -Dyarn.app.container.log.dir=/var/log/hadoop-yarn/container/application_1455673413228_168148/container_1455673413228_168148_01_000052 -Dyarn.app.container.log.filesize=0 -Dhadoop.root.logger=INFO,CLA org.apache.hadoop.mapred.YarnChild 192.168.188.72 34085 attempt_1455673413228_168148_r_000019_0 52 1>/var/log/hadoop-yarn/container/application_1455673413228_168148/container_1455673413228_168148_01_000052/stdout 2>/var/log/hadoop-yarn/container/application_1455673413228_168148/container_1455673413228_168148_01_000052/stderr "
hadoop_shell_errorcode=$?
if [ $hadoop_shell_errorcode -ne 0 ]
then
  exit $hadoop_shell_errorcode
fi
