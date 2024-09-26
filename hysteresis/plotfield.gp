set terminal x11
set y2tics 
set ytics nomirror
set xlabel "Time (in ps)"
set ylabel "Temperature (in K)"
set y2label "Applied Field (in T)"
plot "output" u ($1*1e12):2 w l axis x1y1 title "electron temperature", "output" u ($1*1e12):3 w l axis x1y1 title "Phonon temperature","output" u ($1*1e12):3 w l axis x1y2 title "B-field (T)"  
