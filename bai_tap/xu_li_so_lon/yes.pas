var n, i: longint;
s: string;
begin
readln(n);
for i := 1 to n do
    begin
    readln(s);
    if lowercase(s) = 'yes' then writeln('YES') else writeln('NO');
    end;
end.