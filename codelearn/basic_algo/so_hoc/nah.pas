Var s: string; 
    i: byte;
    inp, oup: text; 
Begin 
    assign(inp,'xau.txt');reset(inp);
    assign(oup,'xau1.txt');rewrite(oup);
    readln(inp,s);
    i:=Pos('anh',s); 
    While i<> 0 do 
    Begin 
        Delete(s,i,3); 
        Insert('em',s,i); 
        i:=Pos('anh',s); 
    End; 
    writeln(oup, s); 
    readln
End. 