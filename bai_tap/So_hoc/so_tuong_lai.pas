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
var n: longint;
i,k: integer;
check :boolean;
begin
check := True;
k := 2;
readln(n);
for i := 1 to (n div 2) do
begin
        if (n mod k = 0) then
            if isPrime(k) = True then k := k + 1
            else 
                begin
                    check := False;
                    break;
                end
            else k := k + 1;
end;
writeln(check);
readln
end.