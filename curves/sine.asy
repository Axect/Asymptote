settings.outformat="pdf";
unitsize(1cm);
draw((-.1,0) -- (2*pi+.1,0), arrow=Arrow(TeXHead));
draw((0,-1.1) -- (0,1.1), arrow=Arrow(TeXHead));
draw((0,0){(1,1)} .. {right}(pi/2,1) .. {(1,-1)}(pi,0)
    .. {right}(3*pi/2,-1) .. {(1,1)}(2*pi, 0));