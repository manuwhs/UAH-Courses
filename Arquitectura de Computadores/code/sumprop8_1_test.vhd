-- Entidad que usa el sumprop8 y le da valores a las entradas
-- para testearlo
entity sumprop8_1_test is end;

 architecture test of sumprop8_1_test is
  signal a,b,s :bit_vector (7 downto 0) := "00000000";  --Entradas, salidas 
  signal cin, cout :bit := '0';   --Acarreo de entrada y salida del sumprop8
   begin

    ss1: entity work.sumprop8 generic map (5 ns) port map (a,b,cin,s,cout);

process 
begin 
a<= "00000000"; b <= "11111110"; cin <= '1';
wait for 100 ns;
a<= "00000001";
wait for 100 ns;
end process;
end;

