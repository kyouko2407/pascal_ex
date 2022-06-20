procedure MyProcedure(c: longint);
Var M: array[1..100] of longint;
var i,j,n: integer;
begin
    i := 2;
    
    for j := 1 to 100 do
                m[j] := 0;
    while c > 1 do 
        begin
            
            if (c mod i = 0) then 
                begin
                    
                    c := (c div i);
                    M[i] := M[i] + 1;
                end
            else    i := i + 1;
            
        end;
    for i := 1 to 100 do
        if M[i] > 0  then 
            if m[i] > 1 then
                write(i,'^',m[i],'*')
            else    
            n := i;
            while n <= 100  do 
                if m[i] > 0 then begin n := n + 1; break; end
                else n := n + 1;
                if n = 100 then write(i);
                
                
                
            
                

            
end;
var n: longint;
begin
    readln(n);
    MyProcedure(n);
    readln
end.