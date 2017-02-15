#!/bin/bash

here=$(cd $(dirname $0);pwd)

ping  8.8.8.8 | while read pong
do
  echo "$(date +'%y/%m/%d %H:%M:%S'): $pong" | grep "Request" >> $here/logs/err_$(date +%y%m%d).log
done

