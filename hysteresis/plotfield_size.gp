set terminal wxt enhanced font "Arial,12" linewidth 1.5 size 1000,1000
#set output "28nm_all_solvers_45deg.pdf"
set grid 
set mouse
#set yrange [-1.01:1.01]
set xlabel "Applied field in mT (H)"
set ylabel "Magnetization_z (M)"
plot "output_Nd_10nm" u ($1*1E3):($4*$5) w l title "10 nm ", "output_Nd_20nm" u ($1*1E3):($4*$5) w l title "20 nm","output_Nd_30nm" u ($1*1E3):($4*$5) w l title "30 nm"
