

#!/bin/bash
disk=`df -h . | awk -F " " 'NR==2 {print $5}' | sed 's/%/ /g'`

sat   if [ $disk -ge 30 ]
then
	echo "memory reached thershold value" | mail -s "memory utilization" samarthgowda85@gmail.com
fi
