set terminal wxt
set y2tics 
set ytics nomirror
set xlabel "time in picoseconds {/Symbol d} t"
set ylabel "|m|"
set title "Magnetisation-length vs time"
plot "output" u ($1*1e12):4 w l axis x1y1 title "|M|", "output" u ($1*1e12):2 axis x1y2 w l title " electron Temperature","output" u ($1*1e12):3 axis x1y2 w l title " Phonon Temperature"

