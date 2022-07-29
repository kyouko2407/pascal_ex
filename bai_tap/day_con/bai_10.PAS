var a:array[1..100] of longint;
i,n,k,count,j,max,max_dau,max_cuoi : longint;
begin
    count := 1;
    max := 0;
    readln(n);
    for i:= 1 to n do read(a[i]);
    for j := 1 to n do
        begin
        if a[j]  <= a[j + 1]  then 
                begin
                    count := count + 1;
                    if count > max then 
                    begin
                    max := count;
                    max_cuoi := j + 1;
                    end;
                end
        else 
            begin
                count := 1;
             end;
        end;
    writeln(max);
    writeln((max_cuoi - max + 1),' ',max_cuoi);
    readln
end.