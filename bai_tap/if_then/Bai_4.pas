var p,r,q: word;
begin
    write('Nhap so phieu: ');readln(p,q,r);
    if (p > q) and (p > r) then writeln('An');
    if (q > p) and (q > r) then writeln('Vinh');
    if (r > p) and (r > q) then writeln('Quang');
    if (r = q) or (r = p) or (p = q) then writeln('Bau lai');
    readln
end.
