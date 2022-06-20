function LuyThuaCua2(n:integer):longint;
var i,kq: integer;
begin
    kq := 1;
    for i := 1 to n do 
        kq := kq*2;
    LuyThuaCua2 := kq;
end;
var n, m, i, k:integer;
begin
    m := 1;
    readln(n);
    while True do 
        if LuyThuaCua2(m) < n then m := m + 1
        else 
            begin
                m := m -  1;
                break;
            end;
        writeln(m,' ',n - LuyThuaCua2(m));
    readln
end.