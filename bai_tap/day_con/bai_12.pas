//ý tưởng: dãy có giá trị trung bình lớn hơn s => trừ mỗi phần tử cho số k, sau đó tìm dãy con lơn nhất
Type KM= array[1..100] of integer;

     Var M,test:KM;

    i,j,n,ldau,s,v, dai,Max: integer;

Function TONG(A:KM;m,l:byte):Integer;

Var Tam,i:integer;

Begin

    Tam:=0;

    For i:=m to m+l do Tam:=Tam + A[i];

    TONG:=Tam;

End; //-2 5 9 -4 -6 8 7 -517

Begin
     Write('Nhap so nc: '); Readln(n);
     Write('Nhap so s: '); Readln(s);
     For i:=1 to n do Begin  Read(M[i]); End;
     for v := 1 to n do test[v] := m[i] - s;
     Max:=test[1];dai:=1;ldau:=1;
     For v:= 1 to n do
      For  j:=1 to n-i+1 do
            if TONG(test,v,j)> Max then
            Begin ldau:=v; Max:=Tong(test,v,j) ; dai:=j+1 End;
     Write('Xau con co tong:',max,' bat dau tu: ',ldau, ' dai: ',dai + 1);
     Readln
End.
