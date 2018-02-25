--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:01:09 11/15/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/Filtro_FIR_MAC/Acumulador_tb.vhd
-- Project Name:  Filtro_FIR_MAC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Acumulador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Acumulador_tb IS
END Acumulador_tb;
 
ARCHITECTURE behavior OF Acumulador_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Acumulador
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         CE : IN  std_logic;
         Sumando : IN  std_logic_vector(35 downto 0);
         Resultado : OUT  std_logic_vector(15 downto 0);
			datain_valid : in STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal CE : std_logic := '0';
	signal datain_valid : std_logic := '0';
   signal Sumando : std_logic_vector(35 downto 0) := (others => '0');

 	--Outputs
   signal Resultado : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Acumulador PORT MAP (
          clk => clk,
          rst => rst,
          CE => CE,
          Sumando => Sumando,
          Resultado => Resultado,
			 datain_valid => datain_valid
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk<= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;



   -- Stimulus process
   stim_proc: process
   begin		
	CE<= '1'; -- Hacer rst con CE a 1 por alguna razon
	rst <= '1';
	wait for 135 ns;	
   rst <= '0';
	wait for 10 ns;
	
	Sumando <= x"0_0000_0001";
   wait for 10 ns;
	Sumando <= x"0_0000_0010";
   wait for 10 ns;
	Sumando <= x"0_0000_0100";
	wait for 10 ns;	
	Sumando <= x"0_0000_1000";
	wait for 10 ns;
   Sumando <= x"0_0001_0000";
   wait for 10 ns;	
	Sumando <= x"0_0010_0000";
	wait for 10 ns;	
	Sumando <= x"0_0100_0000";
	wait for 10 ns;
	Sumando <= x"0_0001_0000";
   wait for 10 ns;	
	Sumando <= x"0_0010_0000";
	wait for 30 ns;
	
	rst <= '1';
   wait for 10 ns;
   rst <= '0';
  
	Sumando <= x"0_0010_0000";
	wait for 10 ns;
   Sumando <= x"0_0001_0000";
   wait for 10 ns;	
	Sumando <= x"0_0010_0000";
   wait for 10 ns;	
	Sumando <= x"0_0100_0000";	
	wait for 10 ns;	
	Sumando <= x"0_0010_0000";
	wait for 10 ns;
   Sumando <= x"0_0001_0000";
	
	ce <= '0';
   wait for 10 ns;	
	Sumando <= x"0_0010_0000";
	wait for 10 ns;	
	Sumando <= x"0_0100_0000";	
	
	datain_valid <= '1';
	wait for 50 ns;	
	datain_valid <= '0';
	ce <= '1';
	wait for 10 ns; 
	
	Sumando <= x"0_0010_0000";
	wait for 10 ns;
   Sumando <= x"0_0001_0000";
   wait for 10 ns;	
	Sumando <= x"0_0010_0000";
   wait for 10 ns;	
	Sumando <= x"0_0100_0000";	
	wait for 10 ns;	
	Sumando <= x"0_1000_0000";
	wait for 10 ns;
   Sumando <= x"0_0001_0000";
   wait for 10 ns;	
	Sumando <= x"0_0010_0000";
	ce <= '0';
	wait for 10 ns;	
	Sumando <= x"0_1000_0000";	
  
      -- insert stimulus here 

      wait;
   end process;

END;
