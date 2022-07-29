
//kiem tra 1 so co phai la so don dieu
function kiem_tra_don_dieu(n:longint):boolean;
var a:array[1..100] of longint;
    i,j: integer;
    check: boolean;
begin
    i := 0;
    check := True;
    while n > 0 do
        begin
            i := i + 1;
            a[i] := n mod 10;
            n := n div 10;

        end;
    if a[1] > a[2] then
        for j := 4 to i-1 do
            if j mod 2 <> 0 then 
                if (a[j] > a[j + 1]) and (a[j] > a[j-1]) then continue 
                else
                    begin
                        check := False;
                        break;
                    end;
    if a[1] < a[2] then 
        for j := 4 to i-1 do
            if j mod 2 <> 0 then 
                if (a[j] < a[j + 1]) and (a[j] < a[j-1]) then continue 
                else
                    begin
                        check := False;
                        break;
                    end;
    kiem_tra_don_dieu := check;
end;
var n:longint;
begin
    readln(n);
    writeln(dem_so(n));
    writeln(kiem_tra_don_dieu(n));
    readln
end.