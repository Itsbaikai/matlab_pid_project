%%原系统
d1 = 2;
n = [1 3 2];
t = [0:0.01:10];
G = tf(d1,n);
g = feedback(G,1);
y = step(g,t);
plot(t,y);
hold on

%%P控制
t = [0:0.01:10];
n = [1 3 2];
d = 2;
Kp = 10;
C = pid(Kp);
G = tf(d,n);
g0 = feedback(G*C,1);
y = step(g0,t);
plot(t,y);
hold on

%%PI控制
t = [0:0.01:10];
n = [1 3 2];
d = 2;
Kp = 10;
Ki = 0.8;
C = pid(Kp,Ki);
G = tf(d,n);
g0 = feedback(G*C,1);
y = step(g0,t);
plot(t,y);
hold on

%%PID控制
t = [0:0.01:10];
n = [1 3 2];
d = 2;
Kp = 10;
Ki = 0.8;
Kd = 0.4;
C = pid(Kp,Ki,Kd);
G = tf(d,n);
g0 = feedback(G*C,1);
y = step(g0,t);
plot(t,y);