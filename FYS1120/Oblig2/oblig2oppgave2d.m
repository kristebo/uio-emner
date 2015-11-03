m_e = 9.11e-31; 
e = -1.6e-19; 
r0=[0 0 0];
v0=[5 0 2];
B=[0 0 5];
t0=0;
t1=1*10e-12;
dt=10e-15; %30fs
r=r0;
v=v0;
n=t1/dt;
t=t0;
c=0;

for i=2:n
    F = e*(cross(v(i-1,:),B));
    a = F./m_e; 
    v(i,:) = v(i-1,:) + a.*dt;
    r(i,:) = r(i-1,:) + v(i-1,:).*dt; 
    c=c+dt;
    t(i,:)=c;
    va(i,:)=0.5.*a;
end

figure()
plot(t(:,1),va(:,1),t(:,1),va(:,2),t(:,1),va(:,3)) 
legend('v_x(t)','v_y(t)','v_z(t)'); title('Oppgave 2d tid hastighet analytisk ') 
xlabel('tid'); ylabel('hastighet') 
figure() 
plot(t(:,1),v(:,1),t(:,1),v(:,2),t(:,1),v(:,3)) 
legend('v_x(t)','v_y(t)','v_z(t)'); title('Oppgave 2d tid hastighet numerisk') 
xlabel('tid'); ylabel('hastighet') 
figure() 
plot3(r(:,1),r(:,2),r(:,3)) 
legend('path'); title('Oppgave 2d Path i 3d'); grid() 
xlabel('r_x'); ylabel('r_y'); zlabel('r_z')



