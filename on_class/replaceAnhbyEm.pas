Var s: string; 
    i: byte;
    inp, oup: text; 
Begin 
    assign(inp,'in.txt');reset(inp);
    assign(oup,'out.txt');rewrite(oup);
    
    i:=Pos('em',s); 
    While i<> 0 do 
    Begin 
        Delete(s,i,3); 
        Insert('anh',s,i); 
        i:=Pos('em',s); 
    End; 
    writeln(s); 
    readln
End. 