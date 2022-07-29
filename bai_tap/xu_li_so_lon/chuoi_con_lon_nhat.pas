const fi = 'LCS.INP';
fo = 'LCS.OUT';
MaxMN = 100;
var f : text;
a,b : array[0..MaxMN] of longint;
l : array[0..MaxMN,0..MaxMN] of longint;
m,n : longint;
p : array[0..MaxMN] of longint;
count : longint;
procedure Enter;
var f : text;
begin
m := 0;
n := 0;
assign(f,fi);
reset(f);
while not eoln(f) do
begin
inc(m);
read(f,a[m]);
end;
readln(f);
while not eoln(f) do
begin
inc(n);
read(f,b[n]);
end;
close(f);
end;
function max(x,y : longint) : longint;
begin
if x>y then max := x
else max := y;
end;
procedure Optimize;
var i,j : longint;
begin
for i:=1 to m do l[i,0] := 0;
for j:=1 to n do l[0,j] := 0;
for i:=1 to m do
for j:=1 to n do
begin
if a[i]=b[j] then l[i,j] := l[i-1,j-1] + 1
else l[i,j] := max(l[i,j-1],l[i-1,j]);
end;
end;
procedure Trace;
var f : text;
i,j : longint;
begin
assign(f,fo);
rewrite(f);
writeln(f,l[m,n]);
i := m;
j := n;
fillchar(p,sizeof(p),0);
count:= 0;
while (i>0) and (j>0) do
begin
if a[i]=b[j] then
begin
inc(count);
p[count] := a[i];
dec(i);
dec(j);
end
else if l[i,j]=l[i,j-1] then dec(j)
else dec(i);
end;
for i:=count downto 1 do write(f,p[i],' ');
close(f);
end;
BEGIN
Enter;
Optimize;
Trace;
END.