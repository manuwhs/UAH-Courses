
entity sumador_csk_rca_16 is 
generic ( t_1puerta : time := 2 ns);
port (a: IN bit_vector (15 downto 0);
       b: IN bit_vector (15 downto 0);
       cin: In bit; --Acarreo
       s: OUT  bit_vector (15 downto 0);
       cout: OUT bit);     --Acarreo salida
   end;


architecture sumador of sumador_csk_rca_16 is

signal ci: bit_vector(4 downto 0);

begin
ci(0)<=cin;
sumador1: entity work.sumador_rca_Nbits generic map (4, t_1puerta) 
             port map (a(3 downto 0 ), b(3 downto 0 ),ci(0),s(3 downto 0 ),ci(1));
sumador2: entity work.sumador_csk_Nbits generic map (4, t_1puerta) 
             port map (a(7 downto 4 ),b(7 downto 4 ),ci(1),s(7 downto 4 ),ci(2));
sumador3: entity work.sumador_csk_Nbits generic map (4, t_1puerta) 
             port map (a(11 downto 8 ),b(11 downto 8 ),ci(2),s(11 downto 8 ),ci(3));
sumador4: entity work.sumador_rca_Nbits generic map (4, t_1puerta) 
             port map (a(15 downto 11 ),b(15 downto 11 ),ci(3),s(15 downto 11 ),ci(4));

cout<=ci(4);
end;

