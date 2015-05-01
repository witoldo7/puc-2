///Skrypt genereujący wykres funkcji y1 i y2
clc
clear
clf
x = linspace(%eps,2*%pi,1000)'; // wektor x stanowiący dziedzinę funkcji

y1 = exp(x).*cos(x.^2).*sin(x^-2); // wektor wartości funkcji
y2 = exp(x).*sin(x^-2);
xgrid() //siatka wykresu
xtitle('Wykresy krzywych','y','y1')
plot2d(x,y2, style=3)
plot2d(x,y1, style=5)
legend('$\textstyle y_2 = e^x sin(\frac {1} {x^2} )$','$\textstyle y_1 = e^x cos(x^2) sin(\frac {1} {x^2} )$') //legenda do wykresu

//plot2d(x,y*nr,style=nr)

// pamietaj damian dzielenie macierzowe proste nie jest lepiej mnozyc przez skalar niz dzielic !!!
