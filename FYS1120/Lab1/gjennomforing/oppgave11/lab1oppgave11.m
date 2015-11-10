function []=lab1oppgave11(min, max, datapunkt,degree)
x = linspace(min,max,length(datapunkt));
y=datapunkt;
%
p = polyfit(x, datapunkt,degree);

x1 = linspace(min,max);
y1 = polyval(p,x1);
%plot
figure
plot(x,y,'or',x1,y1,'b')
title('Spenning mot tid')
xlabel('tid (s)')
ylabel('U (V)')
legend('recorded values', 'fitted curve')


lny=log(datapunkt);
p2=polyfit(x,lny,1)
y2=polyval(p2,x1);
figure()
plot(x1,y2,'b',x,lny, 'or')
xlabel('tid (s)')
ylabel('U (V)')
legend('fitted curve','Values ')
title('log av spenning mot tid')
%finner \tau og R_internal
tau=abs(p2(1))
F=8.3e-6
R=tau/F




end
