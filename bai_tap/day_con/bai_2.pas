

Type KM= array[1..100] of integer;

     Var M:KM;

    i,j,n,ldau, dai,Max: integer;

Function TONG(A:KM;m,l:byte):Integer;

Var Tam,i:integer;

Begin

    Tam:=0;

    For i:=m to m+l do Tam:=Tam + A[i];

    TONG:=Tam;

End; //-2 5 9 -4 -6 8 7 -517

Begin
     Write('Nhap so nc: '); Readln(n);
     For i:=1 to n do Begin  Read(M[i]); End;
     Max:=M[1];dai:=1;ldau:=1;
     For i:= 1 to n do
      For  j:=1 to n-i+1 do
            if TONG(M,i,j)> Max then

            Begin ldau:=i; Max:=Tong(M,i,j) ; dai:=j+1 End;
     Write('Xau con co tong:',max,' bat dau tu: ',ldau, ' dai: ',dai + 1);
     Readln

End.