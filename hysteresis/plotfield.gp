set terminal wxt
#set output "demag_1.pdf"
set grid 
set mouse
#set yrange [-1.01:1.01]
set xlabel "Applied field (H)"
set ylabel "Magnetization_z (M)"
plot "output" u 1:4 w l 
