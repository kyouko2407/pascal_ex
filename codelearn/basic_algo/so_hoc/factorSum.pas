{
Chúng ta có một số nguyên dương n. Mỗi một lần ta thay thế n bằng tổng các thừa số nguyên tố của nó (ví dụ 12=2*2*3 thì 12 sẽ được thay thế bằng số 2+2+3=7)

Chúng ta áp dụng phép toán này vào số hiện tại cho đến khi kết quả thu được giống vs số hiện tại

Cho một số tự nhiên, hãy tìm kết quả cuối cùng của phép toán trên.

Ví dụ:

Với n = 24, kết quả factorSum(n) = 5.
24 -> (2 + 2 + 2 + 3) = 9 -> (3 + 3) = 6 -> (2 + 3) = 5 -> 5.
Vì vậy kết quả trong trường hợp n = 24 là 5
}
var sum, i, n, c: integer;
begin
    sum := 0;
    write('Nhap n: ');readln(n);
    c := n;
    i := 2;
    while c > 1 do 
        begin
            if (c mod i = 0) then 
                begin;
                    sum := sum + i;
                    c := (c div i) ;
                end;
            i := i + 1;
        end;
    write(sum);
    readln
end.          