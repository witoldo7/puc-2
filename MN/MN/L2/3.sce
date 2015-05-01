clc
clear
clf
//Program obrazujący wykresy funkci f(x,y)=sin(x)cos(y)
x = linspace(%eps,2*%pi,100)';
y = linspace(%eps,2*%pi,100)';
colors = linspace(%eps,1,100);
z= sin(x)*cos(y');
xtitle('$\textstyle \mbox{Wykres funkcji  } f(x,y)=sin(x)cos(y)$','x','y','z')
plot3d(x,y,list(z,colors))
//xset('colormap',jetcolormap(1024))
xgrid
