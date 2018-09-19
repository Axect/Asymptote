settings.outformat="svg";
size(3cm,0);
draw((3,0) -- (0,0) -- (3,4));
draw(arc((0,0), (2,0), (3,4), direction=CW),
    arrow=Arrow(TeXHead), blue);
draw(arc((0,0), (2,0), (3,4), direction=CCW),
    arrow=Arrow(TeXHead), red);
dot((0,0));
dot((2,0));
dot((3,4));