--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:41:18 11/15/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/Filtro_FIR_MAC/FSM_Control_tb.vhd
-- Project Name:  Filtro_FIR_MAC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM_Control
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
 
ENTITY FSM_Control_tb IS
END FSM_Control_tb;
 
ARCHITECTURE behavior OF FSM_Control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM_Control
    PORT(
         datain_valid : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         dataout_valid : OUT  std_logic;
         Addr : OUT  std_logic_vector(4 downto 0);
         CE_ROM : OUT  std_logic;
			CE_reg : OUT  std_logic;
         CE_Mult : OUT  std_logic;
         CE_Acum : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal datain_valid : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal dataout_valid : std_logic;
   signal Addr : std_logic_vector(4 downto 0);
   signal CE_ROM : std_logic;
   signal CE_Mult : std_logic;
	signal CE_reg : std_logic;
   signal CE_Acum : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
  opera: FSM_Control PORT MAP (
          datain_valid => datain_valid,
          clk => clk,
          rst => rst,
          dataout_valid => dataout_valid,
          Addr => Addr,
          CE_ROM => CE_ROM,
			 CE_reg => CE_reg,
          CE_Mult => CE_Mult,
          CE_Acum => CE_Acum
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
     rst <= '1';
      wait for 100 ns;	
     rst <= '0';
      wait for clk_period*10;
    datain_valid <= '1';
	 wait for 10 ns;
	 datain_valid <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
