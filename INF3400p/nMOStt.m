function [VDS, converged] = nMOStt(VGS, VDD, lambda, Rload, Kn, Vt, vmin, vmax, guess)

threshold = 0.00001; % accuracy of VDS result

max_iter = 50;      % maximum number of iterations

VDS = guess;        % start with a reasonable guess

converged = 0;

 

for i=1:max_iter

    flag = 0;

    f = Kn/2*((VGS-Vt)^2)*(1+lambda*VDS) - (VDD-VDS)/Rload;

    df = Kn/2*lambda*(VGS-Vt)^2 + 1/Rload;

   

    dx = f/df;

    VDS = VDS - dx; % x1 = x - f(x)/df(x)

   

    if (VDS < vmin || VDS > vmax)

        display(sprintf('vgs=%g saturation equation out of bounds', VGS));

        return;

    end

   

    % if change from previous Vd value was smaller than

    % the accuracy threshold, we're done, so return.

    if (abs(dx) < threshold)

        converged = 1;

        display(sprintf('vgs=%g saturation equation converged', VGS));

        return;

    end

end

 

return;