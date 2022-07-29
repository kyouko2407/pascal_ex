{}
var s: string;
k,i,j: longint;
begin
readln(s);
i := 1;
    while i < length(s) do 
    if s[i] in ['0'..'9'] then inc(i) else delete(s, i, 1);
    
    for i := 1 to 5 do
        begin
            k := i;
            for j := i to length(s) + i - 5 do
                if s[k] < s[j] then k := j;
                if k > i then delete(s,i,k-i);
                //writeln(s);
        end;
        writeln(s);
readln
end.