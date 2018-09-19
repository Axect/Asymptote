settings.outformat="svg";
size(4cm);
path thebox = box((0,0), (1,1));
fill(thebox, blue);
draw(shift(.5, .5)*thebox, green+linewidth(5pt));
clip(thebox);
draw(shift(-.5, -.5)*thebox, red+linewidth(5pt));