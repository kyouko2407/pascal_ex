var count,k,j, m,max,max2 :longint;
    a:array[97..122] of longint;
s : string;
begin
    count := 0;
    fillchar(a,sizeof(a),0);
     readln(s);
    for j := 1 to length(s) do
    inc(a[ord(s[j])]);
    max := a[97];
    max2 := 97;
    for m := 97 to 122 do
        if a[m] > max then begin max := a[m]; max2 := m; end;
    writeln(chr(max2),' ',max);
    readln
end.
    

