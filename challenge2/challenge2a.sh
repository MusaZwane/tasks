#!/bin/bash

##PATH=/etc/sysconfig/iptables
PATH=/etc/challenge

if [ ! -f $PATH ]; then
	echo "The file does not exist, Maybe look at installing the iptables"
 else
	 exit 0
fi
