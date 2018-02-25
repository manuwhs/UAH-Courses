
entity sumador_rca_32 is 
generic ( t_1puerta : time := 2 ns);
port (a: IN bit_vector (31 downto 0);
       b: IN bit_vector (31 downto 0);
       cin: In bit; --Acarreo
       s: OUT  bit_vector (31 downto 0);
       cout: OUT bit);     --Acarreo salida
   end;


architecture sumador of sumador_rca_32 is

signal ci: bit_vector(2 downto 0);

begin
ci(0)<=cin;
sumador1: entity work.sumador_rca_Nbits generic map (16, t_1puerta) 
             port map (a(15 downto 0 ), b(15 downto 0 ),ci(0),s(15 downto 0 ),ci(1));
sumador2: entity work.sumador_csk_Nbits generic map (16, t_1puerta) 
             port map (a(31 downto 16 ),b(31 downto 16 ),ci(1),s(31 downto 16 ),ci(2));

cout<=ci(2);
end;

