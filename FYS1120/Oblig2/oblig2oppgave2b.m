function [  ] = oblig2oppgave2b( r, dt , n )
%oblig2oppgave2b 
%   oppgave 2b regner ut oml�pstiden T:

T=0;
for j=1:n
    if (-dt< r(j,1)> dt)
        r(j);
        T=j;
    end    
end
T=T*2*dt;
format=('Oml�pstiden %s \n');
fprintf(format,T)
% Oml�pstiden 1.790000e-11 
end

