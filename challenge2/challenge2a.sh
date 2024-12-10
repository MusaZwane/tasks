#!/bin/bash

##IPTABLES_PATH=/etc/sysconfig/iptables
IPTABLES_PATH=/etc/challenge

if [ ! -f $IPTABLES_PATH ]; then
	echo "The file does not exist, Maybe look at installing the iptables"
 else
	 exit 0
fi
