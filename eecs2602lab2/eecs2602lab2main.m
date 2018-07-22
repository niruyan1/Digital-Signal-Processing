


%% Q1a
clear all;
close all;
k= 0.2;
t = 0:0.000001:0.002;

c = 10.*cos(2.*pi.*20000.*t);
m= 3.*cos(2.*pi.*1000.*t);
s = (k.*m + 1).*c;
%s = s.*c;
plot (t,m, t ,s);
legend('m(t)','s(t)');
hold on;
xlabel('time');
grid;

%% Q1b

clear;
close all;
k= 0.1;
t = 0:0.000001:0.002;
c = 10.*cos(2.*pi.*20000.*t);
m= 3.*cos(2.*pi.*1000.*t);
s = k.*m + 1;
s = s.*c;

plot (t,m, t ,s);
legend('m(t)','s(t)');
hold on;
xlabel('time');
hold on;
%the difference between the peaks and throughs decreased
%% Q1c

%no since m(t-t0)->(km(t-t0)+offset)*s(t)!=s(t-t0)

%% Q1d
clear;
close all;
k1= 0.2;
k2 = 0.3;
t = 0:0.000001:0.0025;
c1 = 5.*cos(2.*pi.*20000.*t);
c2 = 10.*cos(2.*pi.*20000.*t +pi./2);
x1 = 3.*cos(2.*pi.*3000.*t);
x2 = 5.*cos(2.*pi.*2000.*t);
s1 = (k1.*x1 + 1).*c1;
s2 = (k2.*x2 + 1).*c2;
st= s1 +s2;
plot (t,st);
xlabel('time');
ylabel('s(t)');
title('s(t) vs t');
hold on;

%% Q2 i
clear;
close all;
t = 0:0.0001:2;
[t,y] =  ode23(@(t,y) DE2i(t,y), t, 5);
plot(t,y);
hold on;
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');

%% Q2 ii

clear;
close all;
t = 0:0.0001:3;
[t,y] =  ode23(@(t,y) DE2ii(t,y), t, 5);
%x = y + (L/R).*DE1(t,y);
plot(t,y);
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');
hold on;


%% Q3 i

clear;
close all;
t = 0:0.0001:10;
[t,y] =  ode23(@(t,y) DE3i(t,y), t, 3);

plot(t,y);
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');
%% Q3 ii

clear;
close all;
t = 0:0.0001:10;
[t,y] =  ode23(@(t,y) DE3ii(t,y), t, 3);
plot(t,y);
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');


%% Q3 iii

clear;
close all;
t = 0:0.0001:10;
[t,y] =  ode23(@(t,y) DE3iii(t,y), t, 3);
plot(t,y);
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');
%% Q4 i

clear;
close all;
t = 0:0.0001:30;
[t,y] =  ode23(@(t,y) DE4i(t,y), t, [1,8]);
plot(t,y(:,1));
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');
%% Q4 ii

clear;
close all;
t = 0:0.0001:30;
[t,y] =  ode45(@(t,y) DE4ii(t,y), t, [1,8]);
plot(t,y(:,1));
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');

%% Q5

clear all;
close all;
t = 0:0.0001:20;
[t,y] =  ode45(@(t,y) DE5(t,y), t, [1,8]);
plot(t,y(:,1));
hold on;
[t,y2] =  ode45(@(t,y2) DE4ii(t,y2), t, [1,8]);
plot(t,y2(:,1));
legend('y(t) new', 'y(t) old');
xlabel('time');
ylabel('y(t)');
title('y(t) vs Time');