


Ids=zeros(length(Vgs),1);
for n= 1:length(Vgs);
    Ids(n)=nmosmodelTask2(Vgs(n),1.7,Vgs(n)-1.7); %strong inversion
end
figure()
plot(Vgs,cadenceNMOS)
hold on
plot(Vgs,Ids)
legend('Cadence', 'Matlab')
title('Comparing cadence vs simplemodel')
xlabel('I_{ds}')
ylabel('V_{gs}')

hold off

figure()


semilogy(Vgs,cadenceNMOS)
hold on
semilogy(Vgs,Ids)
legend('Cadence', 'Matlab')
title('Comparing cadence vs simplemodel')
xlabel('I_{ds}')
ylabel('V_{gs}')