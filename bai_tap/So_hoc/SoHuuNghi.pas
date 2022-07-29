function TongUoc(n: longint): integer;
    var sum, i : integer;
    begin
        sum := 0;
        for i := 1 to n - 1  do
            if (n mod i) = 0 then sum := sum + i;
        TongUoc := sum;
    end;
var i, j: longint;
begin 
    
    for i := 1 to 10000 do
        for j := i + 1 to 10000 do
            if (TongUoc(i) = j) and (TongUoc(j) = i) then writeln(i,' ',j);
    readln
end.
    
