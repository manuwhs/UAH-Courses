-- Entidad que usa el sumador elemental y le da valores a las entradas
-- para testearlo
entity sum_elemental_1_test is end;

 architecture test of sum_elemental_1_test is
 --Señales que usaremos como entradas y salidas
  signal a,b,cin :bit := '0';
  signal s, cout :bit := '0';

   begin

    ss1: entity work.sum_elemental generic map (5 ns) port map (a,b,cin,s,cout);

process 
begin 
a<= '1'; b<= '0'; cin <= '0';
wait for 50 ns;
a<= '0'; b<= '1';
wait for 50 ns;
cin <= '1';
wait;
end process;
end;

