function [dy] = DE3i(t,y)
R1 = 5;
RL=10;
C = 0.2;
x=0;
dy = ((x- y)-(R1/RL).*y).*(R1*C);
end