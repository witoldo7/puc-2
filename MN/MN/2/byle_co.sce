clear
clc
//-prykład z mocierzą liczb losowych---
a= 10*rand(5,5);
b = 0;
c=0;
d=0;
for i=1:+1:25
    if a(i)< 1 then
        b=b+1;
     elseif a(i)>1 & a(i)>5  then
        d = d+1;
     else
        c=c+1;
     end
end
//---przykład zastosowania instrukcji select-case-----------

x =1:1:3;

for i=1:1:3
    a = x(i);
    select a
    case 1
        disp("opcja 1");

case 2
    disp("opcja 2");

case 3
    disp("opcja 3");

end

end
        
//------prykład zastosowania petli for------
E = zeros(100)
        
        for i=1:1:10
            for j=1:1:10
                E(i,j) = i*j;
                end
           
        end
        
        
//---przykład zastosowania instrukcji if---

A = zeros(11);
B = zeros(11);
C = zeros(11);

for i=1:1:11
    if(i<=4)
        A(i) = i;
    else
        B(i) = i;
    end
end

//---przykład na instrukcje while----
i = 1;
x = 0:1:15;
//D = zeros(11);
while(x(i)<11)
    disp("*");
    i = i+1;
end

//----
