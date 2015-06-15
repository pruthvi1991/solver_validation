#!/bin/bash

cd postProcessing/forceCoeffs/0/

gnuplot -persist > /dev/null 2>&1 << EOF
        set title "Cy vs. Time"
        set xlabel "Time [s]"
        set ylabel "Cy [Non-Dimensional]"
        plot [0.8:][] "forceCoeffs.dat" u 1:4 t "Cy" w l

call "save_plot" "1eminus4" "size 800,450"

EOF
