for i=0:45:180
    if(i <> 135)
        format(6)
        ("Wartość sinusa dla kąta : "), disp(i);
        sinus = sin(i*%pi/180)
        ("Wartość cosinusa dla kąta : "), disp(i);
        cosinus = cos(i*%pi/180)
     end
end
