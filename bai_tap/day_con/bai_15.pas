var a:array[1..100] of longint;
    n,i,max,j,vt: longint;
function check(i,j:longint):boolean;
var k: longint;
begin
    for k := i to (i + j) div 2 do
        if a[k] <> a[i + j - k] then exit(false) else exit(true);
end;
begin
    readln(n);
    for i := 1 to n do read(a[i]);
    max := 1; vt := 1;
    for i := 1 to n do
        for j := n downto 1 do
            if check(i,j) then 
                begin
                    if j - i + 1 > max then begin max := j - i + 1; vt := i; end;
                break;
                end;
    for i := vt to vt + max - 1 do Write(a[i],' ');
    readln

end.