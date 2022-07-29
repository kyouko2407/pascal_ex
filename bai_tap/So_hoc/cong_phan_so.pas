function UCLN(a,b:longint):longint;
var c,d: longint;
begin
    c := a;
    d := b;
    while (c <> d) do
    if (c > d) then c := (c - d) else d := (d - c);
    UCLN := c;
end;
{**************************************************}
var x,y,m,n,a,b: longint;
begin
    readln(x,y,m,n);
    a := x*n + y*m;
    b := y*n;
    if a mod b = 0 then writeln(a div b) else
    writeln(a div UCLN(a,b),'/',b div UCLN(a,b));
    readln
end.