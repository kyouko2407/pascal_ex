type mang=array[1..100] of longint;
var a:mang;
    n,i: longint;
function khong_giam(b:mang; m:longint):longint;
var count,j,max,max_cuoi : longint;
begin
    count := 1;
    max := 0;
    
    
    for j := 1 to m do
        begin
        if b[j]  < b[j+1] then 
                begin
                    count := count + 1;
                    if count > max then 
                    begin
                    max := count;
                    max_cuoi := j+1;
                    end;
                end
        else 
            begin
                count := 0;
             end;
        end;
    //writeln(max);
    //writeln((max_cuoi - max + 1),' ',max_cuoi);
    khong_giam := max_cuoi - max + 1;
end;
{readln(n);
    for i:= 1 to n do read(a[i]);}
function khong_tang(b:mang;m:longint):longint;
var count,j,max,max_cuoi : longint;
begin
    count := 1;
    max := 0;
    for j := 1 to m do
        begin
        if b[j]  > b[j+1] then 
                begin
                    count := count + 1;
                    if count > max then 
                    begin
                    max := count;
                    max_cuoi := j+1;
                    end;
                end
        else 
            begin
                count := 0;
             end;
        end;
    //writeln(max);
    //writeln((max_cuoi - max + 1),' ',max_cuoi);
    khong_tang := max_cuoi;
end;
begin
    readln(n);
    for i:=1 to n do read(a[i]);
    if khong_tang(a,n) + 1 = khong_giam(a,n) then 
    begin
        writeln(khong_tang(a,n));
        writeln(khong_giam(a,n));
    end;
    readln
end.
{for i := 1 to n do readln()}
