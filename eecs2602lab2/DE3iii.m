function [dy] = DE3iii(t,y)
R1 = 5;
RL=10;
C = 0.2;
x=0.4.*cos(0.5.*pi.*t);
dy = ((x- y)-(R1/RL).*y).*(R1*C);
end