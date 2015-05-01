clear;
clc;

//rozwiazanie rownaia http://www.openeering.com/sites/default/files/Nonlinear_Systems_Scilab.pdf
scf(1);
clf(1);

deff('res=fct_2(x)',['res(1)=x(1)*x(2)-25';'res(2)=x(1)^2 +x(2)^2-50']);
x1 = linspace(-6,6,101);
y1 = x1.^2-50;
x2 = linspace(-6,6,51);
plot(x1,y1,'r-');
plot2d(x2,zeros(x2)-25);
xsol1 =fsolve([7, 7],fct_2)
res1 = fct_2(xsol1)
xsol2 =fsolve([-7,-7],fct_2)
res2 = fct_2(xsol2)
xgrid

//wykres 3d http://www.openeering.com/sites/default/files/Plotting_in_Scilab.pdf
scf(2);
clf(2);
x = -5:0.1:5;
y = -5:0.1:5;
[X,Y] = meshgrid(x,y);
Z = X.^2 + Y.^2 -50;
Z1 = X.*Y -25;
xset("colormap",jetcolormap(256));
surf(X,Y,Z);
surf(X,Y,Z1);
xlabel('X');ylabel('Y');zlabel('Z'); 
xgrid
