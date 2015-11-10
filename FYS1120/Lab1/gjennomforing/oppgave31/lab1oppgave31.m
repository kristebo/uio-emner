function []=lab1oppgave21()
%først må vi regne ut U og I
R=[1, 1.5, 2.5, 4, 10]
U=[88, 128,185,247,392]
I=U./R

p=polyfit(I,U,1)

x=linspace(0,max(I),length(I))

y=polyval(p,x)
figure()
plot (x,y,'r',I, U,'ob')
legend('fitted curve', 'recorded data')
xlabel('U (mV)') 
ylabel('I (mA)') 
title('U vs I')
p



end
