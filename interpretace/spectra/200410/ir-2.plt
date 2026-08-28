textTitle = ""
textFile = 'NaH2PO4.0.dpt'
textFile2 = 'NH4_2_HPO4.0.dpt'
set key center top title " "
set label "NaH_2PO_4 - ATR" at 2400,2.2 center font "sans,20" tc rgb "red"
set label "(NH_4)_2HPO_4 - KBr" at 2400,2.1 center font "sans,20" tc rgb "blue"
set xlabel "Vlnočet [cm^{-1}]"
set xrange [4000 : 400.0]
set yrange [0 : 2.3]
set ylabel "Absorbance"
set style line 1 lt 2 lc rgb "red" lw 3
set border 3
set xtics 200 nomirror
set ytics nomirror
show style line
show label
set style line 1 lc rgb '#ff0000' lt 1 lw 1.1 pt 0 ps 0.5
set style line 2 lc rgb '#0000ff' lt 1 lw 1.1 pt 0 ps 0.5

set term pngcairo size 1500,1000 crop
textFileLen = strlen(textFile);
set output "NaH2PO4-NH4__HPO4-srovnani.png"

plot textFile with linespoints ls 1 notitle,\
textFile2 u ($1):($2 + 0.2) with linespoints ls 2 notitle