var a:array[1..100] of longint;
i,s,n,k,count,j,max,max_dau,max_cuoi : longint;
begin
    count := 0;
    max := 0;
    readln(s);
    readln(n);
    for i:= 1 to n do read(a[i]);
    for j := 1 to n do
        begin
        if a[j] > s then 
                begin
                    count := count + 1;
                    if count > max then 
                    begin
                    max := count;
                    max_cuoi := j;
                    end;
                end
        else 
            begin
                count := 0;
             end;
        end;
    writeln(max);
    writeln((max_cuoi - max + 1),' ',max_cuoi);
    readln
end.