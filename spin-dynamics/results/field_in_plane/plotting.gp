set terminal wxt
#set y2tics 
#set ytics nomirror
set xlabel "time in picoseconds {/Symbol d} t"
set ylabel "|{/Symbol D} m|"
set xrange [0:150]
#set y2range [10:40]
#set y2label "Temperature in K"
set title "Magnetisation-length vs time"
plot "output_0T" u ($1*1e12):(1-$4) w l axis x1y1 title "B = 0 T", "output_-10T" u ($1*1e12):(1-$4) axis x1y1 w l title "B = -10 T ","output_10T" u ($1*1e12):(1-$4) axis x1y1 w l title "B = 10 T"

