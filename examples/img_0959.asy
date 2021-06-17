import graph;
import math;
size(250, IgnoreAspect);

texpreamble("\usepackage{lmodern}"+"\usepackage{amsmath}");

void pathlabel(picture pic = currentpicture, Label L, path g, real position=0.5, align align=NoAlign, bool sloped=false, pen p=currentpen, filltype filltype=NoFill) {
    Label L2 = Label(L, align, p, filltype,
    position=Relative(position));
    if (sloped) {
        pair direction = dir(g, reltime(g, position));
        real angle = degrees(atan2(direction.y, direction.x));
        L2 = rotate(angle)*L2;
    }
    label(pic, L2, g);
}

real f(real x) { return -x+3; };

real xmin = -0.5;
real xmax = 3.5;

pen normalPen = black + 1pt;


draw(graph(f, xmin, xmax));
label("$y=-x+3$", (0.75, 3));

path p1 = (0,1) -- (1.5,1.5);
path p2 = (2,0) -- (1.5,1.5);

pathlabel("$\parallel$", p1, position=0.5, sloped=true, align=(0,0));
pathlabel("$\parallel$", p2, position=0.5, sloped=true, align=(0,0));

draw(p1, p=normalPen);
draw(p2, p=normalPen);

fill(circle((2,0), 0.08));
fill(circle((0,1), 0.08));

label("$\text{A}(2,0)$", (2,-0.2));
label("$\text{B}(0,1)$", (-0.5,1));
label("$\text{P}(a,b)$", (1.9,1.6));
label("$\text{O}$", (-0.1,-0.1));

xaxis("$x$", arrow=ArcArrow(HookHead, size=2.5), xmin=xmin, xmax=xmax+1.);
yaxis("$y$", ymin=-0.8,ymax=4.5,arrow=ArcArrow(HookHead, size=2.5));
