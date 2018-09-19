settings.outformat="svg";
size(5cm);
for (int n = 3; n <= 7; ++n) {
    draw(shift(2.2*n, 0) *
    polygon(n));
}