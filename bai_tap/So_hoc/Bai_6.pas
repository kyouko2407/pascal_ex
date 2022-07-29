var x1,y1,r1,x2,y2,r2,l : real;
begin
    readln(x1,y1,r1,x2,y2,r2 );
    l := sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
    if l > (r1 + r2) then writeln((l - r1 - r2):10:3);
    if l < abs(r1-r2) then writeln((abs(r1 - r2) - l):10:3)
    else writeln('0');
readln
end. 