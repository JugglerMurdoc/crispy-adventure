set output "result.png"
set y2range [0:100]
set autoscale y
set terminal pngcairo background rgb 'white' size 1600,900
set xlabel 'time' tc rgb 'black'
set ylabel 'flow' tc rgb 'black'
set y2label 'link queue size (in packets)' tc rgb 'green'
set border lc rgb 'black'
set key tc rgb 'black'
set linetype 1 lc rgb 'black'
plot 'out0.tr' using 1:2  with lines title 'Agent UDP 1' lt rgb "blue" lw 1 axes x1y1,\
     'out1.tr' using 1:2  with lines title 'Agent UDP 2' lt rgb "red"  lw 1 axes x1y1,\
     'queue.tr'using 1:5  with lines title 'Queue' lt rgb "green"  lw 1 axes x1y2
