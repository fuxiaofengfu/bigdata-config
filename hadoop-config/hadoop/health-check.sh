#!/bin/bash
MEMORY_RATIO=0.1
freeMem=`grep MemFree /proc/meminfo |awk '{print $2}'`
#freeMem=`echo | awk '{print int("'$freeMem'")}'`
totalMem=`grep MemTotal /proc/meminfo |awk '{print $2}'`
limitMem=`echo | awk '{print int("'$totalMem'"*"'$MEMORY_RATIO'")}'`
#echo "ERROR, totalMem=$totalMem, freeMem=$freeMem, limitMem=$limitMem"
echo "OK, totalMem=$totalMem, freeMem=$freeMem, limitMem=$limitMem"
