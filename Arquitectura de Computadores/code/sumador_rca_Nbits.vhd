entity sumador_rca_Nbits is 
generic (n: integer := 16; t_1puerta : time := 2 ns);
port (a: IN bit_vector (N-1 downto 0);
       b: IN bit_vector (N-1 downto 0);
       cin: In bit; --Acarreo
       s: OUT  bit_vector (N-1 downto 0);
       cout: OUT bit);     --Acarreo salida
   end;
   
architecture sumador_rca of sumador_rca_Nbits is
signal ci: bit_vector(N downto 0);

begin
ci(0) <= cin;
gen: for i in 0 to N-1 generate
 add1: entity work.sum_elemental generic map (t_1puerta) 
             port map (a(i),b(i),ci(i),s(i),ci(i+1));
end generate;

cout <= ci(N);
end;

