-- Entidad simula sumprop8_2
entity sumprop8_2_test is end;

 architecture test of sumprop8_2_test is
  signal a,b,s,ci :bit_vector (7 downto 0) := "00000000";  --Entradas, salidas 
  signal cin, cout :bit := '0';   --Acarreo de entrada y salida del sumprop8

  
   begin
 ci(0) <= cin;  -- cin es mas visual a la hora de hacer represencaciones que ci(0)
                --cin es el acarreo de entrada al sumprop8
  -- Instanciamos los 8 sumadores y hacemos las conexiones entre ellos
ss0 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(0),b(0),ci(0),s(0),ci(1));
ss1 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(1),b(1),ci(1),s(1),ci(2));
ss2 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(2),b(2),ci(2),s(2),ci(3));
ss3 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(3),b(3),ci(3),s(3),ci(4));
ss4 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(4),b(4),ci(4),s(4),ci(5));
ss5 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(5),b(5),ci(5),s(5),ci(6));
ss6 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(6),b(6),ci(6),s(6),ci(7));
ss7 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(7),b(7),ci(7),s(7),cout);

process 
begin 
a<= "00000000"; b <= "11111110"; cin <= '1';
wait for 100 ns;
a<= "00000001";
wait for 100 ns;
end process;
end;

