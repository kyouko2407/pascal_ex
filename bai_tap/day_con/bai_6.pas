const fi = 'CHIAHETK.INP';
      fo = 'CHIAHETK.OUT';
      MAXN = 10000;
      MAXW = 1000;
      oo = MAXINT div 2;
var f: text;
    n: integer;
    k: integer;
    a: array[1..MAXN] of integer;
    L: array[0..MAXN, 0..MAXW] of integer;

    procedure Nhap;
    var i: integer;
    begin
        assign(f, fi); reset(f);
        readln(f, n, k);
        for i:= 1 to n do
                read(f, a[i]);
        close(f);
    end;

    function max(a, b: integer): integer;
    begin
        if a > b then exit(a)
                else exit(b);
    end;


    function dongduduong(s: integer): integer;
    begin
        s:= s mod k; // -(k-1)..0..k-1
        if s >= 0 then exit(s)
                else exit(s + k);
    end;

    procedure QHD;
    var i, j: integer;
    begin
        // Goi L[i, v] la do dai cua day con dai nhat co tong chia k du v
        for j:= 0 to k-1 do
                if j = dongduduong(a[1]) then L[1, j]:= 1
                        else L[1, j]:= -oo;

        for i:= 2 to n do
                for j:= 0 to k-1 do
                        L[i, j]:= max(1 + L[i-1, dongduduong(j-a[i])],
                                      L[i-1, j]);
    end;

    procedure TruyVet(i, j: integer);
    begin
        if i = 0 then exit;
        if L[i, j] = 1 + L[i-1, dongduduong(j-a[i])] then // Chon do vat thu i
        begin
                TruyVet(i-1, dongduduong(j-a[i]));
                write(f, a[i], '  ');
        end
                else // Khong chon do vat thu i
                        TruyVet(i-1, j);
    end;

    procedure InKQ;
    var i, j:integer;
    begin
        assign(f, fo); rewrite(f);
        writeln(f, L[n, 0]);
        TruyVet(n, 0);
        close(f);
    end;

BEGIN
        Nhap;
        QHD;
        InKQ;
END.