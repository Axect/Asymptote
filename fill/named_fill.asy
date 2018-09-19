settings.outformat="svg";
unitsize(1cm);
arrowbar axisarrow = Arrow(TeXHead);
draw((-.1,0) -- (2,0), arrow=axisarrow);
draw((0,-.1) -- (0,2), arrow=axisarrow);
path s = (0,0){up} .. (1,1) .. (2,sqrt(2));
fill(s -- (2,0) -- cycle, mediumgray);
draw(s);