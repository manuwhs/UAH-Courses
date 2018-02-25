entity fibo3 is
generic (t_1puerta : time := 2 ns);
port( clk:IN bit;
      termino : OUT integer );
end fibo3;


architecture rtl of fibo3 is

     signal s, ant : integer := 0;
     signal ant_ant:integer := 1;
    begin
    
    ant_ant <= ant  When clk'event else unaffected;
    ant <= s when clk'event;
    s <= ant + ant_ant;
        termino <= s after t_1puerta;

   end rtl;




entity fibo3_tst is
end fibo3_tst; 

architecture tst of fibo3_tst is
signal clk: bit :='1';
signal term: integer := 0;
begin

e: entity work.fibo3 generic map (3 ns) port map (clk, term);

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

