set output "result.png"
set terminal pngcairo background rgb 'white' size 1600,900
set xlabel 'time' tc rgb 'black'
set ylabel 'flow' tc rgb 'black'
set border lc rgb 'black'
set key tc rgb 'black'
set linetype 1 lc rgb 'black'
plot 'out0.tr' using 1:2  with lines title 'Agent UDP 1' lt rgb "blue" lw 3,\
     'out1.tr' using 1:2  with lines title 'Agent UDP 2' lt rgb "red"  lw 3,\
     'queue.tr'using 1:11  with lines title 'Queue' lt rgb "red"  lw 3
