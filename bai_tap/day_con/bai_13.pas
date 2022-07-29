var a:array[1..100] of longint;
i,k,m,n,j,sum,dau,cuoi: longint;
begin
sum := 0;
read(n,m);
for i := 1 to n do read(a[i]);
for j:= 1 to n do    
    begin
        begin
            dau := j;
            break; 
        end;
        sum := sum + a[i];
        if sum < m then continue
        else   
            begin
                if sum = m then Write(dau,j) 
                else 
                    begin
                        dau := j + 1;
                        sum := 0;
                    end;
            end;
    end;
end.