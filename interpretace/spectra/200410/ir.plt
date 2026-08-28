textTitle = ""
textFile = 'Ph3SiOH.0.dpt'
set key center top title " "
#set label "(NH_4)_2HPO_4 - ATR" at 2400,1.8 center font "sans,20" tc rgb "red"
set xlabel "Vlnočet [cm^{-1}]"
set xrange [4000 : 400.0]
set yrange [0 : 2]
set ylabel "Absorbance"
set style line 1 lt 2 lc rgb "red" lw 3
set border 3
set xtics 200 nomirror
set ytics nomirror
show style line
show label
set style line 1 lc rgb '#000000' lt 1 lw 1.1 pt 0 ps 0.5
set style line 2 lc rgb '#0000ff' lt 1 lw 1.1 pt 0 ps 0.5

set term pngcairo size 1500,1000 crop
textFileLen = strlen(textFile);
set output "Ph3SiOH-ATR.png"

plot textFile with linespoints ls 1 notitle