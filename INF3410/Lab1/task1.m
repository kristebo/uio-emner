Vgs=linspace(0, 5, 100);
Ids=zeros(length(Vgs),1)';
for n= 1:length(Vgs);
    Ids(n)=nmosmodel(Vgs(n));
end
figure();
title('I_{ds} as funtion of V_{gs}')
xlabel('V_{gs}')
ylabel('V_{ds}')
plot (Vgs,Ids)
figure()
title('logaritmic I_{ds} as funtion of V_{gs}')
xlabel('V_{gs}')
ylabel('I_{ds}')
plot (Vgs,log(Ids))