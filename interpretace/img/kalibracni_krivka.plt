set xrange [0 : 25]
set yrange [0 : 0.4]

set xlabel 'Koncentrace [mg.cm^{-3}]'
set ylabel 'Absorbance'

set terminal png
set output 'kalibracni_krivka.png'

f(x)=m*x + b

fit f(x) 'kalibracni_krivka.data' using 1:2 via m,b

plot 'kalibracni_krivka.data' using 1:2 title '' with points,\
f(x) notitle lw 2