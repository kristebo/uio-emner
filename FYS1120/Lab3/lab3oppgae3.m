t=0.6e-2
a=(15.5/2)*1e-2
b_0=0.1e-3
h=[0, 1, 2, 3, 4, 5, 6 , 7,8, 9 10];
h=h.*10^-2;
%enhet mT  for 1, 2, 3, 4, 5, 7, 10
%b=[95 40 32 14 9 5 2.7];
b=[279 145.7 70.7 35.6 18.1 10.8 7.1 5.2 4.0 3.2 2.6] 
b=b.*10^-3;
y=b;
c=1;
e(1)=0
h_1=linspace(0,0.1,100);
%for (p=h_1)
  e=((h_1+t)/(sqrt((h_1+t).^2+a^2)))-(h_1./(sqrt(h_1.^2+a^2)))
 %  c=c+1;
%end
%gjett en mu
mu=0.47;
B=e.*mu
%
figure()
plot(h_1,B)

%p = polyfit(h, b,2);
%x1 = linspace(0,0.1);
%y1 = polyval(p,x1);
%plot
figure()
plot(h,y,'r', h_1, B, 'g')
title('V_H  mot B')
xlabel('V_H (V)')
ylabel('B (T)')

legend('recorded values', 'funksjon')
disp('stigningstallet:');
p(1)

mu_0=B*2 *sqrt(a^2*t^2)/t