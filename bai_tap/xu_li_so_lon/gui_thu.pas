{var key, s1,s2 : string;
    i, j, count : longint;
begin
count := 0;
key := '';
readln(s1);
readln(s2);
while i := 1 to length(s1) do
    for j := 1 to length(s2) do
        if s1[i] = s2[j] then begin key := key + s1[i]; inc(count); end
        else begin
            count := 0;
            break;
        end;
delete(s2,pos(key,s2),count);
writeln(count);
writeln(s2);
s1 := s1 + s2;
write(s1);
readln
end.
}
var i:byte; sb,se:string;
begin
   readln(sb);
   readln(se);
   i:=1;
   while pos(copy(se,1,i),sb)<>0 do inc(i);
   dec(i);
   delete(se,1,i);
   writeln(length(sb)+length(se));
readln
end.