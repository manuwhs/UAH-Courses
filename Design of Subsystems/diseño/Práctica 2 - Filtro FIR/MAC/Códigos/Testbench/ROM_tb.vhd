-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration

COMPONENT ROM_16bits_coef
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

--Señales
   signal clka : STD_LOGIC;
   signal ena : STD_LOGIC := '0';
   signal clk_period : time := 10 ns;
   signal addra : STD_LOGIC_VECTOR(4 DOWNTO 0) :=(others => '0');
   signal douta : STD_LOGIC_VECTOR(15 DOWNTO 0);


  BEGIN

  -- Component Instantiation
    ROM_inst: ROM_16bits_coef
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
  --  Test Bench Statements
  
  clk_process :process
   begin
		clka <= '0';
		wait for clk_period/2;
		clka <= '1';
		wait for clk_period/2;
   end process;
  

     tb : PROCESS
     BEGIN
       ena <= '0';
		 addra <= "00000";
        wait for 	20 ns; -- wait until global set/reset completes
     ena <= '1';
        -- Add user defined stimulus here
         wait for 10 ns; -- wait until global set/reset completes
			addra <="00001";
			wait for 10 ns; -- wait until global set/reset completes
			addra <="00010";
			wait for 10 ns; -- wait until global set/reset completes
			addra <="00011";
			wait for 10 ns; -- wait until global set/reset completes
			addra <="00000";
			wait for 10 ns;
			ena <= '0';
			
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
