set terminal png
set xdata time
set timefmt "%y/%m/%d %H:%M:%S"
set format x "%H:%M"

set title "line speed"

set output outputfile
plot [][0:] datafile using 1:3 title "response time[ms]" with lines
