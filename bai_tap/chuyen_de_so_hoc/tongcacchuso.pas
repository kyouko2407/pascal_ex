var n: longint;
    sum: longint;
    a: longint;
begin
        readln(n);
        sum := 0;
        while (n > 0) do
                begin
                        a := (n mod 10);
                        if (a mod 2) <> 0 then sum := sum + a;
                        n := n div 10;
                end;
        writeln(sum);
        readln
end.
