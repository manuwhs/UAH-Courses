entity sumador_csk_Nbits is 
generic (n: integer := 16; t_1puerta : time := 2 ns);
port (a: IN bit_vector (N-1 downto 0);
       b: IN bit_vector (N-1 downto 0);
       cin: In bit; --Acarreo
       s: OUT  bit_vector (N-1 downto 0);
       cout: OUT bit);     --Acarreo salida
   end;
  
architecture sumador_csk of sumador_csk_Nbits is
signal ci: bit_vector(N downto 0);
signal aux : bit_vector(N downto 0);
signal p, and_skip : bit;

begin
ci(0) <= cin;
aux(0)<= '1';
gen: for i in 0 to N-1 generate
 add1: entity work.sum_elemental generic map (t_1puerta) 
             port map (a(i),b(i),ci(i),s(i),ci(i+1));
aux(i+1) <= (a(i) or b(i)) and aux(i);       --Acumulador pi
end generate;
p<=aux(n) after 2 * t_1puerta     ; -- or y and fan-in ilimitado 
and_skip<= p and cin after t_1puerta;
cout <= ci(N) or and_skip after t_1puerta;
end;

