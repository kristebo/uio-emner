function [  ] = oblig2oppgave2b( r, dt , n )
%oblig2oppgave2b 
%   oppgave 2b regner ut omløpstiden T:

T=0;
for j=1:n
    if (-dt< r(j,1)> dt)
        r(j);
        T=j;
    end    
end
T=T*2*dt;
format=('Omløpstiden %s \n');
fprintf(format,T)
% Omløpstiden 1.790000e-11 
end

