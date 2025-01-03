reset
set terminal pdfcairo enhanced font "Arial,12" linewidth 1.5 size 5,3
set output "plot_B+.pdf"
set grid 
set mouse
set y2tics
set ytics nomirror
set xlabel "Time (in ps)"
set ylabel "Temperature (in K)"
set y2label "Applied Field (in T)"
set y2range [0:1]
plot "output_B+" u ($1*1e12):2 w l axis x1y1 title "electron temperature", "output_B+" u ($1*1e12):3 w l axis x1y1 title "Phonon temperature","output_B+" u ($1*1e12):4 w p axis x1y2 title "B-field (T)","output_B+" u ($1*1e12):(1-$5) w l axis x1y2 title "1-|M|"
