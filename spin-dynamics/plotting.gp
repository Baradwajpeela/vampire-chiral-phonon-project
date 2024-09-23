set terminal wxt
set y2tics 
set ytics nomirror
set xlabel "time in picoseconds {/Symbol d} t"
set ylabel "|{/Symbol D} m|"
set xrange [0:150]
set y2range [10:40]
set y2label "Temperature in K"
set title "Magnetisation-length vs time"
plot "output" u ($1*1e12):(1-$4) w l axis x1y1 title "|M|", "output" u ($1*1e12):2 axis x1y2 w l title " electron Temperature","output" u ($1*1e12):3 axis x1y2 w l title " phonon Temperature"

