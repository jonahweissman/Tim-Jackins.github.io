set title 'Resistance of Multiparallel Resistors'
set ylabel 'Resistance (ohms)'
set xlabel 'Trials'

unset grid
set term png
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [0:10]
set yrange [0:120]
set xtics 1
set mxtics 1
set datafile separator ','

set style line 1 linecolor rgb '#ff0000' linetype 1 linewidth 2 #theory
set style line 2 linecolor rgb '#0000ff' linetype 1 linewidth 2 #actual

#set terminal png enhanced
#set output 'resistor.png'
set lmargin 10
set bmargin 6
set terminal postscript eps enhanced color
set output 'resistor.eps'

plot \
'actual.csv' with errorbars linestyle 2 title 'actual', \
'theory.csv' with errorbars linestyle 1 title 'theoretical'
