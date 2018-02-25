--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:52:24 10/23/2012
-- Design Name:   
-- Module Name:   C:/Users/alumno/Documents/Marcos y Manuel/Bin2bcd/bin2bcd_tb.vhd
-- Project Name:  Bin2bcd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bin2bcd
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
 
ENTITY bin2bcd_tb IS
END bin2bcd_tb;
 
ARCHITECTURE behavior OF bin2bcd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bin2bcd
    PORT(
         Data_bin : IN  std_logic_vector(5 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         Unidades : OUT  std_logic_vector(3 downto 0);
         Decenas : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_bin : std_logic_vector(5 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Unidades : std_logic_vector(3 downto 0);
   signal Decenas : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bin2bcd PORT MAP (
          Data_bin => Data_bin,
          rst => rst,
          clk => clk,
          Unidades => Unidades,
          Decenas => Decenas
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
      -- hold reset state for 100 ns.
		rst<='1';
      wait for 100 ns;	
		rst<='0';
      wait for clk_period*10;
		
		wait until clk'event and clk='0';
		
		data_bin <="010000";
		wait for  clk_period*4;

		data_bin <="100000";
		wait for  clk_period*4;
		
		data_bin <="110000";
		wait for  clk_period*4;
		
		data_bin <="001000";
		wait for  clk_period*4;
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
