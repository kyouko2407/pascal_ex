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