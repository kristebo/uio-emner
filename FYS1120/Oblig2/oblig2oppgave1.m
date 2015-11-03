function [  ] = oblig2oppgave1( dt )
E = [-5,0,0]; 
r0 = [0,0,0]; 
v0 = [0,0,0]; 
m_e = 9.11e-31; 
e = -1.6e-19; 
t0 = 0; 
t1 = 1*10e-6; 
% F og aksellerasjon 
F = e.*E; 
a = F./m_e; 
% initalverdier
r = r0;
v = v0; 
%t = linspace(t0,t1,(t1/dt)+1); 
ra = r0;
n = t1/dt
t=0;
c=0; 
for i=2:n 
    v(i,:) = v(i-1,:) + a.*dt; 
    r(i,:) = r(i-1,:) + v(i,:).*dt; 
    c=c+dt;
    t(i,:)=c;
    %analytic
    ra(i,:) = 0.5.*(a.*c^2);
end 

plot(t(:,1),r(:,1),'g',t(:,1), ra(:,1), 'r') 
axis('auto');
legend('Numerisk løsning', 'analytisk løsning'); title(['Oppgave 1 dt=', num2str(dt), 'ps']) 
xlabel('t'); ylabel('r') 

% hver komponent:
E=[-1, -2, 5];
F = e.*E; 
a = F./m_e; 
% initalverdier
r = r0;
v = v0;  
ra = r0;
n = t1/dt; 
t=0;
c=0;
 for i=2:n 
    v(i,:) = v(i-1,:) + a.*dt; 
    r(i,:) = r(i-1,:) + v(i,:).*dt; 
    c=c+dt;
    t(i,:)=c;
 end
% plot
figure()
plot(t(:,1),r(:,1),'g', t(:,1), r(:,2), 'r', t(:,1), r(:,3), 'b')
legend('x_t', 'y_t', 'z_t')
xlabel('t'); ylabel('r') 
title('hver komponent tid posisjon')
figure()
plot3(r(:,1), r(:,2),r(:,3))
title('path'); grid();
xlabel('x_t'); ylabel('y_t'); zlabel('z_t')
end
