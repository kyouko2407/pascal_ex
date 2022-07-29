var s: string;
     i : longint;
     check : boolean;
begin
    check := true;
    readln(s);
    for i := 1 to (length(s) div 2) do
        if s[i] <> s[length(s) + 1 - i] then begin check := false; break; end;
    writeln(check);
    readln
end.