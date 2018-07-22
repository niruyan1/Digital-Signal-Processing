function [dys] = DE4i(t,y)
L = 5;
R=10;
C = 0.2;
x=0;
dydt_1=y(2);
dydt_2= (x-y(1)-(L/R).*y(2))./(L*C);
dys=[dydt_1;dydt_2];
end
