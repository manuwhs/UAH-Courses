--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:01:27 12/03/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/Filtro_FIR_Sistologico/Bloque_tb.vhd
-- Project Name:  Filtro_FIR_Sistologico
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BLOQUE
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
 
ENTITY Bloque_tb IS
END Bloque_tb;
 
ARCHITECTURE behavior OF Bloque_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BLOQUE
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ce : IN  std_logic;      -- El Chip_Enable de la suma y multiplicacion
			clk_en : IN  std_logic;   -- El Clock_Enable del bloque(Conectado a datain_valid)
			datain_valid_prop : in  STD_LOGIC; -- Prapagacion del datain_valid
			dataout_valid_prop : out  STD_LOGIC; -- para llevarlo a la salida (dataout_valid)
         reg_datain_in : IN  std_logic_vector(15 downto 0);
         ROM_datain_in : IN  std_logic_vector(15 downto 0);
         reg_datain_out : OUT  std_logic_vector(15 downto 0);
         sumando_in : IN  std_logic_vector(36 downto 0);
         sumando_out : OUT  std_logic_vector(36 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	signal clk_en : std_logic := '0';
   signal rst : std_logic := '0';
   signal ce : std_logic := '0';
   signal reg_datain_in : std_logic_vector(15 downto 0) := (others => '0');
   signal ROM_datain_in : std_logic_vector(15 downto 0) := (others => '0');
   signal sumando_in : std_logic_vector(36 downto 0) := (others => '0');
	signal datain_valid: std_logic := '0';
 	--Outputs
   signal reg_datain_out : std_logic_vector(15 downto 0);
   signal sumando_out : std_logic_vector(36 downto 0);
	signal dataout_valid: std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uuts: BLOQUE PORT MAP (
          clk => clk,
          rst => rst,
          ce => ce,
      	 clk_en =>datain_valid,   -- El Clock_Enable del bloque(Conectado a datain_valid)
			 datain_valid_prop => datain_valid, -- Prapagacion del datain_valid
			 dataout_valid_prop=>  dataout_valid, -- para llevarlo a la salida (dataout_valid)
          reg_datain_in => reg_datain_in,
          ROM_datain_in => ROM_datain_in,
          reg_datain_out => reg_datain_out,
          sumando_in => sumando_in,
          sumando_out => sumando_out
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
		ROM_datain_in <= x"000A";
		rst <= '1';
		ce <= '1';
      wait for 100 ns;	
      rst <= '0';
		wait for 10 ns;
		
		datain_valid <= '1';
      clk_en <= '1';
		
      wait for clk_period;
		sumando_in <='0'&x"000000001";
		
      reg_datain_in <= x"0001";
      wait for clk_period;
		reg_datain_in <= x"0002";
		sumando_in <='0'&x"000000002";
      wait for clk_period;
		reg_datain_in <= x"0003";
		sumando_in <='0'&x"000000003";
      wait for clk_period;
		reg_datain_in <= x"0004";
		sumando_in <='0'&x"000000004";
      wait for clk_period;
	   reg_datain_in <= x"0005";
		sumando_in <='0'&x"000000005";
      wait for clk_period;
		reg_datain_in <= x"0006";
		sumando_in <='0'&x"000000006";
      wait for clk_period;
		reg_datain_in <= x"0007";
		sumando_in <='0'&x"000000007";
      wait for clk_period;
		reg_datain_in <= x"0008";
		sumando_in <='0'&x"000000008";
		wait for clk_period;
		
		datain_valid <='0';
		clk_en <= '0';
		
		reg_datain_in <= x"0009";
		sumando_in <='0'&x"000000009";
      wait for clk_period;
		reg_datain_in <= x"000A";
		sumando_in <='0'&x"00000000A";
      wait for clk_period;
		reg_datain_in <= x"000B";
		sumando_in <='0'&x"00000000B";
		wait for clk_period;
		
		datain_valid <='1';
      clk_en <= '1';
		
		sumando_in <='0'&x"000000001";
      reg_datain_in <= x"0001";
      wait for clk_period;
		reg_datain_in <= x"0002";
		sumando_in <='0'&x"000000002";
      wait for clk_period;
		reg_datain_in <= x"0003";
		sumando_in <='0'&x"000000003";
      wait for clk_period;
		reg_datain_in <= x"0004";
		sumando_in <='0'&x"000000004";
      wait for clk_period;
	   reg_datain_in <= x"0005";
		sumando_in <='0'&x"000000005";
      wait for clk_period;
		
	   
      -- insert stimulus here 

      wait;
   end process;

END;
