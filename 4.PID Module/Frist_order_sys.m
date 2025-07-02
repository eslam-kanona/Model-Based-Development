K=1;
T=2;

NUM = [0 K];
DEN = [T 1];
system=tf(NUM,DEN);

t=0:0.1:20;
u_ramp = 0.01 * t.^2;
[y, x]= lsim(system , u_ramp , t); 

plot(y,x)
hold on

info = stepinfo(system);
disp(info)