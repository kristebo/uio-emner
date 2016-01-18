        
    clear all
    vgs1=[1.2, 0.6, 0,1];
 
    vds1=linspace(0,1.2);
    idsn=zeros(length(vds1));
    c=1;
    for nvgs1=vgs1 
        for nvds1=vds1
           idsn(c)=calcnMOSkanallengde(nvds1,nvgs1);
           c=c+1;
        end
    end
    
    hold 'on'
    figure(1);
    plot(vds1, idsn)
    title('nMOSmodell')
    legend('V_{gs}=1.2V', 'V_{gs}=0.6V', 'V_{gs}=0.1V', 'Location', 'EastOutside')
    xlabel('Drain Source voltage V_{ds}'), ylabel('current I_{ds}')

%%
    %pMOS modell:
    clear all
    hold 'off'
    figure(2);
    N=100;
    Vsdp=linspace(0,1.2, N);
    Vsgp=[1.2 0.6 0.1];
    Isdp=zeros(3,N);
    i=0;
    for vsg=Vsgp
        i=i+1;
        for j=1:length(Vsdp)
            Isdp(i,j)=calcpMOSkanallengde(vsg,Vsdp(j));
        end
    end
    hold 'on'
    plot(Vsdp, Isdp)
    title('pMOSmodell')
    legend('V_{sg}=1.2V', 'V_{sg}=0.6V', 'V_{sg}=0.1V', 'Location', 'EastOutside')
    xlabel('Drain Source voltage V_{sd}'), ylabel('current I_{sd}')

    %Ids, Vgs 
    hold 'off'
  