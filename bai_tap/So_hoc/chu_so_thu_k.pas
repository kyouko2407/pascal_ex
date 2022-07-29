var n: longint;
a :array[1..100] of longint;
i,k : integer;
 
begin
    readln(n);
    while n > 0 do 
        begin
            a[i] := n mod 10;
            n := n div 10;
        end;
    
    
    