reset session 
set terminal wxt
set xlabel "time in ps"
set y2tics
set ytics nomirror
set y2label "B-field in T"
set ylabel "{/Symbol D}M"
#set y2range [0:1]
set key bottom right
plot "output_B+" u ($1*1E12):2 w l axis x1y2 title "electron temperature in K","output_B+" u ($1*1E12):3 w l axis x1y2 title "Phonon temperature in K", "output_B+" u ($1*1E12):4 w l axis x1y2 title "LCP B+  field" ,"output_B+" u ($1*1E12):(1-$5) w l axis x1y1 title "LCP {/Symbol D}M" ,"output_B-" u ($1*1E12):4 w l axis x1y2 title "RCP B - field" ,"output_B-" u ($1*1E12):(1-$5) w l axis x1y1 title "RCP {/Symbol D}M"