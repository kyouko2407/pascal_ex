var a: string;
    i, count: integer;
begin
    count := 1;
    write('nhap chuoi: ');readln(a);
    for i:= 1 to length(a) do 
        if (a[i] = ' ') and (a[i+1] <> ' ') then count := count + 1;
    writeln('co ', count,' tu');
    readln
end.
//Bản chuẩn cuối                
//lemoon05 - https://github.com/lemoon05