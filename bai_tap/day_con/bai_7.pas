var a:array[1..100] of longint;
    i,k,m,n,count_b,count,max,j :longint;
begin
    max := 0;
    count_b := 0;
    
    readln(n);
    for i := 1 to n do read(a[i]);
    //b[1] := a[1];
    //for i := 2 to n do if a[i] <> b[i-1] then begin b[i] := a[i]; count_b := count_b + 1; end;
    //writeln(count_b);
    //for m := 1 to count_b do  write(b[m],' ');
    //writeln;
    for j := 1 to n - 1 do
    begin count := 0;
        for k := j to n  do
        begin
        if a[j]  =  a[k] then 
                begin
                    count := count + 1;
                    if count > max then 
                    begin
                    max := count;
                    
                    end;
                end
        else 
            begin
                count := 0;
             end;
        end;
    END;
    writeln(max);
    readln
end.