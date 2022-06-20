function dem(c:longint):longint;
var i, count: integer;
begin
    i := 2;
    count := 0;
    while c > 1 do 
        begin
            if (c mod i = 0) then 
                begin
                    count := count + 1;
                    c := (c div i);
                end
            else    i := i + 1;
        end;
    dem := count;
end;
var i,n, max_1, max_2: longint;
begin  
    readln(n);
    max_1 := 1;
    max_2 := 1;
    for i := 1 to n do 
    
        if dem(i) > max_1 then 
            begin
                max_1 := dem(i);
                max_2 := i
            end;
        writeln(max_2);
    readln
end.
    

