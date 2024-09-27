set terminal wxt persist
set grid 
set mouse
set y2tics
set ytics nomirror
set xlabel "Time (in ps)"
set ylabel "Temperature (in K)"
set y2label "Applied Field (in  10 T)"
set y2range [0:1]
plot "output" u ($1*1e12):2 w l axis x1y1 title "electron temperature", "output" u ($1*1e12):3 w l axis x1y1 title "Phonon temperature","output" u ($1*1e12):($4/10) w p axis x1y2 title "B-field (T)","output" u ($1*1e12):(0.995-$5)*4 w l axis x1y2 title "|M|"
