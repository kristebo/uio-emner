
% variabler
m_p = 1.67*10e-27;
e = 1.6*10e-19;
v0 = [0,0,0];
r0 = [0,0,0];
B = [0,0,2]; %B=(0,0,2T)
dt = 1e-10;
t0 = 0;
t1 = 3e-6;
t=t0:dt:t1;
r = r0;
v = v0;
E0 = [90/25 0 0 ];
E=E0;
Bs=sqrt(B(:,1)^2 + B(:,2)^2 +B(:,3)^2) ; 
omega = (e*Bs)/m_p;

for i=2:length(t)
    
    F_B = e.*(cross(v(i-1,:),B));
    F_E = E.*e;
    F = F_E+F_B;
    a = F./m_p;
    v(i,:) = v(i-1,:) + a.*dt;
    r(i,:) = r(i-1,:) + v(i-1,:).*dt;
    if (r(i-1,1) <= 0.1 && r(i-1,1) >= -0.1)
        E = E0.*cos(omega*t(i).*[1 0 0]);
        
    else
        E = [0,0,0];
    end
end

figure()
plot(r(:,1), r(:,2))
legend('bane'); title('Oppgave 3a')
xlabel('x_t'); ylabel('y_t')

