--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:43:43 11/14/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/Filtro_FIR_MAC/Registro_datain_tb.vhd
-- Project Name:  Filtro_FIR_MAC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Registro_datain
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
 
ENTITY Registro_datain_tb IS
END Registro_datain_tb;
 
ARCHITECTURE behavior OF Registro_datain_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registro_datain
    PORT(
         addr : IN  std_logic_vector(4 downto 0);
         data_valid : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
			ce : IN  std_logic;
         data_in : IN  std_logic_vector(15 downto 0);
         Reg_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(4 downto 0) := (others => '0');
   signal data_valid : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
	signal ce : std_logic := '0';
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Reg_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   cosas: Registro_datain PORT MAP (
          addr => addr,
          data_valid => data_valid,
          clk => clk,
          rst => rst,
			 ce => ce,
          data_in => data_in,
          Reg_out => Reg_out
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
      -- hold reset state for 100 ns.
      wait for 105 ns;	
	rst <= '0';         --Quitamos el reset
	 wait for 50 ns;
	 
    data_in <= x"18D5";
	 ce <='1';
	 data_valid <= '1';
	 wait for 10 ns;	
	 data_valid <= '0';
	 wait for 30 ns;
	  ce <='0';
	  
	  wait for 30 ns;
	 ce <='1';
	 data_in <= x"2411";
	 data_valid <= '1';
	 wait for 10 ns;	
	 data_valid <= '0';
	 wait for 30 ns;
	   ce <='0';
		
		
    data_in <= x"1005";
	 ce <='1';
	 data_valid <= '1';
	 wait for 10 ns;	
	 data_valid <= '0';
	 wait for 30 ns;
	  ce <='0';
	  
	  wait for 30 ns;
	 ce <='1';
	 data_in <= x"0112";
	 data_valid <= '1';
	 wait for 10 ns;	
	 data_valid <= '0';
	 wait for 30 ns;
	   ce <='0';
		
	  
	  wait for 30 ns;
	  
	 
	 wait for 100 ns;
	 addr <="00010";
	 wait for 20 ns;
	 addr <="00001";
	  ce <='1';
	 wait for 10 ns;
	 addr <="00011";
	 
	 


      wait;
   end process;

END;
