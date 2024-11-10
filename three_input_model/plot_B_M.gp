reset session 
set term wxt enhanced
set xlabel "time in ps"
set y2tics
set ytics nomirror
set ylabel "B-field in T"
set y2label "{/Symbol D} M"
set y2range [0:1]
#set yrange  [-3:3]
plot "output_B+" u ($1*1E12):4 w l axis x1y1 title "LCP B+  field" ,"output_B+" u ($1*1E12):(1-$5) w l axis x1y2 title "LCP {/Symbol D}M" ,"output_B-" u ($1*1E12):4 w l axis x1y1 title "RCP B - field" ,"output_B-" u ($1*1E12):(1-$5) w l axis x1y2 title "RCP {/Symbol D}M"
set key at screen 0.85, 0.5
