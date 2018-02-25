--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:05:16 11/16/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/Filtro_FIR_MAC/Multiplicador_tb.vhd
-- Project Name:  Filtro_FIR_MAC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplicador
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
 
ENTITY Multiplicador_tb IS
END Multiplicador_tb;
 
ARCHITECTURE behavior OF Multiplicador_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplicador
    PORT(
         clk : IN  std_logic;
         a : IN  std_logic_vector(17 downto 0);
         b : IN  std_logic_vector(17 downto 0);
         ce : IN  std_logic;
         p : OUT  std_logic_vector(35 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal a : std_logic_vector(17 downto 0) := (others => '0');
   signal b : std_logic_vector(17 downto 0) := (others => '0');
   signal ce : std_logic := '0';

 	--Outputs
   signal p : std_logic_vector(35 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
your_instance_name : Multiplicador
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    p => p
  );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	
	
	
   stim_proc: process
	
   begin		 
	ce <= '0';
	 a <= "000000100000000010";
	 b <= "000000000000000010";
  wait for 15 ns;
    wait for 10 ns;	
    a <= "000000000000000100";
	 b <= "000000010000000100";
    wait for 20 ns;
    a <= "000000000000000010";
	 b <= "000000000100000010";
	 ce<= '1';
	 wait for 20 ns;
    a <= "100000000000000110";
	 b <= "000100000000000011";
	 wait for 10 ns;
    a <= "000000000000000111";
	 b <= "000000001000000010";
	 
	 wait for 10 ns;
    a <= "100000000000000111";
	 b <= "100000000001000010";

	 wait for 10 ns;
    a <= "000000000000000111";
	 b <= "000000001000000010";
	 
	 wait for 10 ns;
    a <= "100000000000000111";
	 b <= "000000001010100010";
	 
	 wait for 10 ns;
    a <= "000000000000000111";
	 b <= "100000000000000010";
    ce <= '0';
	 wait for 10 ns;
    a <= "000000000010000111";
	 b <= "100000001000000010";
	 
	 wait for 10 ns;
    a <= "100000000000000111";
	 b <= "000000001010100010";
ce <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
