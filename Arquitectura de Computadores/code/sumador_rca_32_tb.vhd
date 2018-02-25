entity sumador_rca_32_tb is 
end;

architecture tst of sumador_rca_32_tb is
signal a,b,s: bit_vector(31 downto 0):= x"00000000";
signal cin,cout : bit := '0';

begin

sumador: entity work.sumador_rca_32 generic map (2 ns) 
             port map (a,b,cin,s,cout);
process
begin
a<=x"00000000"; b<=x"00000000"; cin <='0';
wait for 10 ns + 2 ns*(2*32+1);

a<=x"FFFFFFFE"; b<=x"00000000"; cin <='1';
wait for 10 ns + 2 ns*(2*32+1);
b<=x"00000001";
wait for 10 ns + 2 ns*(2*32+1);
end process;
end;

