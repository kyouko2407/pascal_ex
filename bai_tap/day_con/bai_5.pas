//Cho dãy số nguyên a1,a2,...an, hãy tìm dãy con gồm các phần tử  dương liên tục, và là dãy con có  độ dài  lớn nhất trong dãy đã cho
var a:array[1..100] of longint;
i,n,k,count,j,max,max_dau,max_cuoi : longint;
begin
    count := 0;
    max := 0;
    readln(n);
    for i:= 1 to n do read(a[i]);
    for j := 1 to n do
        begin
        if a[j]  > 0 then 
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