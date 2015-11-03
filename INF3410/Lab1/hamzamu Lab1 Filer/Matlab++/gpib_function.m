function [ iout ] = gpib_function( vinmin,vinmax, steps )

HPE3631_Init;
HPE3631_SetILimit(1,0.01);
HPE3631_SetILimit(2,0.01);

%HPE3631_SetVolt(1,1);
HPE3631_Operate;
HPE3631_SetVolt(1,2)

K617_Init;
iout=zeros(1,steps)';
K617_SetRange(0);
K617_SetMode('A');

i=linspace(vinmin,vinmax,steps);
for k=1:length(i)
   HPE3631_SetVolt(2,i(k));
   
   pause(0.5);
   iout(k) = K617_ReadQuick();
end
plot(i,iout)
figure()
plot(i,log(iout))
end

