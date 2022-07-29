var count, i: longint;
    s, s_1, c : string;
begin
    readln(s);
    s_1 := '';
    count := 1;
    for i := 1 to length(s) do
        begin
            if s[i] = s[i +1] then inc(count)
            else 
                if count > 1 then begin str(count,c); s_1 := s_1 + c; s_1 := s_1 + s[i]; count := 1; end  
                else s_1 := s_1 + s[i]; 
        end;
    writeln(s_1);
    readln
end.

