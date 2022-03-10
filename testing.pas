var s:string[255];
    i: integer;
BEGIN
    s := 'abc18n2';
    for i := 1 to length(s) do
        if ('0' <= s[i]) and (s[i] <= '9') then
            write(s[i]);
END.