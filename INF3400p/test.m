

N=5000;

VDD=1.2;

VGS=linspace(0, 1.2 ,N);

Kn = 40e-6*2; % 40 uA/V^2, (W/L)=2

Rload = 0;

Vt = 1.25;

lambda = 0.25;

Vout = zeros(size(VGS));

state = zeros(size(VGS));

guess = 3; %initial guess for vout
display('hasd')
 

for i=1:length(VGS)

    if (i > 1)

        guess = Vout(i-1); % use previous VDS as guess for next one

    end

   

    if (VGS(i) <= Vt)

        Vout(i) = VDD;

        state(i) = 0;

    else

        [VDS1, converged1] = nMOS(VGS(i), VDD, lambda, Rload, Kn, Vt, -100, 100, guess);

        [VDS2, converged2] = nMOStt(VGS(i), VDD, lambda, Rload, Kn, Vt, -100, 100, guess); 

       

        if (converged1 == 0 && converged2 == 0)

            display(sprintf('vgs=%g neither function converged: error', VGS(i)));

            VGS(i)

            return;

        elseif (converged1 == 1 && VDS1 <= VGS(i)-Vt) % lin succeeded

            Vout(i) = VDS1;

            state(i) = 1; % lin

        elseif (converged2 == 1 && VDS2 > VGS(i)-Vt) % sat succeeded

            Vout(i) = VDS2;

            state(i) = 2; % sat;

        else

            display('Error: inconsistent solution');

            if (converged1==1)

                display(sprintf('-> linear converged, but VDS(%g) < VGS(%g) - Vt(%g) failed.', VDS1, VGS(i), Vt));

            end

            

            if (converged2==1)

                display(sprintf('-> saturation converged, but VDS(%g) > VGS(%g) - Vt(%g) failed.', VDS2, VGS(i), Vt));

            end

        end    

    end

end

 

plot(VGS, Vout, VGS, state);

legend('curve1');

title('Resistive load NMOS inverter');

xlabel('Vin');

ylabel('Vout');