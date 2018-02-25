--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:52:03 11/08/2012
-- Design Name:   
-- Module Name:   F:/Top_System/Top_Systmem_tb.vhd
-- Project Name:  Top_System
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top_Systmem
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
 
ENTITY Top_Systmem_tb IS
END Top_Systmem_tb;
 
ARCHITECTURE behavior OF Top_Systmem_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Systmem
    PORT(
         CLK1 : IN  std_logic;
         DIO_SW : IN  std_logic_vector(1 downto 1);
         DIO_BTN : IN  std_logic_vector(2 downto 1);
         DIO_LED : OUT  std_logic_vector(8 downto 1)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK1 : std_logic := '0';
   signal DIO_SW : std_logic_vector(1 downto 1) := (others => '0');
   signal DIO_BTN : std_logic_vector(2 downto 1) := (others => '0');

 	--Outputs
   signal DIO_LED : std_logic_vector(8 downto 1);

   -- Clock period definitions
   constant CLK1_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Systmem PORT MAP (
          CLK1 => CLK1,
          DIO_SW => DIO_SW,
          DIO_BTN => DIO_BTN,
          DIO_LED => DIO_LED
        );

   -- Clock process definitions
   CLK1_process :process
   begin
		CLK1 <= '0';
		wait for CLK1_period/2;
		CLK1 <= '1';
		wait for CLK1_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      DIO_BTN(1) <= '0';  -- reset pulsado
		DIO_BTN(2) <= '1';  -- pulso no pulsado
		DIO_SW(1) <='1';
      wait for 100 ns;
		DIO_BTN(1) <= '1';  -- adios reset
      wait for 100 ns;

      -- insert stimulus here 
	       --pulsamos
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '0';    -- Valor estable de DIO_BTN(2) 
		                 -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		
	   wait for 15*clk1_period ;	-- Soltamos el boton
		
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '1';    -- Valor estable de DIO_BTN(2) 
		                 -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida	
	
	wait for 30*clk1_period ;	-- Pulsamos de nuevo
			
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '0';    -- Valor estable de DIO_BTN(2) 
		                 -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		
	   wait for 15*clk1_period ;	-- Soltamos el boton
		
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 2*clk1_period ;
		DIO_BTN(2) <= '1';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '0';   -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida
		wait for 1*clk1_period ;
		DIO_BTN(2) <= '1';    -- Valor estable de DIO_BTN(2) 
		                 -- El contador_del_rebote se inicializa y se tarda 11 ciclos en que afecte a salida	
		
		
		
		
      wait;
   end process;

END;
