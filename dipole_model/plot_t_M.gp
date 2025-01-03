reset session 
set terminal wxt
#set terminal pdfcairo enhanced font "Arial,12" linewidth 1.5 size 5,3
#set output "demag_factor_1.pdf" 
set xlabel "time in ps"
#set y2tics
#set ytics nomirror
#set y2label "B-field in T"
set ylabel "{/Symbol D}M"
#set yrange [0:0.03]
set key bottom right
plot "output_B+" u ($1*1E12):(0.95-$5) w l axis x1y1 title "LCP {/Symbol D}M" ,"output_B-" u ($1*1E12):(0.95-$5) w l axis x1y1 title "RCP {/Symbol D}M","output_B_0" u ($1*1E12):(0.95-$5) w l axis x1y1 title "0 Field {/Symbol D}M"

