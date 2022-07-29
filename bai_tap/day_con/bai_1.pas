var a: string;
    count,i, max,k: longint;
    
begin
    
    count := 0;
    max := 0;
    readln(a);
    for i := 1 to length(a) do 
        for i := 1 to length(a) do 
        begin
            if a[i] = 'a' then 
                begin
                    count := count + 1;
                    if count > max then max := count;
                end
            else 
                begin
                    count := 0;
                    
                end;
        end;
    writeln(max);
    readln
end.