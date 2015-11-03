


iout=gpib_function4( 0,5, 100 )

%task 4 NMOS
plot(vgs,iout)
legend('I_{out}')
title('Task 4: I_{out} as function of V_{gs}')
xlabel('V_{gs}')
ylabel('I_{out}')

figure()
semilogy(vgs,iout)
legend('I_{out}')
title('Task 4: logaritmic I_{out} as function of V_{gs}')
xlabel('V_{gs}')
ylabel('I_{out}')



