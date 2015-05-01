clc
clear
//--prykład z mocierzą liczb losowych---
a= (10-%eps)*rand(5,5);
b = 0;
c=0;
d=0;
e=0;
for i=1:+1:size(a,'*')
    if a(i)< 1 | a(i) == 1 then
        b=b+1;
        elseif a(i) > 5 then
        c=c+1;
     end
end

d=(b/size(a,'*'))*100;
e=(c/size(a,'*'))*100;

printf("Liczb wiekszych od 5 jest: %f, mnejszych badz rownych 1 jest:%f.\nLiczby wieksze od 5 stanowaia %f a mnejsze badz rowne 1 stanowia: %f ",c,b,e,d)
//printf("%f",b);
