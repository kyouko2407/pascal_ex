var string_1, number_text: string;
    tep: text;
    i: byte;
begin
    number_text := '';
    assign(tep, 'tep_chu_so.txt');rewrite(tep);
    write('Nhap chuoi S: ');readln(string_1);
    for i:= 1 to length(string_1) do 
        if (48 <= ord(string_1[i])) and (ord(string_1[i]) <= 57) then number_text := number_text + string_1[i];
    writeln(number_text);
    write(tep,number_text);
    close(tep);
    readln
end.

