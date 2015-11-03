
iout=gpib_function6( 0,5, 100 )

%task 6 pMOS
plot(vgs,iout)
legend('I_{out}')
title('Task 6: I_{out} as function of V_{gs}')
xlabel('V_{gs}')
ylabel('I_{out}')

figure()
semilogy(vgs,iout)
legend('I_{out}')
title('Task 6: logaritmic I_{out} as function of V_{gs}')
xlabel('V_{gs}')
ylabel('I_{out}')

