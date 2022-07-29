uses crt;
var s: string;
type mang= array[1..100] of string;
var a: mang;
i, j, k, count,count_1: longint;

procedure phandoan(l,r:longint);
Var i,j:longint;
x,w : string;
Begin
x:=A[(l+r) div 2];
  i:=l;j:=r;
  Repeat
    While(a[i]<x) do i:=i+1;
     While (x<a[j]) do j:=j-1;
      If i<=j then
        Begin
          w:=a[i];a[i]:=a[j];a[j]:=w;
          i:=i+1;j:=j-1;
        End;
 until i>j;
 If l<j then phandoan(l,j);
 If i<r then phandoan(i,r);
End;
begin
clrscr;
 k := 1;
 count := 0;
 count_1 := 0;
readln(s);
for i := 1 to length(s) do
        for j := 1 to length(s) - i + 1 do
        begin
                a[k] := copy(s,j,length(s)-i + 1);
                inc(k);
        end;
for j := 1 to 100 do
        if a[j]  <> ''  then inc(count);
        phandoan(1,count);
    for j := 1 to count do

            if a[j] = a[j+1] then a[j] := '';
    for j := 1 to count do
        if a[j] <> '' then inc(count_1);
        writeln(count_1);
        readln

        end.
