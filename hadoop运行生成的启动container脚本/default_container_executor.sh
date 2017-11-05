#!/bin/bash
/bin/bash "/data01/yarn/nm/usercache/hadoop/appcache/application_1455673413228_168148/container_1455673413228_168148_01_000052/default_container_executor_session.sh"
rc=$?
echo $rc > "/data02/yarn/nm/nmPrivate/application_1455673413228_168148/container_1455673413228_168148_01_000052/container_1455673413228_168148_01_000052.pid.exitcode.tmp"
/bin/mv -f "/data02/yarn/nm/nmPrivate/application_1455673413228_168148/container_1455673413228_168148_01_000052/container_1455673413228_168148_01_000052.pid.exitcode.tmp" "/data02/yarn/nm/nmPrivate/application_1455673413228_168148/container_1455673413228_168148_01_000052/container_1455673413228_168148_01_000052.pid.exitcode"
exit $rc
