function [ betas ] = calcBeta( )
%calcBeta finds beta for a cmos transistor.
iout=zeros(1,1,100)';
iout=gpib_function(0,5,100)
vgs=linspace(0,5,100);
betas=zeros(1,1,100)';
for K= i:length(iout)
    betas(K)=sqrt(iout(K)-sqrt(K+1))/(vgs(K)-vgs(K+1))
end
return

end

