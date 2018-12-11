#!/bin/sh
cat iplist_all|while read line
do
        host_ip=`echo "$line"|awk -F'\t' '{print $1}'`
        host_port=`echo "$line"|awk -F'\t' '{print $2}'`
        echo $host_ip"->"$host_port
        /usr/bin/expect batch_backupconf.exp $host_ip $host_port
done