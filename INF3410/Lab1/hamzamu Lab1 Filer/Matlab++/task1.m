Vgs=linspace(0, 5, 51)';
Ids=zeros(length(Vgs),1);
for n= 1:length(Vgs);
    Ids(n)=nmosmodel(Vgs(n));
end
figure();
title('I_{ds} as funtion of V_{gs}')

plot (Vgs,Ids)

xlabel('V_{gs}')
ylabel('I_{ds}')

hold on
%figure()
plot(Vgs,ans)
figure()
title('logaritmic I_{ds} as funtion of V_{gs}')

plot (Vgs,log(Ids))

xlabel('V_{gs}')
ylabel('I_{ds}')

hold on
%figure()
plot(Vgs,log(ans))