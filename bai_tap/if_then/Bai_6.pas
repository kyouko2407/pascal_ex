var x1,y1,r1,x2,y2,r2,l : real;
begin
    readln(x1,y1,r1,x2,y2,r2 );
    l := sqrt(sqr(x1-x2)+sqr(y1-y2));
    if l > (r1 + r2) then writeln(l - r1 - r2);
    if l < (r1 + r2) then writeln

end. 