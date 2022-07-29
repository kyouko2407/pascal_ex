function tinh_x_mu_n(x, n:longint):longint;
var sol: longint;
begin
    if n = 0 then tinh_x_mu_n := 1 
    else
        begin    
            sol := tinh_x_mu_n(x,n div 2);      // gán kết quả bằng x^(n/2)
            if n mod 2 = 0 then tinh_x_mu_n := sol * sol mod 29 //Nếu n chẵn thì bình phương thành x^n rồi mod 29
            else tinh_x_mu_n := sol * sol * x mod 29; //Tương tự với n lẻ 
        end;
end;
var x,solution,s_2,s_3,s_167: longint;
{
    ta có thể biểu diễn 1 số có dạng A^x thành tích các số nguyên tố N = (a^x)*(b^x)^(c^x)
    tổng các ước của 1 số: S  = (1 + a + a^2 + ... + a^n)*(1 + b + ... + b^n)* ... với a, b ... là các ước nguyên tố
    ta chứng minh được S = (a^(n+1) - 1)/(a-1)*...... (link chứng minh: https://olm.vn/hoi-dap/detail/8192990261.html)
    bài toán chuyển thành tính S mod 29. Sử dụng công thức nhân phân phối đồng dư (a*b) mod c = ((a mod c)*(b mod c)) mod c 
    Ta thấy các nhân tử của (a^(n+1) - 1)/(a-1) có dạng x/y nên ta sẽ tính dạng x/y mod c
    x/y mod c = x*(y^(-1)) mod 29 = ((x mod 29) * (y^(-1) mod 29)) mod 29 => y^(-1) là nghịch đảo modulo của y
    sử dụng định lý fermat nhỏ (link: https://viblo.asia/p/so-hoc-dong-du-Az45b0aqZxY, phần 2.2. Tính nghịch đảo modulo bằng định lý Fermat nhỏ)
}
begin
    readln(x);
    solution := 1;
    s_3 := (((tinh_x_mu_n(3,x+1) - 1) mod 29) * (tinh_x_mu_n(2,27) mod 29)) mod 29;
    s_167 := (((tinh_x_mu_n(167,x+1) - 1) mod 29) * (tinh_x_mu_n(166,27) mod 29)) mod 29;
    s_2 := ((tinh_x_mu_n(2,2*x+1) - 1) mod 29 * tinh_x_mu_n(1,27) mod 29) mod 29;
    solution := (s_2)*(s_3)*(s_167) mod 29;
    writeln(solution);
    readln
    
end.