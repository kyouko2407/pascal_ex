Var s: string; 
    i: byte;
    inp, oup: text; 
Begin 
    assign(inp,'xau.txt');reset(inp);
    assign(oup,'xau.dat');rewrite(oup);
    readln(inp,s);
    i:=Pos('em',s); 
    While i<> 0 do 
    Begin 
        Delete(s,i,3); 
        Insert('anh',s,i); 
        i:=Pos('em',s); 
    End; 
    writeln(oup, s); 
    readln
    close(inp);close(oup);
End. 