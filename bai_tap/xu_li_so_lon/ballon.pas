var count,i,k,t,j, m :longint;
    a:array[65..90] of longint;
s : string;
begin
    
    readln(t);
    for i := 1 to t do 
        begin
            count := 0;
            fillchar(a,sizeof(a),0);
            readln(k);
            readln(s);
            for j := 1 to k do
            inc(a[ord(s[j])]);
            for m := 65 to 90 do
                if  a[m] > 0 then 
                    if a[m] = 1 then count := count + 2 else count := count + a[m] + 1;
                    writeln(count);
        end;
    
    readln 

end.
