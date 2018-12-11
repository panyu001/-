#!/bin/sh
if [ $# != 1 ];then
        echo "Çë´«²ÎÊý£¡"
        exit 1;
fi

for i in `find /opt/phpdba/ -maxdepth 4 -type f -regex ".*\.\(com\|conf\|cnf\)" 
          \-print|grep -E 'httpd\.conf|nginx\.conf|squid\.conf|*\.com|*\.cnf'`;
       do        
        tmp=`echo "$i"|sed s#/#_#g`        
        echo $i
        scp -Pxxx $i xxx.xxx.xxx.xxx:/opt/phpdba/backup_conf/$1_${tmp}
         \`date +%Y%m%d%H`
done
