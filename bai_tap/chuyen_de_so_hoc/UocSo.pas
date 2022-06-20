var n: longint;
i,k: integer;
begin
k := 2;
readln(n);
for i := 1 to (n div 2) do
begin
        if (n mod k) = 0 then writeln(k);
        k := k + 1;
end;
readln
end.