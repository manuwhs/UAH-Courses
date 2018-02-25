entity sumador_csk_Nbits_tb is 
end;

architecture tst of sumador_csk_Nbits_tb is
signal a,b,s: bit_vector(15 downto 0):= x"0000";
signal cin,cout : bit := '0';

begin

sumador: entity work.sumador_csk_Nbits generic map (16,2 ns) 
             port map (a,b,cin,s,cout);
process
begin
a<=x"0000"; b<=x"0000"; cin <='0';
wait for 10 ns + 2 ns*(2*16+1);

a<=x"FFFE"; b<=x"0000"; cin <='1';
wait for 10 ns + 2 ns*(2*16+1);
b<=x"0001";
wait for 10 ns + 2 ns*(2*16+1);
end process;
end;
