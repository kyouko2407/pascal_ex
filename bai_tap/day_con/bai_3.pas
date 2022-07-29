var a:array[1..100] of longint;
i,k,n,m,sum,max,maxi,j, maxk,v:longint;
begin
    max := 0;
    readln(n);
    readln(m);
    for i := 1 to n do read(a[i]);
    for k := 1 to n-m +1 do 
    begin
        sum := 0;
        for j := k  to k + m - 1 do
            begin
                sum := sum + a[j];
                if sum > max then 
                begin
                    max := sum;
                    maxk := k;
                    maxi := j;
                end; 
            end;
    end;
    writeln(max);
    for v := maxk  to maxi  do Write(a[v]:4);
    readln
end.