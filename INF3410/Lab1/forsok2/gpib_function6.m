function [ iout ] = gpib_function6( vinmin,vinmax, steps )

HPE3631_Init;
HPE3631_SetILimit(2,0.01);
HPE3631_SetILimit(1,0.01);

HPE3631_Operate;
HPE3631_SetVolt(2,vinmax)  %setting drain voltage

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

end
