--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:57 12/09/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/sdf/Filtro_fir_s_tb.vhd
-- Project Name:  sdf
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Filtro_FIR_Sistologico
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
 
ENTITY Filtro_fir_s_tb IS
END Filtro_fir_s_tb;
 
ARCHITECTURE behavior OF Filtro_fir_s_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Filtro_FIR_Sistologico
    PORT(
         datain : IN  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         datain_valid : IN  std_logic;
         dataout : OUT  std_logic_vector(15 downto 0);
         dataout_valid : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal datain : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal datain_valid : std_logic := '0';

 	--Outputs
   signal dataout : std_logic_vector(15 downto 0);
   signal dataout_valid : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Filtro_FIR_Sistologico PORT MAP (
          datain => datain,
          clk => clk,
          rst => rst,
          datain_valid => datain_valid,
          dataout => dataout,
          dataout_valid => dataout_valid
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
