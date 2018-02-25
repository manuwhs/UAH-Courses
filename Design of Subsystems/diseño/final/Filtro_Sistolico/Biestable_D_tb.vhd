--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:02:54 12/05/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/Filtro_FIR_Sistologico/bloq.vhd
-- Project Name:  Filtro_FIR_Sistologico
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: biestable_D
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
 
ENTITY bloq IS
END bloq;
 
ARCHITECTURE behavior OF bloq IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT biestable_D
    PORT(
         clk : IN  std_logic;
         clk_en : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clk_en : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant clk_en_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: biestable_D PORT MAP (
          clk => clk,
          clk_en => clk_en,
          D => D,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	D<= '0';
   clk_en <= '0';
   wait for 100 ns;	
   clk_en <= '1';
	
	wait for 10 ns;
   D <= '1';
	wait for 10 ns;	
	D <= '0';
		wait for 10 ns;
   D <= '1';
	wait for 10 ns;	
	D <= '0';
		wait for 10 ns;
   D <= '1';
	wait for 10 ns;	
	D <= '0';
		wait for 10 ns;
   D <= '1';
	wait for 10 ns;	
	D <= '0';
	
      -- insert stimulus here 

      wait;
   end process;

END;
