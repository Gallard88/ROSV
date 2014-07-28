#!/bin/bash
# script to record various system characteristics

MODULE="perf"
INTERVAL=60

while true;
do
  ETH=$(ifstat -n -i eth0 $INTERVAL 1 | grep -v KB | grep -v eth0 )
  SnotraClient $MODULE "Eth_In"  $(echo $ETH | cut -d' ' -s -f1 )
  SnotraClient $MODULE "Eth_Out"  $(echo $ETH | cut -d' ' -s -f2 )
done

#==========================
#==========================
