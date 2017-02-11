#!/bin/bash

#Total RAM USAGE
TOTAL_RAM=`free -m | awk '{print $2}'| head -2 | tail -1`
echo $TOTAL_RAM
 
#FREE RAM USAGE
FREE_RAM=`free -m | awk '{print $4}'| head -3| tail -1`
echo $FREE_RAM
 
#expr $FREE_RAM - $TOTAL_RAM
FREE_PERCENT=$(( 100*FREE_RAM / TOTAL_RAM ))
USED_PERCENT=$(( 100-$FREE_PERCENT))
echo "Percentage Used :" $USED_PERCENT
