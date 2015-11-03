Vgs=linspace(0, 5, 51)';
sIds=zeros(length(Vgs),1);
wIds=zeros(length(Vgs),1);
for n= 1:length(Vgs);
    sIds(n)=nmosmodel(Vgs(n),1.7,Vgs(n)-1.7); %strong inversion
    wIds(n)=nmosmodel(Vgs(n),1.7,1); %weak inversion
end
figure();


plot (Vgs,wIds)
hold on
plot (Vgs,sIds)
legend('Weak inversion', 'Strong inversion')
title('I_{ds} as funtion of V_{gs}')
xlabel('V_{gs}')
ylabel('I_{ds}')
xlabel('V_{gs}')
ylabel('I_{ds}')

hold off
figure()

semilogy(Vgs,wIds)
hold on
semilogy(Vgs,sIds)
legend('Weak inversion', 'Strong inversion')
title('logaritmic I_{ds} as funtion of V_{gs}')
xlabel('V_{gs}')
ylabel('I_{ds}')


xlabel('V_{gs}')
ylabel('I_{ds}')
