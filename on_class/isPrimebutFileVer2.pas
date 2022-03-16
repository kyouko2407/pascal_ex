var i,n: word;
    inp, oup: text;
    prime: boolean;
begin
    
    assign(inp,'in.txt');reset(inp);
    assign(oup,'out.txt');rewrite(oup);
    prime := true;
    while not eof(inp) do
        begin 
            read(inp,n);
            for i:= 2 to trunc(sqrt(n)) do 
                begin
                    if n < 2 then prime:=false else prime:=true;
                    if (n mod i = 0) then 
                    begin
                        prime := false;
                        break;
                    end;
                end;
            if prime = false then writeln(oup,n, ' khong la so nguyen to') else writeln(oup,n,' la so nguyen to');
        end;
    
    close(inp);close(oup);
    readln
end.
