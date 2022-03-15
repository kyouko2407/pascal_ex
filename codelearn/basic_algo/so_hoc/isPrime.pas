{
Đề bài.
Một số nguyên tố là một số tự nhiên lớn hơn 1 và không thể tạo thành từ tích của hai số tự nhiên nhỏ hơn.

Ví dụ số 2, 3, 5 được gọi là số nguyên tố

Viết một hàm xác định xem một số nguyên dương đã cho có phải là số nguyên tố hay không.
}
var count, n,i: integer;
begin
    count := 0;
    write('n: ');readln(n);
    for i:= 1 to n do 
        if (n mod i = 0) then count := count + 1;
    if count = 2 then writeln('True') else writeln('False');
    readln
end.
//tang quang dung
