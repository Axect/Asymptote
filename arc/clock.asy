settings.outformat="svg";
size(3cm,0);
draw((-1.2,0) -- (1.2,0));
draw((0,-1.2) -- (0,1.2));
draw(arc((0,0), r=1, angle1=270, angle2=0), 
    arrow=Arrow(TeXHead));