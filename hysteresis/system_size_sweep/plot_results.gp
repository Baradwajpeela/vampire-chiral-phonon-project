set terminal wxt
set grid 
set mouse
set yrange [-1.5:1.5]
set xlabel "Applied field (H)"
set ylabel "Magnetization_z (M)"
plot "output_6nm" u 2:5 w l title  "6nm", "output_13nm" u 2:5 w l title  "13 nm","output_26nm" u 2:5 w l title  "26 nm","output_52nm" u 2:5 w l title  "52 nm"
