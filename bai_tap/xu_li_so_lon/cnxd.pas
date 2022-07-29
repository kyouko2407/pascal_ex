var s1,s2,s:ansistring;
    f,g:text;
    dem,n,i,x: longint;
begin
assign(f,'CNKD.inp'); reset(f);
assign(g,'CNKD.out'); rewrite(g);
readln(f,N);
s:='';
FOR i:=1 to n do
 begin
 read(f,x);
 str(x,s1);
 s:=s+s1;
 end;
dem:=0;
delete(s,length(s),1);
for i:=1 to length(s) do //chạy từ 1 đến length s
 begin
 s2:=s;     //gan bang xau ban dau
 s1:=copy(s2,1,i); 
 //writeln('s1: ', s1)   ;             //lay phan tu 
 while (pos(s1,s2)<>0) and (length(s2)<>0) do begin delete(s2,1,i); //writeln('s2: ', s2); 
 end;
 if length(s2)=0 then
 begin
 dem:=i; write(dem);
 break;
 end;
 end;
writeln(g,dem);
close(f); close(g);
readln
end.