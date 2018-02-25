entity fibo is
end fibo;

architecture combi of fibo is
     signal clk : bit;
     signal s : integer;
    begin
    
    clk <= not clk after 10 ns; 
    
    process(clk)
      variable ant : integer := 1;
      variable ant_ant : integer := 0;
      variable nuevo : integer;
     begin
       nuevo := ant + ant_ant;
       s<=nuevo;  
       ant_ant := ant;
       ant := nuevo ;
     end process;
   end;


architecture fibo_rtl of fibo is
     signal clk : bit := '0';
     signal s : integer := 0;
     signal ant: integer := 1;
     signal ant_ant:integer := 0;
    begin
    
    clk <= not clk after 10 ns;
    s <= (ant + ant_ant) When clk'event;
    ant_ant<= ant  When clk'event;
    ant <=(ant + ant_ant) When clk'event;
   end;