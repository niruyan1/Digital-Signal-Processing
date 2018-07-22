function [dy] = DE2i(t,y)
R = 10;
L = 0.5;
x =0;
dy = (x- y).*(R/L);
end