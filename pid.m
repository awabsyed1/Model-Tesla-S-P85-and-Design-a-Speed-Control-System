Sc = 2*pi;              % Scaling Factor 
Cw = 2*pi*0.24;         % Wheel Circumference
Rg = 9.73;              % Gear Ratio 
KE = 0.12;              % Back EMF
Reference_Input = 50; 
Scaling_Velocity = Sc/(Cw)*Rg*KE;

KT = 0.25;              % Torque Constant 
L = 493*10^-9;          % Inductance 
R = 5.3*10^-3;          % Actual Armature Resistance 
Ts = 0.01; 
sim ('my_model');
plot(t,theta); grid;
xlabel('Time (s)'); ylabel('Output (km/h)');
subplot (1,3,2); plot (t,theta1); grid; xlabel ('Time (s)'); ylabel ('Velocity (m/s)'); title ('Acceleration');
subplot (1,3,3); plot (t,theta2); grid; xlabel ('Time (s)'); ylabel ('Torque (Nm)'); title ('Torque');
subplot (1,3,2); plot (t,theta1); grid; xlabel ('Time (s)'); ylabel ('Acceleration (m/s^2)'); title ('Acceleration');
hold on; plot (t,theta,'r'); grid; hold off; 

hold on; plot (t,theta,'--';'r'); grid; hold off; 