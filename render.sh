#!/bin/bash

here=$(cd $(dirname $0);pwd)

datestr=$(date +%y%m%d)
tsvfile=$here/target/${datestr}.tsv
output=$here/target/${datestr}.png
cat $here/logs/speed_${datestr}.log | awk -F'[ /:]' '{print $1"/"$2"/"$3" "$4":"$5":"$6"\t"$15}' > $tsvfile
gnuplot -e "datafile='${tsvfile}'; outputfile='${output}'" $here/render.gp
slackcat -c room_nyango $output
