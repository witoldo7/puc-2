clc
clear
clf
theta=linspace(%eps,%pi,50)';
phi = linspace(%eps,%pi*2, 50)';
deff("[x,y,z]=scp(theta,phi)",["x=(sin(theta)^2).*sin(theta).*sin(phi)";..
    "y=(sin(theta)^2).sin(theta).*cos(phi)";..
    "z=(sin(theta)^2).*cos(theta)"]);
[Xf,Yf,Zf]=eval3dp(scp,theta,phi);
//xinit
