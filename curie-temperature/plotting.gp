set terminal wxt
set y2tics 10,5,40
set ytics nomirror
set xlabel "time in picoseconds {/Symbol d} t"
set ylabel "|m|"
set title "Magnetisation-length vs time"
set xrange [5:7.5]
set y2range [10:40]
plot "output" u ($1*1e12):4 w l axis x1y1 title "|M|", "output" u ($1*1e12):2 axis x1y2 w l title "Temperature"



