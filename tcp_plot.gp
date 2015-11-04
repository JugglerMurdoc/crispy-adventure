set output "result_tcp.png"
set terminal pngcairo background rgb 'white' size 1600,900
set xlabel 'time' tc rgb 'black'
set ylabel 'flow' tc rgb 'black'
set border lc rgb 'black'
set key tc rgb 'black'
set linetype 1 lc rgb 'black'
plot 	'temp.queue' using 1:2  with lines title 'Queue current size' lt rgb "blue" lw 2,\
	'temp2.queue' using 1:2  with lines title 'Queue average size' lt rgb "green" lw 2
