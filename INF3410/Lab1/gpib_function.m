function [ iout ] = gpib_function( vinmin,vinmax, steps )

HPE3631_Init;
HPE3631_SetILimit(1,0.1);
%HPE3631_SetVolt(1,1);
HPE3631_Operate;


K617_Init;
iout=zeros(1,steps)';
K617_SetRange(0);
K617_SetMode('A');

i=linspace(vinmin,vinmax,steps);
for k=1:length(i)
   HPE3631_SetVolt(1,i(k));
   
   pause(0.5);
   iout(k) = K617_ReadQuick();
end
plot(i,iout)
return 

end

