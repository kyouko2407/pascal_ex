function tong_tan_cung(n,m: longint):longint;
var i: integer;
    sum: longint;
begin
    sum := 0;
    for i := 1 to m do 
        begin
            sum := sum + (n mod 10);
            n := n div 10;
        end;
    tong_tan_cung := sum;
end;
var n ,m: longint;
begin
    readln(n, m);
    writeln(tong_tan_cung(n, m));
    readln
end.