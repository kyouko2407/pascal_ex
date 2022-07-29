function isPrime(a:longint):boolean;                                       //kiem tra co phai so nguyen to
    var count1,i: longint;
        bool: boolean;
        begin
            count1 := 0;
            for i:= 1 to trunc(sqrt(a)) do 
                if (a mod i = 0) then count1 := count1 + 1;
                if count1 = 1 then bool := True else bool := False;
                isPrime := bool;         
        end;
function UocNguyenTo(n:longint):longint;                                  //tong uoc nguyen to                    
var i,k,x: longint;   
begin
    x := 0;
    k := 2;
    for i := 1 to (n div 2) do
        begin
            if ((n mod k) = 0) then
                if isPrime(k) = True then x := x + k;
            k := k + 1; 
        end;
    UocNguyenTo := x;
end;
var n: longint;
begin 
    readln(n);
    writeln(UocNguyenTo(n));
    readln
end.
