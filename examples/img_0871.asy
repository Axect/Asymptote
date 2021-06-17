import graph;
import math;
size(300, IgnoreAspect);

texpreamble("\usepackage{lmodern}"+"\usepackage{amsmath}");

real f(real x) { return -(x+1)*(x-2); };
real g(real x) { return x-2; };

real xmin = -5.0;
real xmax = 5.0;

pen boldPen = black + 1pt;
pen dashedLine = black + dashed + .3pt;

Label Lf = Label("$y=f(x)$", position=EndPoint);
Label Lg = Label("$y=g(x)$", position=EndPoint);

draw(graph(f, -3., 4.), L=Lf, p=boldPen);
draw(graph(g, xmin, xmax), L=Lg);

draw((-2.,f(-2.)) -- (-2.,0.), dashedLine);

xaxis("$x$", arrow=ArcArrow(HookHead, size=2.5), xmin=-7., xmax=7.);
yaxis("$y$", ymax=4.,arrow=ArcArrow(HookHead, size=2.5));

label("$\alpha$",(-.8, -.3));
label("$\beta$",(1.9,-.5));
label("$\gamma$",(-2,.3));
label("$\text{O}$", (.3,-.3));