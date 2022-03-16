//Đưa ra True nếu dãy số trong file in.txt là cấp số cộng và ngược lại
var i,n,d: word;
    inp, oup: text;
    a: array[1..100] of integer;
    
begin
    assign(inp,'in.txt');reset(inp);
    assign(oup,'out.txt');rewrite(oup);
    readln(inp,n);
    
    for i:= 1 to n do
        read(inp,a[i]);
    d := a[2] - a[1];
    for i:=2 to n do
        
        if (a[i] - a[i-1] <> d) then 
            begin;
                write(oup,'False');
                break;
            end;
        if i = n then write(oup,'True');
    close(inp);close(oup);
    readln
end.
//Tang Quang Dung
