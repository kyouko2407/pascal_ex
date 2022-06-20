{Sap xep nhanh Quick sort}
 
type mang=array[1..100] of integer;
Var A:mang;
i,N,x:integer;
procedure phandoan(l,r:integer);
Var i,j,x,w:integer;
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
BEGIN
write('Nhap vao so phan tu cua mang:');Readln(N);
For i:=1 to N do
 begin
   write('A[',i,']=');
   Readln(A[i]);
 End;
phandoan(1,N);
  For i:=1 to N do write(A[i]:3);
 Readln
End.