var gia_tri_tong: real;
begin
    write('Nhap gia tri: ');readln(gia_tri_tong);
    writeln('Gia tri thuc: ',(gia_tri_tong/110)*100:10:0);
    writeln('VAT: ',(gia_tri_tong - (gia_tri_tong/110)*100):10:0);
    readln
end.