entity fibo2 is
port( clk:IN bit;
      termino : OUT integer );
end fibo2;


architecture rtl of fibo2 is

     signal s, ant : integer := 0;
     signal ant_ant:integer := 1;
    begin
    
    ant_ant <= ant  When clk'event else unaffected;
    ant <= s when clk'event;
    s <= ant + ant_ant;
    termino <= s;

   end rtl;




entity fibo2_tst is   -- Nueva entidad que usa la entidad fibo2 para
end fibo2_tst;        -- testearla dandole valores a las entradas

architecture tst of fibo2_tst is
signal clk: bit :='1';
signal term: integer := 0;
begin

e: entity work.fibo2 port map (clk, term);

process
begin
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;
clk <= '0'; wait for 10 ns;
clk <= '1'; wait for 10 ns;

wait;
end process;
end;

