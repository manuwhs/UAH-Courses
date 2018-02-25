--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:32:20 11/04/2012
-- Design Name:   
-- Module Name:   Z:/ejercicios/filtrofir01/filtrofir_tb.vhd
-- Project Name:  filtrofir01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: filtrofir
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
use IEEE.STD_LOGIC_ARITH.ALL;

use std.textio.all;
 
ENTITY filtrofir_tb IS
END filtrofir_tb;
 
ARCHITECTURE behavior OF filtrofir_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Filtro_FIR_MAC 
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         datain_valid : IN  std_logic;
         datain : IN  std_logic_vector(15 downto 0);
         dataout_valid : OUT  std_logic;
         dataout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal datain_valid : std_logic := '0';
   signal datain : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal dataout_valid : std_logic;
   signal dataout,dataoutsim : std_logic_vector(15 downto 0);
	signal odata : integer;  -- indica el numero de datos de salida que se han obtenido
		
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Filtro_FIR_MAC  PORT MAP (
          clk => clk,
          rst => rst,
          datain_valid => datain_valid,
          datain => datain,
          dataout_valid => dataout_valid,
          dataout => dataout
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
	
		variable datain_line:line;
		variable aux,ndata : integer;
		file datain_file :text open read_mode  is "datain.txt";	
	
   begin		
      -- hold reset state for 100 ns.
		rst <= '0';
      wait for 100 ns;	
		rst <= '1';
      wait for clk_period*10;

      -- insert stimulus here 
		ndata :=0 ; -- numero de datos introducidos
		while not endfile(datain_file)
		loop        
			readline(datain_file,datain_line);
			read(datain_line,aux);
			datain <= conv_std_logic_vector(aux,datain'length);
			datain_valid <='1';
			ndata := ndata +1; -- un dato de entrada nuevo
			wait for clk_period;
			datain_valid <='0';
			wait for clk_period*40;								
		end loop;	

		while ndata > odata
		loop
			wait for clk_period;				
		end loop;				
					 
		file_close(datain_file);
	
		assert FALSE report "Finalizacion controlada de la sinulacion"
		severity failure;   

      wait;
   end process;



   -- salidas process
   salidas_proc: process
		variable dataout_line:line;
		variable aux,auxsim:integer;
		variable conta:integer:=0;
		file dataout_file:text open write_mode is "dataout.txt";
		file dataoutsim_file:text open read_mode is "dataout_sim.txt";

   begin		

		odata <=0 ; -- numero de datos introducidos
		
		loop  -- bucle infinito de recogida de datos de salida      
			if dataout_valid='1' then
				aux := conv_integer(signed(dataout));
				write (dataout_line,aux);
				writeline(dataout_file,dataout_line);
				odata <=odata+1;
				

			end if;
			
			wait for clk_period;
										
		end loop;	

	
   end process;


END;
