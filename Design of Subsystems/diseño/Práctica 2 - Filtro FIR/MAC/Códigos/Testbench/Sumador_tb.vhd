-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY Sumador_tb IS
  END Sumador_tb;

  ARCHITECTURE behavior OF Sumador_tb IS 

  -- Component Declaration
COMPONENT Sumador
  PORT (
    a : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(37 DOWNTO 0)
  );
END COMPONENT;
-- Señales
    signal a : STD_LOGIC_VECTOR(35 DOWNTO 0):= (others => '0');
    signal b :  STD_LOGIC_VECTOR(37 DOWNTO 0):= (others => '0');
    signal clk :  STD_LOGIC;
    signal ce : STD_LOGIC;
    signal sclr : STD_LOGIC;
    signal s : STD_LOGIC_VECTOR(37 DOWNTO 0);
	 
   constant clk_period : time := 10 ns;
 


 BEGIN

  -- Component Instantiation
your_instanname : Sumador
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    sclr => sclr,
    s => s
  );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
     ce <= '1';
	  sclr <= '1';
        wait for 103 ns; -- wait until global set/reset completes
	  sclr <= '0';
	  wait for 10 ns;
	  a <=x"000000001";--1
	  b <="00"&x"000000005";--5
	  wait for 10 ns;
	  a <=x"00000000A";--10
	  b <="00"&x"000000032";--50
	  wait for 10 ns;
	  a <=x"000000064";--100
	  b <="00"&x"0000001F4";--500
	  wait for 10 ns;
	  a <=x"0000003E8";--1000
	  b <="00"&x"000001388";--5000
		wait for 10 ns;
	  a <=x"000001388";--10000
	  b <="00"&x"00000C350";--50000
		wait for 10 ns;
	  a <=x"000008001";--100000
     b <="00"&x"00007A120";--500000
	  
	  ce <= '0';
	  wait for 10 ns;
	  a <=x"000000001";--1
	  b <="00"&x"000000005";--5
	  wait for 10 ns;
	  a <=x"00000000A";--10
	  b <="00"&x"000000032";--50
	  wait for 10 ns;
	  
	  ce <='1';
	  a <=x"000000064";--100
	  b <="00"&x"0000001F4";--500
	  wait for 10 ns;
	  -- RESTAS
	  a <=x"FFFFFFF9C";-- -100
	  b <="00"&x"0000003E8";-- 1000
		wait for 10 ns;
	  a <=x"FFFFFFC18";-- -1000
	  b <="00"&x"000001388";--10000
	  sclr <='1';
		wait for 10 ns;
	  a <=x"FFFFFD8F0";-- -10000
     b <="00"&x"000008001";--100000
	  
	  
	  
	  
        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
