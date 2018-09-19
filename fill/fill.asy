settings.outformat="svg";
unitsize(1cm);
draw((-.1,0) -- (2,0), arrow=Arrow(TeXHead));
draw((0,-.1) -- (0,2), arrow=Arrow(TeXHead));
path s = (0,0){up} .. (1,1) .. (2,sqrt(2));
fill(s -- (2,0) -- cycle, mediumgray);
draw(s);