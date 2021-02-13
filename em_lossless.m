% Lossless dielectric (glass) 
% Relative permitivity of glass 3.7
% Relative permeability almost equal to 1
clear all;
close all;
clc;
c = 3 * 10.^ 8; % speed of light
w = 10.^8; % angular frequency of wave
alpha = 0; % attenuation constant
mu = 1*4* pi *10.^(-7); % Permeability
epsilon = 3.7 * 8.854 * 10.^(-12); % permitivity
beta = w * sqrt(mu * epsilon); % phase constant
ita = sqrt(mu/epsilon); % intrinsic impedance
t = -1.5:0.01:1;
x = -1.5:0.01:1;
m = zeros(size(t));
Ey = 30*cos(w*t - beta *x).*exp(-alpha*x); % Electric field
Hz = (30/ita)*cos(w*t - beta*x).*exp(-alpha*x); % Magnetic Field
figure(1);
plot3(x,Ey,m,'r');
hold on;
t = -1.5:0.01:1;
plot3(x,m,Hz,'blue');
grid on;
hold off;
ylabel('Electric Field');
zlabel('Magnetic Field');
xlabel('Direction of Wave');
title('Em Wave components in Lossless Dielectric Medium');
view(10,10);
