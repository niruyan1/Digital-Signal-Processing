function [dy] = DE2ii(t,y)
R = 10;
L = 0.5;
x =1;
dy = (x- y).*(R/L);
end