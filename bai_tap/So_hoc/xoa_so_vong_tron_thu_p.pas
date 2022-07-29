function xoa_so_vong_tron(n,p:longint):longint;
var i,j,count,x: longint;
var a:array[1..100] of longint;
begin
    for i := 1 to n do
        a[i] := i;
    count := n;
    while count > 1 do
        begin
            if p + 4 > n then a[p + 4 - n] := 0 else a[p + 4] := 0;
            count := count - 1;
        end;
    for i := 1 to n do 
        write(a[i]);
    for j := 1 to n do
        if a[j] <> 0 then x := a[j];
    xoa_so_vong_tron := x;
end;
var n,p: longint;
begin
    Readln(n,p);
    writeln(xoa_so_vong_tron(n,p));
    Readln
end.
