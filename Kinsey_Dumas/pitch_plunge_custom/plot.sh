#!/bin/bash

cd postProcessing/forceCoeffs/0/

gnuplot -persist > /dev/null 2>&1 << EOF
        set title "Cy vs. Time"
        set xlabel "Time [s]"
        set ylabel "Cy [Non-Dimensional]"
        plot [229:271][] "forceCoeffs.dat" u 1:4 t "Cy" w l lw 2, "forceCoeffs.dat" u 1:3 t "Cx" w l lw 2
	
EOF

gnuplot -persist > /dev/null 2>&1 << EOF
        set title "Cy vs. Time"
        set xlabel "Time [s]"
        set ylabel "Cy [Non-Dimensional]"
        plot [0.1:][] "forceCoeffs.dat" u 1:4 t "Cy" w l lw 2, "forceCoeffs.dat" u 1:3 t "Cx" w l lw 2
        
EOF

cd ../../forces/0/

gnuplot -persist > /dev/null 2>&1 << EOF
        set title "Force vs. Time"
        set xlabel "Time [s]"
        set ylabel "Force [N/m]"
        plot [229:271][:] "forces.dat" u 1:3 t "Fy" w l
EOF
#call "save_plot" "1eminus4" "size 800,450"
