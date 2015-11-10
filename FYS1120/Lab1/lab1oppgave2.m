function []=lab1oppgave2(min, max, datapunkt,degree)
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



end
