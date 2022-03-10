var s:string;
i: byte;
begin
    Write('nhap xau: ');
    readln(s);
    for i:= 1 to length(s) do
        while pos(' ',s)<>0 do delete(s,pos(' ',s),1);
    writeln(s);
    readln;
end.
//lemoon05 - https://github.com/lemoon05