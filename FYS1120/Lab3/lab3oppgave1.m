function []=lab3oppgave1(min, max, datapunkt,degree)
%H=[10.79 15.53 20.42 25.15 29.87]

y=datapunkt;
B=[42 74 108 142 175];

%
p = polyfit(B, datapunkt,degree);

x1 = linspace(min,max);
y1 = polyval(p,x1);
%plot
figure
plot(B,y,'or',x1,y1,'b')
title('V_H  mot B')
xlabel('V_H (V)')
ylabel('B (mT)')
legend('recorded values', 'fitted curve')
disp('stigningstallet:');
p(1)
%oppgave 3
R_H=p(1)/23.1
%dette er da ekstremt fort (14.3m/s)
v=p(1)/10e-3

%regner ut mer elektron med samme spenning i vakuum
q=1.6e-19
m=9.11e-31
v_h=0.97
v_e=sqrt((2*q*v_h)/m)

% v_h =
% 
%     0.9700
% 
% 
% vr =
% 
%    5.8372e+05
end
