--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:30:41 11/16/2012
-- Design Name:   
-- Module Name:   C:/Users/manuel/Desktop/final/Filtro_FIR_MAC/Filtro_FIR_MAC_tb.vhd
-- Project Name:  Filtro_FIR_MAC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Filtro_FIR_MAC
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
 
ENTITY Filtro_FIR_MAC_tb2 IS
END Filtro_FIR_MAC_tb2;
 
ARCHITECTURE behavior OF Filtro_FIR_MAC_tb2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Filtro_FIR_MAC
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
   uut: Filtro_FIR_MAC PORT MAP (
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
     rst <='0';
      wait for 105 ns;	
     rst <='1';
      wait for clk_period*10;
		
 datain <= x"0005";  -- 5
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"000A"; -- 10
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"000F";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0014";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	
		  
 datain <= x"0019";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"001E";   --30 
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"0019";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0014";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;			  

datain <= x"000F";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"000A";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0005";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;	
		
 datain <= x"0000";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"FFFB"; -- -5
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFF6"; -- -10
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	
		  
 datain <= x"FFF1";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFEC";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"FFE7";  
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFE2"; -- -30
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	

 datain <= x"FFE7";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFEC";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"FFF1";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFF6";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	
		  
 datain <= x"FFFB";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0000";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
	

 datain <= x"0005";  -- 5
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"000A"; -- 10
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"000F";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0014";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	
		  
 datain <= x"0019";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"001E";   --30 
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"0019";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0014";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;			  

datain <= x"000F";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"000A";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0005";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;	
		
 datain <= x"0000";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"FFFB"; -- -5
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFF6"; -- -10
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	
		  
 datain <= x"FFF1";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFEC";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"FFE7";  
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFE2"; -- -30
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	

 datain <= x"FFE7";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFEC";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;
		  
 datain <= x"FFF1";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"FFF6";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	
		  
 datain <= x"FFFB";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
      wait for 330 ns;
		
 datain <= x"0000";
	wait for 10 ns;
	datain_valid <= '1';
	wait for 10 ns;
	datain_valid <= '0';
	     wait for 330 ns;	
		  
		  
		  
		  
		  wait;
		  
   end process;

END;
