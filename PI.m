% Define the transfer function of the plant
num = [1];
den = [1, 6, 11, 6];
sys = tf(num,den);% Define the PI controller
kp = 0.5;
ki = 1.5;
ctrl = kp + tf([ki, 0], 1);% Close-loop transfer function
cl_tf = feedback(sys*ctrl, 1);% Step response of the closed-loop system
step(cl_tf);
title('Step Response of the Closed-loop System with PI Control');
xlabel('Time (s)');
ylabel('Output');