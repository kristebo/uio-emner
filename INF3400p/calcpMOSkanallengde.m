function [ Isd] = calcpMOSkanallengde(Vsg, Vsd)
    tox=40*10^-8;
    mob=90;
    vt=-0.25;
    w=200*10^-9;
    l=1.4*10^-6;
    lambda=.25;
    b=getBeta(w,l, mob, tox);
    Vdsat=Vsg-abs(vt);
    %OFF
    if Vsg<abs(vt)
        Isd=0;
    %LINEAR
    elseif Vsg>abs(vt) && Vsd<Vdsat
        Isd=b*(Vsg-abs(vt)-(Vsd*0.5))*Vsd*(1+lambda*Vsd);
    %SATURATION (Vds>Vdsat)
    else
        Isd=0.5*b*(Vsg-abs(vt))^2*(1+lambda*Vsd);
    end
end



