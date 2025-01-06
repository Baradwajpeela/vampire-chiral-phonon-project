set terminal wxt
#set output "demag_1.pdf"
set grid 
set mouse
#set yrange [-1.01:1.01]
set xlabel "Applied field in mT (H)"
set ylabel "Magnetization_z (M)"
plot "output" u ($1*1E3):4 w l 
