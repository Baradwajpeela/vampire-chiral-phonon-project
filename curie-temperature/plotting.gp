set terminal pdfcairo enhanced font "Arial,12" linewidth 1.5 size 5,3
set output "Tc.pdf"
set grid 
set mouse
set xlabel "Temperatrue"
set ylabel "|M|"
set title "Magnetisation-length vs temperature"
Tc= 70
beta =0.34
m(x)=x<Tc? (1-(x/Tc))**beta:0.0
fit m(x) "output" u 1:2 via Tc,beta
plot "output" u 1:2 w p title "Monte-Carlo", m(x) w l title "m(T)= (1-T/T_c)^{/Symbol b}"
set yrange [0:1]
