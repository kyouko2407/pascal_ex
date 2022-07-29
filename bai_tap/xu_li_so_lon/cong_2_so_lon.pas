var a,b: bigNum;
function add(a,b : bigNum): bigNum;
var sum, carry, i, x, y : integer;
c : bigNum;
begin
carry:=0;c:='';
while length(a)<length(b) do a:='0'+a;
while length(b)<length(a) do b:='0'+b;
for i:=length(a) downto 1 do
begin
x:= ord(a[i])-ord('0'); {ord('0')=48}
y:= ord(b[i])-ord('0');
sum:=x + y + carry;
carry:=sum div 10;
c:=chr(sum mod 10 +48)+c;
end;
if carry>0 then c:='1'+c;
add:=c;
end;
begin
    readln(a,b);
    writeln(add(a,b));
end.