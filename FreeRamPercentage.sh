#!/bin/bash
#
# Script        :FreeRamPercentage.sh
# Author        :Ruggero Poletto
# Website       :cfdfeaservice.it
# License       :GPLv3
#

memfree=`cat /proc/meminfo | grep MemFree | awk '{print $2}'`; 
memtotal=`cat /proc/meminfo | grep MemTotal | awk '{print $2}'`; 
freeRam=$(($memfree * 100 / $memtotal))

if [ $freeRam -lt 20 ]
then
   echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
   echo "@ Free RAM below 20%            @"
   echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
fi
