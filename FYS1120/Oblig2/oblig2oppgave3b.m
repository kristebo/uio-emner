
m_p = 1.67*10e-27;
e = 1.6*10e-19;
v0 = [0,0,0];
r0 = [0,0,0];
B = [0,0,2]; %B=(0,0,2T)
dt = 100e-12;
t0 = 0;
t1 = 300e-9;
t=t0:dt:t1;
r = r0;
v = v0;
E0 = [90e3/25e-6 0 0 ];
E=E0;
Bs=sqrt(B(:,1)^2 + B(:,2)^2 +B(:,3)^2); 
omega = (e*Bs)/m_p;
r_d = 5e-2;
a=0;
for i=2:length(t)
    
    F_B = e.*(cross(v(i-1,:),B));
    F_E = E.*e;
    F = F_E+F_B;
   
    v(i,:) = v(i-1,:) + a.*dt;
    r(i,:) = r(i-1,:) + v(i-1,:).*dt;
    if (r(i-1,1) <= r_d && r(i-1,1) >= -r_d)
        E = E0.*cos(omega*t(i).*[1 0 0]);
    else
        E = [0,0,0];
    end
    a = F./m_p;
end

figure()
plot(t,r(:,1), t,r(:,2), t, r(:, 3))
legend('x_t','y_t','z_t')
title('Oppgave 3b - position')
xlabel('time s'); ylabel('position')
figure()
plot(t,v(:,1), t,v(:,2), t, v(:, 3))
legend('v_x','v_y','v_z' )
title('Oppgave 3b - velocity')
xlabel('time s'); ylabel('velocity')

fart=sqrt(v(length(v)-1,1)^2+ v(length(v)-1,2)^2+v(length(v)-1,3)^2)
 
