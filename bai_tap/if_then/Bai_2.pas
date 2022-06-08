var m1, m2, m3, s, tien_dien : real;
begin
    tien_dien := 0;
    write('nhap: ');readln(m1,m2,m3,s);
    if s <= 50 then tien_dien := (s*m1);
    if (s > 50) and (s <= 100) then tien_dien := (s-50)*m2 + 50*m1;
    if s > 100 then tien_dien := 50*m1 +  50*m2 + (s-100)*m3;
    writeln('tien dien: ',(tien_dien*110)/100:10:3);
    readln
end.