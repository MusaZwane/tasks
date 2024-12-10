#!/bin/bash

IPTABLES_PATH=/etc/sysconfig/iptables

MODIFICATION=$(date +"%H")

###Time in seconds

ORIG_TIME=3600

CUR_TIME=$(date +%s)

TIME_STAMP=$(stat $IPTABLES_PATH -c %Y)

TIME_DIFF=$(expr $CUR_TIME - $TIME_STAMP)

ARCH=$(uname -r | sed 's/^.*\(el[0-9]\+\).*$/\1/')

if [ -e $IPTABLES_PATH ] && [ $ARCH == "el7" ]; then

          exit 0
          echo Conditions met for rhel7

       else
          echo Condition for RHEL7 were not met
fi


if [ -e $IPTABLES_PATH ] && [ $ARCH == "el8" ] && [ $TIME_DIFF -gt $ORIG_TIME  ] && ( [ $MODIFICATION == "07" ] || [ $MODIFICATION == "17" ] ); then

	/usr/bin/iptables-save > /etc/sysconfig/iptables &> /tmp/iptables.log
  else
	echo Conditions were not met!!
fi
