
var  t,i,j,k,sum:integer;
     a,c:array[1..100,1..100] of byte;
     s:array[1..100,1..100] of string[11];
     n:array[1..100] of longint;
begin
  readln(t);
  for i:=1 to t do
    begin
      readln(n[i]);
      for j:=1 to n[i] do read(c[i,j]);
      readln;
      for j:=1 to n[i] do
        begin
          read(a[i,j]);
          readln(s[i,j]);
        end;
      end;
  for i:=1 to t do
    begin
      for j:=1 to n[i] do
        begin
          sum:=c[i,j];
          for k:=1 to length(s[i,j]) do if s[i,j][k]='D' then Inc(sum) else if s[i,j][k]='U' then Dec(sum);
          while sum<0 do sum:=sum+10;
          while sum>9 do sum:=sum-10;
          write(sum,' ');
        end;
      writeln;
    end;
  readln
end.