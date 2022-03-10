var fullname, firstname:string; i,n:byte;
begin
    write('Nhap ho ten: ');readln(fullname);
    n:=length(fullname);
    for i:= length(fullname) downto 1 do
        if fullname[i]=' ' then
            begin
                firstname:=copy(fullname,i+1,n-i);
                break;{dung de thoat khoi vong lap}
            end;
    write('Ten: ',firstname);
    readln;
end.
//lemoon05 - Tang Quang Dung
var fullname:string; i,n:byte;
begin
    write('Nhap ho ten: ');readln(fullname);
    n:=length(fullname);
    for i:=n downto 1 do
        if fullname[i]=' ' then
            begin
                delete(fullname,1,i);
                break;{dung de thoat khoi vong lap}
        end;
    write('Ten: ',fullname);
    readln;
end.
//lemoon05 - Tang Quang Dung