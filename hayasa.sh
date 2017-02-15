#!/bin/bash

here=$(cd $(dirname $0);pwd)

while :
do
  speed=$(ping -c 10 8.8.8.8 | tail -1)
  echo "$(date +'%y/%m/%d %H:%M:%S'): $speed" >> $here/logs/speed_$(date +%y%m%d).log
done

