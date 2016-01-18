%%
% getBeta calculates beta for *MOS 
function [beta] = getBeta(w, l, mob, tox)
   
    eps0=8.85*10^-14;
    eps0x=3.9*eps0;
    cox=eps0x/tox;
    beta=mob*cox*(w/l);
end