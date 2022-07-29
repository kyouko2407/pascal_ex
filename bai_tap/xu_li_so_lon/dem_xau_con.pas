var s1, s2: string;
count, i : longint;
begin
    readln(s1);
    readln(s2);
    count := 0;
    while pos(s1,s2) <> 0 do begin inc(count); delete(s2,pos(s1,s2),1); end;
    writeln(count);
    readln
end.