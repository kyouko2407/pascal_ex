
 
function pow(x,n : integer) : integer;
var
    t : integer;
begin
    if n=0 then pow := 1
    else
    begin
        t := pow(x,n div 2);
        if n mod 2 = 0 then pow := t * t mod 29
        else pow := t * t * x mod 29;
    end;
end;

var
    r, x : integer;
 
begin
    while true do
    begin
        read(x);
        if x=0 then break;
        r := 1;
        r := r * (28 + pow(3,x+1)) * pow(2, 27) mod 29;
        writeln(r); 
        r := r * (28 + pow(167,x+1)) * pow( 166, 27) mod 29;
        writeln(r); 
        r := r * (28 + pow(2,2*x+1)) mod 29;
        writeln(r);        
    end;
end.
