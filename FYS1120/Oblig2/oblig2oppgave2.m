
m_e = 9.11e-31; 
e = -1.6e-19; 
r0=[0 0 0];
v0=[10 0 0];
B=[0 0 5];
t0=0;
t1=1*10e-12;
dt=10e-15; %30fs
r=r0;
v=v0;
n=t1/dt;
t=t0;
c=0;

%F=e*(cross(v,B)

for i=2:n
    F = e*(cross(v(i-1,:),B));
    a = F./m_e; 
    v(i,:) = v(i-1,:) + a.*dt;
    r(i,:) = r(i-1,:) + v(i-1,:).*dt; 
    c=c+dt;
    t(i,:)=c;
end

oblig2oppgave2b(r,dt,n);

figure() 
plot(t(:,1),r(:,1),t(:,1),r(:,2),t(:,1),r(:,3))  
legend('r_x(t)','r_y(t)','r_z(t)'); title('Oppgave 2a tid posisjon') 
xlabel('tid'); ylabel('posisjon') 

figure() 
plot(t(:,1),v(:,1),t(:,1),v(:,2),t(:,1),v(:,3)) 
legend('v_x(t)','v_y(t)','v_z(t)'); title('Oppgave 2a tid hastighet ') 
xlabel('tid'); ylabel('hastighet') 

figure() 
plot3(r(:,1),r(:,2),r(:,3)) 
legend('path'); title('Oppgave 2a Path i 3d'); grid() 
xlabel('r_x'); ylabel('r_y'); zlabel('r_z')

clear all
