set terminal wxt
set grid 
set mouse
set yrange [-1.01:1.01]
set xlabel "Applied field (H)"
set ylabel "Magnetization_z (M)"
plot "output_10K" u 1:4 w l title  "10 K", "output_33K" u 1:4 w l title  "33 K","output_65K" u 2:5 w l title  "65 K","output_20K" u 2:5 w l title  "20 K"
