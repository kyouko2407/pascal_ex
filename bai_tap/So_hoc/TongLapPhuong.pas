var a,b,c,i,n: integer;
begin
        for i := 100 to 999 do
               begin
               n := i;
         a := n mod 10;
         n := n div 10;
         b := n mod 10;
         n := n div 10;
         c := n;
         if (a*a*a + b*b*b + c*c*c) = i then writeln(i);
         end;
        readln
end.



