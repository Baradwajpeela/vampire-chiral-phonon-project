set terminal wxt
set grid 
set mouse
set xlabel "Temperatrue"
set ylabel "|M|"
set title "Magnetisation-length vs temperature"
Tc= 70
beta =0.34
m(x)=x<Tc? (1-(x/Tc))**beta:0.0
fit m(x) "output" u 1:2 via Tc,beta
plot "output" u 1:2 w p, m(x) w l
set yrange [0:1]
