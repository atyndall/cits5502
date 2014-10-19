set term tikz monochrome dashed size 5in,3in font ",9"
set style func linespoints
set style data lines
set nogrid
set xrange [0:5]
set xlabel "$t$"
set ylabel "Effort (minutes)"
set title "$a = 86.082, b = 0.859, c = 35.319, R^2 = 0.987$"
set title font ",12"
set format xy "%g"
set output "other-plot1-2.tex"
a = 86.082310
b = 0.859374
c = 35.319375
f(x) = (a+b*c*x)/(b*x+1)  
plot f(x) lw 3 lt 1 smooth csplines title "Curve", "other-data.txt" using 1:3 lw 1 lt 4  title "Raw Data"
set output
unset ylabel
unset xlabel