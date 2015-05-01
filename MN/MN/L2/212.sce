clear
clc
clf()
x=linspace(%eps,2*%pi,1000)';

y=linspace(%eps,2*%pi,1000)';

y1=sin(x).*cos(y);
z=x.*y;
xset("colormap",jetcolormap(64))
plot3d1(x,y1,z)
