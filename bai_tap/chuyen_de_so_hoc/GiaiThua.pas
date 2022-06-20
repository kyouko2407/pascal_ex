function GiaiThua(n:integer):longint;
var i: integer;
    kq: longint;
begin
    kq := 1;
    for i := 2 to n do
        kq := kq*i;
    GiaiThua := kq;
end;
var n: integer;
    a: longint;
begin
    
    readln(n);
    a := GiaiThua(n);
    writeln(a);
    while (a mod 10 = 0) do 
        
        a := a div 10;
    writeln(a mod 10);
    readln
end.

