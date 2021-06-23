import graph;
import math;
size(250, IgnoreAspect);

texpreamble("\usepackage{lmodern}"+"\usepackage{amsmath}");

pen normalPen = black + 1pt;
pen dashedPen = black + 1pt + dashed;

real x1 = -3.837;
real y1 = -4.612;
real x2 = 5.837;
real y2 = -1.388;

draw(arc((0,0), r=6, angle1=230, angle2=-13), p=normalPen);
draw(arc((0,0), r=6, angle1=-130, angle2=-13), p=dashedPen);
draw(arc((2,-6), (x2,y2), (x1,y1)), p=normalPen);
draw((x1, y1)--(x2,y2));

label("$6$", (6.3, 0.3));
label("$6$", (-0.3, 6.4));
label("$-6$", (-6.5, -0.4));
label("$-6$", (-0.5, -6.4));
label("$\text{P}$", (x1-0.25,y1-0.25));
label("$\text{Q}$", (x2+0.4,y2));
label("$\text{O}$", (-0.3,0.3));
label("$2$", (2,0.3));

xaxis("$x$", arrow=ArcArrow(HookHead, size=2.5), xmin=-7.5, xmax=7.5);
yaxis("$y$", ymin=-7.5, ymax=7.5,arrow=ArcArrow(HookHead, size=2.5));