var n,t,i,j,x,y,count: longint;
    a:array[1..100000] of longint;
begin
    readln(t);
    for i := 1 to t do 
        begin
            readln(n);
            count := 0; 
            for j := 1 to n do read(a[j]);
            for x := 1 to n do
                for y := 1 to n do
                    begin
                        if (a[x] < x ) and (x < a[y]) and (a[y] < y) then inc(count); 
                    end;
            writeln(count);
        end;
end.
