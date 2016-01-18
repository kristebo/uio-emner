function [Ids] = calcpMOSkanallengde(Vds, Vgs)
    %%   DATA
    % V_{dd}=1.2V
    % t_{ox}=40*10^-10 Ångstrøm
    % /mu_{/p}=90 /frac{cm^2} {V /cdot s}
    % /mu_{/n}=180 /frac{cm^2} {V /cdot s}
    % V_{tn}= 0.25V
    % V_{tp}=-0.25V
    % /lambda_{p}=0.25V^{-1}
    % /lambda_{n}=0.25V^{-1}
    % /frac{W_p}{L_p}=/frac{200nm}{1.4/mu m}
    % /frac{W_n}{L_n}=/frac{100nm}{1.4/mu m}
    %% Setter variable for n
    %nMOS konstanter og variable
    lambda=0.25;
    w=100*10^-9; %bredde 
    l=1.4*10^-6;   %lengde
    tox=40*(10^-8); %tynnoxidlaget 
    mob=180; %mobilitet
    vt=0.25; %terskelspenning
    b=getBeta(w,l,mob,tox);
    Vdsat=Vgs-vt;
    %Her kommer modellen for nMOS-transistoren. 
    %OFF
    if Vgs<vt
        Ids=0;
    %LINEAR
    elseif Vgs>vt && Vds<Vdsat
        Ids=b*(Vgs-vt-(Vds*0.5))*Vds*(1+lambda*Vds);
    %SATURATION (Vds>Vdsat)
    else
        Ids=0.5*b*(Vgs-vt)^2*(1+lambda*Vds);
    end
end
