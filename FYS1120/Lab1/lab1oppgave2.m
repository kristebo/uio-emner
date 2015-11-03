function []=lab1oppgave2(datapunkt)
x=linspace(0,10,100);
y=polyval(datapunkt, x);
polyfit(x,y,length(x));



end
