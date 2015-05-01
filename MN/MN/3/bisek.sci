clear
clc

xdel(winsid()) 

//funkcja 
function y = f(x)
    y=-x.^3-x.^2+3.*x+2;
endfunction


function [x, xa] = metoda_rp(a,b,f,epsilon)
    xa(1)=a; 
    xa(2)=b; 
    x=(a+b)/2; 
    xa(3)=x; 
    i=3; 
    while abs(f(x))>epsilon 
        i=i+1; 
        if f(a)*f(x)<0 
            b=x; 
        elseif f(b)*f(x)<0 
            a=x; 
        end 
        x=(a+b)/2; 
        xa(i)=x; 
    end 
endfunction


//poczatkowe zmieniie
eps=0.001;
a = [0.5, -1.5, -2.5];
b = [2, 0.5, -1 ];

//pierwsze okno zrob i wczysc
scf(1); clf(1); xgrid;

//wykres 
xp = linspace(a(3), b(1), 1000);
plot(xp, f(xp))

//rozwiaznie rownania
linespec = {'bo', 'ro', 'go'}; 
for i = 1:3
    [x(i), xa]= metoda_rp(a(i),b(i),f,eps)
    xs(i) = fsolve([a(i)/b(i)],f) 
    ab(i) = a(i)/b(i)
    plot(xa,f(xa),linespec(i))
end;

//pierwiastki z fsolve
plot(xs,f(xs),'kx')

legend('$\textstyle f(x)=-x^3-x^2+3x+2;$'); //legenda do wykresu

//drugie okno zrob i wczysc 
scf(2); clf(2); xgrid;
plot(xp, f(xp))
legend('$\textstyle f(x)=-x^3-x^2+3x+2;$'); //legenda do wykresu

