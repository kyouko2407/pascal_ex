type mang:array[1..100] of string
var s1,s2 : string;
count,i : longint;
procedure dao(s1:string);
var i : longint;
    s2 : string;
begin
    for i := 1 downto length(s1) do 
    s2 := s2 + s1[i];
end;
function xau_con_chung(s1,s2: string):string;
i, j, max: longint;
begin
    for i := 1 to length(s1) do
        for j := 1 to length(s2) do
            if s1[i] = s2[j] then 
end;