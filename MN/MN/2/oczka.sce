clear
clc
A = [5,3,0 ; 3,3,0 ; 1,1,-1];
B = [3;8;0];

x1 = inv(A)*B
x2 = linsolve(A,-B)
x3= A\B;
r1=A*x1-B
r2=A*x2-B
n1=norm(A*x1-B,'inf' )
n2=norm(A*x2-B,'inf' )
