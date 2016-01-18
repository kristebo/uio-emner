function [] = inverter( )
    %%   DATA
    % V_{dd}=1.2V
    % t_{ox}=40*10^-10 ??ngstr??m
    % /mu_{/p}=90 /frac{cm^2} {V /cdot s}
    % /mu_{/n}=180 /frac{cm^2} {V /cdot s}
    % V_{tn}= 0.25V
    % V_{tp}=-0.25V
    % /lambda_{p}=0.25V^{-1}
    % /lambda_{n}=0.25V^{-1}
    % /frac{W_p}{L_p}=/frac{200nm}{1.4/mu m}
    % /frac{W_n}{L_n}=/frac{100nm}{1.4/mu m}
    
    %finner beta
    betan=getBeta(200e-9, 1.4e-6, 180, 40e-8);
    betap=getBeta(100e-9, 1.4e-6, 90, 40e-8);
    %% Setter opp variable
    N=500;
    VDD=1.2;
    Vinn=linspace(0, 1.2,N);
    Vut=zeros(N);
    Vt=0.25;
    lambda=0.25;
    Vgsn=[1.2 0.6 0.1];
    Vsgp=[1.2 0.6 0.1];
    
    %%kalkulerer omr?dene
    
    %omr?de A er pMOS h?y
    
    Vm=(VDD - Vt + Vt*(sqrt(betan/betap)))/(1+sqrt(betan/betap))
    
    
    

end

