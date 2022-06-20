function MyFunction(n:integer):boolean;
var sum: longint;
    bool: boolean;
begin
    sum := 0;

        
            while n > 0 do
            begin 
                sum := sum + sqr(n mod 10);
                n := n div 10;
            end;
            if sum = 1 then 
                begin
                    bool := True;
                    
                end
            else 
                if sum < 10 then
                    begin 
                        bool := False;
                        
                    end
                else n := sum;
        
    MyFunction := bool;
end;
var n:longint;
begin
    readln(n);
    writeln(MyFunction(n));
    readln
end.