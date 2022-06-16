var count, n, max, i, k: integer;
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
function PhanTich(b:integer):integer;                //Phan tich thua so nguyen to
    var count2, i, k:integer;
    begin
        count2 := 0;
        for i := 2 to b do
            begin
                k := 2;
                if (b mod k) = 0 then
                    begin
                        count2 := count2 + 1;
                        b := b div k;
                    end
                else 
                    begin
                        k := k + 1;
                        while True do 
                            if isPrime(k) = False then k := k + 1
                            else break;
                    end;
            end;
            PhanTich := count2;
    end;
begin
    writeln(isPrime(6));
    writeln(PhanTich(6));
    readln
end.


        
