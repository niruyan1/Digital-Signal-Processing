% Niruyan Rakulan Rakulan 214343438
% Ziad El Bakr 213525258
%Lab 3
%% Q1a
clear all;
close all;
T=2;
w0=2*pi/T;
t=-4:0.02:4;
sum=0;
for n=1:40
sum=sum+cos(n.*w0.*t)/(4.*n.^2-1);
end
y=2/pi-(4/pi).*sum;
plot(t,y)
axis([-4 4 -1 2])
hold on;
ylabel('x(t)');
xlabel('t');
grid;
%% Q1b
clear all;
close all;
n=-10:10;
Dn = -4/pi./(4*n.^2-1)/2;
subplot(2,1,1);
stem(n,abs(Dn));
ylabel('Dn');
xlabel('n');
subplot(2,1,2);
stem(n,angle(Dn));
ylabel('Phase');
xlabel('n');
%% Q1c
clear all;
close all;



xt=0;
yt=0;
t=-4:0.02:4;
for n=-25:25
impulse=10./(30.5+1i.*pi.*n);
Dn = -4/pi./(4*n.^2-1)/2;
inside=Dn.*exp(1i.*n.*pi.*t);
xt=xt+inside;
yt=yt+inside.*impulse;
end
plot(t,xt,t,yt);
legend('x(t)','y(t)');
xlabel('t');
ylabel('Magnitude');

%% Q2 a
%assume w=pi
clear all;
close all;
t=-3:0.02:3;
xt=0;
for n=-25:2:25
  
    if (n>0)
        Dn=1/2.*(-1j.*(4/(pi.*n)));
    elseif (n<0)
         Dn=1/2.*(1j.*((4/(pi.*-n))));
    else
        Dn=0;
    end
    xt=xt+Dn.*exp(-1j.*n.*pi.*t);
        
end


plot(t,xt);grid;
xlabel('t');
ylabel('x2(t)');
grid;

%% Q2 b
clear all;
close all;


yt=0;
t=-3:0.02:3;

xt=0;
for n=-25:2:25
    impulse=8/(20+1j*n*pi);
    if (n>0)
        Dn=1/2.*(-1j.*(4/(pi.*n)));
    elseif (n<0)
         Dn=1/2.*(1j.*((4/(pi.*-n))));
    else
        Dn=0;
    end
    xt=xt+Dn.*exp(1j.*n.*pi.*t);
    yt=yt+Dn.*exp(1j.*n.*pi.*t).*impulse;
        
end
plot(t,xt,t,yt);

legend('x(t)','y(t)');
xlabel('t');
ylabel('Magnitude');
grid;

%% Q2 c
clear all;
close all;
yt=0;
t=-3:0.02:3;

xt=0;
for n=-25:2:25
    impulse=8./(2+1i.*pi.*n);
    if (n>0)
        Dn=1/2.*(-1j.*(4/(pi.*n)));
    elseif (n<0)
         Dn=1/2.*(1j.*((4/(pi.*-n))));
    else
        Dn=0;
    end
    xt=xt+Dn.*exp(1j.*n.*pi.*t);
    yt=yt+Dn.*exp(1j.*n.*pi.*t).*impulse;
        
end
plot(t,xt,t,yt);

legend('x(t)','y(t)');
xlabel('t');
ylabel('Magnitude');
grid;

%% Q3 a
clear all;
close all;
num_coefficient = 8; % coefficients of the numerator
den_coefficient = [pi 20]; % coefficients of the denominator
system = tf(num_coefficient, den_coefficient);% specify the transfer function
bode(system, {0.001, 100}); % sketch the Bode plot of the
%transfer function
hold on;
num_coefficient = 8; % coefficients of the numerator
den_coefficient = [pi 2]; % coefficients of the denominator
system = tf(num_coefficient, den_coefficient);% specify the transfer function
bode(system, {0.001, 100}); % sketch the Bode plot of the
%transfer function
grid;
legend('H(w)=8/(20+jw)','H(w)=8/(2+jw)');

%% Q3 b
%y(t) in 2b is smaller than x(t); this is since the gain is less than
%zero db(as shown in bode graph)
%y(t) in 2c is bigger than x(t); this is since the gain is greater than
%zero db(as shown in bode graph)

%% Q3 c
clear all;
close all;
yt=0;
t=-3:0.02:3;

xt=0;
yt2=0;
for n=-25:2:25
    impulse=8./(20+1i.*pi.*n);
    if (n>0)
        Dn=1/2.*(-1j.*(4/(pi.*n)));
    elseif (n<0)
         Dn=1/2.*(1j.*((4/(pi.*-n))));
    else
        Dn=0;
    end
    xt=xt+Dn.*exp(1j.*n.*pi.*t);
    yt=yt+Dn.*exp(1j.*n.*pi.*t).*impulse;
        
end

for n=-25:2:25
    impulse=8./(2+1i.*pi.*n);
    if (n>0)
        Dn=1/2.*(-1j.*(4/(pi.*n)));
    elseif (n<0)
         Dn=1/2.*(1j.*((4/(pi.*-n))));
    else
        Dn=0;
    end
    yt=yt+Dn.*exp(1j.*n.*pi.*t);
    yt2=yt2+Dn.*exp(1j.*n.*pi.*t).*impulse;
        
end


plot(t,xt,t,yt2);

legend('x(t)','y(t)');
xlabel('t');
ylabel('Magnitude');
grid;

%% Q4
clear all;
close all;
R1=10;
RL=100;
C1=100*10^-6;
num_coefficient = 1; % coefficients of the numerator
den_coefficient = [R1*C1 (R1/RL+1)]; % coefficients of the denominator
system = tf(num_coefficient, den_coefficient);% specify the transfer function
bode(system, {0, 1000000}); % sketch the Bode plot of the
%transfer function
grid;


%% Q5a
clear all;
close all;
R=2;
L=1*10^-3;
C=10*10^-6;
num_coefficient = 1; % coefficients of the numerator
den_coefficient = [L.*C L/R 1]; % coefficients of the denominator
system = tf(num_coefficient, den_coefficient);% specify the transfer function
bode(system, {0, 1000000}); % sketch the Bode plot of the


%% Q5b

clear all;
close all;
R=200;
L=1*10^-3;
C=10*10^-6;
num_coefficient = 1; % coefficients of the numerator
den_coefficient = [L.*C L/R 1]; % coefficients of the denominator
system = tf(num_coefficient, den_coefficient);% specify the transfer function
bode(system, {0, 1000000}); % sketch the Bode plot of the
grid;
% The Bode plot for magnitude rose at 10^4 frequncy and then fell. THe
% freuncy was then too large since it is low pass filter.
