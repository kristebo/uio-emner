

function [VDS, converged] = nMOS(VGS, VDD, lambda, Rload, Kn, Vt, vmin, vmax, guess)

threshold = 0.00001; % accuracy of VDS result

max_iter = 50;      % maximum number of iterations

VDS = guess;        % start with a reasonable guess

converged = 2;

 

for i=1:max_iter

    flag = 0;

    f = Kn*((VGS-Vt)*VDS-VDS^2/2)*(1+lambda*VDS) - (VDD-VDS)/Rload;

    df = Kn*(VGS-Vt) - Kn*VDS + 2*lambda*Kn*(VGS-Vt)*VDS - 3*VDD^2/2*Kn*lambda + 1/Rload;

   

    dx = f/df;

    VDS = VDS - dx; % x1 = x - f(x)/df(x)

   

    if (VDS < vmin || VDS > vmax)

        display(sprintf('vgs=%g linear equation out of bounds', VGS));

        return;

    end

   

    % if change from previous Vd value was smaller than

    % the accuracy threshold, we're done, so return.

    if (abs(dx) < threshold)

        converged = 1;

        display(sprintf('vgs=%g linear equation converged', VGS));

        return;

    end

end

 

return;

 

 