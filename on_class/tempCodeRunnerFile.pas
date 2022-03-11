var a: string;
    i: integer;
begin
    write('nhap chuoi: ');readln(a);
    for i:= 1 to length(a) do
        if a[i] = ' ' then delete(a, i, 1);
    writeln(a);
    readln
end.
