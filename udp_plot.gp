set output "udp_2flows.png"
set terminal pngcairo background rgb 'white' size 1600,900
set xlabel 'Temps en s' tc rgb 'black'
set ylabel 'Débit reçu en MB/s' tc rgb 'black'
set border lc rgb 'black'
set key tc rgb 'black'
set linetype 1 lc rgb 'black'
plot 'udp0.tr' using 1:2  with lines title 'Agent UDP 1' lt rgb "blue" lw 2,\
     'udp1.tr' using 1:2  with lines title 'Agent UDP 2' lt rgb "red"  lw 2
