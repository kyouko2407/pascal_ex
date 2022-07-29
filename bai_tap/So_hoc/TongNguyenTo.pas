function isPrime(a:integer):boolean;                                       //kiem tra co phai so nguyen to
    var count1,i: integer;
        bool: boolean;
        begin
            count1 := 0;
            for i:= 1 to trunc(sqrt(a)) do 
                if (a mod i = 0) then count1 := count1 + 1;
                if count1 = 1 then bool := True else bool := False;
                isPrime := bool;         
        end;
//chuong trinh chinh
var n, i: longint;
    
begin
readln(n);
for i := 2 to (n div 2) do
if isPrime(i) = True then 
    if isPrime(n - i) = True then writeln(i,' + ', n-i);
readln
end.
 