#!/bin/bash
# script to record various system characteristics

MODULE="perf"

CPU_15=$(uptime | sed -e 's/.*load average: \(.*\...\), \(.*\...\), \(.*\...\)/\3/' -e 's/ //g')
SnotraClient $MODULE "CPU15" $CPU_15


MEM=$(free -bm | grep Mem: ) # | sed -e 's/Mem: *//' -e 's/ ?/,/g' -e 's/      /,/g')
SnotraClient $MODULE "Mem_Used" $(echo $MEM | cut -d' ' -s -f3 )

#==========================
#==========================
