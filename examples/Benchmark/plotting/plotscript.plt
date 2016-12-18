set term png
set key top left box
set style data histogram
set logscale y
set xrange [-0.5:2.5]
set style fill solid border rgb "black"

set output "Plot1.png"
f="Plot1.data"
plot for [COL=2:3] f using COL:xticlabels(1) title columnheader

set output "PlotNN.png"
f="PlotNN.data"
plot for [COL=2:3] f using COL:xticlabels(1) title columnheader

set output "PlotLogReg.png"
f="PlotLogReg.data"
plot for [COL=2:3] f using COL:xticlabels(1) title columnheader

unset style data
set xrange [*:*]
set logscale x
set output "PlotKerCSvm.png"
f="PlotKerCSvm.data"
plot for [COL=2:3] f using 1:COL w lp title columnheader

set output "PlotLinCSvm.png"
f="PlotLinCSvm.data"
plot for [COL=2:3] f using 1:COL w lp title columnheader