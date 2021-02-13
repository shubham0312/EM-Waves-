% good conductors 
clear all;
close all;
clc;
c = 3 * 10.^ 8; % speed of light
w = 10.^8; % angular frequency of wave
mu =  0.99999* pi *10.^(-7); % Permeability
epsilon =  1* 8.854 * 10.^(-12);% permitivity
sigma = 500; % conductivity
k = (mu * sigma)/ 2;
alpha = (sqrt(k * w)); % attenuation constant
beta = (sqrt(k * w)); % phase constant
ita = sqrt((w*mu)/sigma);
t = -3:0.01:0.5;
x = -3:0.01:0.5;
m = zeros(size(t));
Ey = 30*cos(w*t - beta *x).*exp(-alpha*x);
Hz = (30/ita)*cos(w*t - beta*x - pi/4).*exp(-alpha*x);
figure(1);
plot3(x,Ey,m,'r');
hold on;
t = -3:0.01:0.5;
plot3(x,m,Hz,'blue');
grid on;
hold off;
ylabel('Electric Field');
zlabel('Magnetic Field');
xlabel('Direction of Wave');
title('Em Wave components in Good conductors');
view(10,10);
