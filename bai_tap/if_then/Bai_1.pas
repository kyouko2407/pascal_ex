var xa, xb ,xc, ya, yb, yc, a, b, c, p, s: real;
begin
    write('nhap: ');readln(xa, xb ,xc, ya, yb, yc);
    a := sqrt(sqr(xa-xb) + sqr(ya-yb));
    b := sqrt(sqr(xa-xc) + sqr(ya-yc));
    c := sqrt(sqr(xb-xc) + sqr(yb-yc));
    p := (a+b+c)/2;
    s := sqrt(p*(p-a)*(p-b)*(p-c));
    if (a + b > c) and (b + c > a) and (c + a > b) then 
        begin
            writeln('co the tao thanh tam giac');
            writeln('dien tich hinh tron noi tiep la: ',(sqrt((p-a)*(p-b)*(p-c)/p)*sqrt((p-a)*(p-b)*(p-c)/p)*3.14):10:3);
            writeln('dien tich hinh tron ngoai tiep la: ',(((a*b*c)/4*s)*((a*b*c)/4*s)*3.14):10:3);
        end
    else writeln('khong the tao thanh tam giac');
    readln
end.
