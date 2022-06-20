

type mang=array[1..100] of longint;
var i,j6334,x,count,y,z:longint;
Var A:mang;
{***********************************************}
function luythua(n,k:longint):longint; //tinh luy thua
var i,kq: longint;
begin
    kq := 1;
    for i := 1 to k do 
        
            kq := kq*n;
        
    luythua := kq;
end;
{*****************************************************}
procedure phandoan(l,r:longint);  {Sap xep nhanh Quick sort}
Var i,j,x,w:longint;

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
{BEGIN
write('Nhap vao so phan tu cua mang:');Readln(N);
For i:=1 to N do
 begin
   write('A[',i,']=');
   Readln(A[i]);
 End;
phandoan(1,N);
  For i:=1 to N do write(A[i]:3);
 Readln
End.}
{***************************************************}
function tinh_so_dong_dang(n:longint):longint;
begin
x := 0;
count := 0;
i := 1;
while n > 0 do 
    begin
        count := count + 1;
        a[i] := n mod 10;
        n := n div 10;
        i := i + 1;
    end;
    //for j := 1 to count do writeln(a[j]);
phandoan(1,count);
    for j := count downto 1 do 
          begin
            x := x + a[j]*luythua(10,j-1);
          end;
    tinh_so_dong_dang := x;
end;
{****************************************************}
begin
  Readln(y,z);
  writeln(tinh_so_dong_dang(y)+tinh_so_dong_dang(z));
  readln
end.