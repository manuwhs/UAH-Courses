
entity sumprop3_1_test is end;   --Creamos entidad de sumador propagador de 3 bits
                          --utilizando 3 entidades sum_elemental

 architecture tst of sumprop3_1_test is
 -- Senales que usaremos para nombrar las entradas y salidas
 
  signal a,b,s :bit_vector (2 downto 0) := "000";  --Entradas, salidas y acarreos
  signal cin, cout :bit := '0';   --Acarreo de entrada y salida del sumprop3

begin
ss1: entity work.sumprop3 generic map (5 ns) port map (a,b,cin,s,cout);

process begin
 a<=o"5"; b <=o"2"; cin <= '0';
 wait for 50 ns;
  a<=o"0"; b <=o"0"; cin <= '0';
 wait for 50 ns;
  a<=o"5"; b <=o"2"; cin <= '1';
 wait for 50 ns;
  a<=o"0"; b <=o"7";
 wait for 50 ns;
 cin <= not cin;
end process;
end;

