function [ ] = Sinus()

x=(-pi:0.001:4*pi);

f=figure(1);

title('Sinus and squarewave')
axis('auto')
q=plot(x,sin(x)), xlabel('time (x values)'), ylabel('y'), grid on

set(q,'Color','green','LineWidth',2)

legend('sin(x)', 'square(x)')

hold on

for i=1:length(x)

if sin(x(i))<0

wave(i)=-1;

else

wave(i)=1;

end

end

p=plot(x,wave)

set(p,'Color','red','LineWidth',2)

end
