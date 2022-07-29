{
    Bài 7: Từ bàn phím nhập các hệ số a, b, c của phương trình tính tổng quát đường thẳng ax+by+c=0 và tọa độ 2 điểm A(x1,y1), B(x2,y2). Thông báo kết quả điểm A, điểm B có thuộc đường thẳng không? Trong trường hợp A, B cùng không thuộc đường thẳng, hãy thông báo chúng cùng phía so với đường thẳng khác phía nhau?
}
var a,b,c,x1,y1,x2,y2,s1,s2: real;
begin
    readln(a,b,c,x1,y1,x2,y2);
    s1 := a*x1 + b*y1 + c;
    s2 := a*x2 + b*y2 + c;
    if s1 = 0 then writeln('co') else writeln('khong');
    if s2 = 0 then writeln('co') else writeln('khong');
    if (s1 <> 0) and (s2 <> 0) then 
        begin 
            if s1*s2 > 0 then writeln('cung phia') else writeln('khac phia');
        end;
    readln
end.

