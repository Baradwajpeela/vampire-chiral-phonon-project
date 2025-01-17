set terminal pdfcairo enhanced font "Arial,12" linewidth 1.5 size 5,3
set output "28nm_all_solvers_45deg.pdf"
set grid 
set mouse
#set yrange [-1.01:1.01]
set xlabel "Applied field in mT (H)"
set ylabel "Magnetization_z (M)"
plot "output_Nd_off" u ($1*1E3):4 w l title "Demagnetising fields off ", "output_dipole" u ($1*1E3):4 w l title "Dipole solvers","output_Nd" u ($1*1E3):4 w l title "N_d = [0 0 1]"
