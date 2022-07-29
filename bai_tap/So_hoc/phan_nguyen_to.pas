function dem_uoc(n:longint):longint;
var count,i,k: longint;
begin
    k := 2;
    
    for i := 1 to (n div 2) do
    begin
        if (n mod k) = 0 then count := count +1;
        k := k + 1;
    end;
readln
end;
