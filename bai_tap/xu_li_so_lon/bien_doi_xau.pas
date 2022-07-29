var f1,f2:text;
    s,sg:string;
    i:byte;
begin
    assign(f1,'XAUGON.INP');reset(f1);
    assign(f2,'XAUGON.OUT');rewrite(f2);
    readln(f1,s);
    sg:='';
    for i:=1 to length(s) do
        if s[i]<>s[i+1] then sg:=sg+s[i];
    writeln(f2,sg);
    close(f1);close(f2);
end.