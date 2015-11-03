function [ Ids ] = nmosmodel(Vgs,vt,Vds)
%nmos-model plotting vds as function of Vgs
%   W/L=10um/0.4um
%   uCoxW/Lm=beta =190*10/0.4
%   Vtn=0.57
%   Cox=4.5

%   0.35um prosess
%   V_T=kT/q=26mV at 300 degree Kelvin
%   n=1.5 for weak inversion
%   n=1.7 for strong ionversion
%   no length modulation lambda


W=10;
L=0.4;
bolt=1.38e-23;
beta=190*W/L;
Veff=Vgs-vt;

if Vgs<vt
    Ids=0;
%triode region
else if (Vgs>vt && Vds<=Veff);
    vt=vt;
    Ids=(beta*(Veff)*Vds-(Vds^2/2))*10e-12;
%active region
else % (Vgs>vt && Vds>=Veff)
    Ids=(0.5*beta*Veff^2)*10e-12;
end
        

end

