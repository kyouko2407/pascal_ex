var i,n,a,b:integer;
begin
    write('nhap vao n:= ');readln(n);
    b:=1;
    i:=2;
    a:=1;
    while (i<n) do
        begin
            i:=i+1;
            if i mod 2=1 then a:=a+b
            else b:=b+a;
        end;
        if i mod 2=1 then write('So Fibonanci thu ',n,' la: ',a)
        else writeln('So Fibonanci thu ',n,' la: ',b);
readln;
end.