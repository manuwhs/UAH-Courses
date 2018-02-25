----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:47:57 11/05/2012 
-- Design Name: 
-- Module Name:    Top_Systmem - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

--IMPORTANTE !!!!!
-- Hemos hecho todos nuestros componentes con reset a nivel alto
-- La DCM tambien tiene reset a nivel alto
-- Los botones de la placa si no los pulsas estan a nivel alto y cuando lo haces
-- a nivel bajo, por lo que invertimos el rst k nos llega de la placa
-- Hacemos lo mismo con el boton del lapso




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_ARITH.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

----------------------------------------------------------------------------------

entity Top_Systmem is
    Port ( CLK1 : in  STD_LOGIC;
           DIO_SW : in  STD_LOGIC_VECTOR (1 downto 1);
           DIO_BTN : in  STD_LOGIC_VECTOR (2 downto 1);
           DIO_LED : out  STD_LOGIC_VECTOR (8 downto 1));
end Top_Systmem;


architecture Behavioral of Top_Systmem is

-- SEÑALES AUXILIARES --
signal salida_cont: std_logic_vector(5 downto 0);
signal enable_cnt : std_logic;
signal mclk	: std_logic;	-- Señal de reloj de salida del DCM que irá a los demas componentes
signal rst	: std_logic;	-- Señal de reset posterior al IBUFG
signal rst_FPGA :std_logic;
signal lapso_bueno :std_logic;
-- DECLARACIONES DE LOS COMPONENTES --

	-- counter_model --	
	    COMPONENT counter_model
    PORT(
         clk : IN  std_logic;
         clk_en : IN  std_logic;
         rst : IN  std_logic;
         lapso : IN  std_logic;
         up_down : IN  std_logic;
         q : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;

		-- bin2bcd --
    COMPONENT bin2bcd
    PORT(
         BIN : IN  std_logic_vector(5 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         BCD_uni : OUT  std_logic_vector(3 downto 0);
         BCD_dec : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
			
		-- Prescaler100to1 --
	COMPONENT Prescaler100to1
	PORT (
		 clk : IN STD_LOGIC;
		 sclr : IN STD_LOGIC;
		 thresh0 : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(26 DOWNTO 0)
		);
	END COMPONENT;
		
		-- DCM --
	component DCM
	port (
		-- Clock in ports
		CLK_IN1           : in     std_logic;
		-- Clock out ports
		CLK_OUT1          : out    std_logic;
		-- Status and control signals
		RESET             : in     std_logic;
		LOCKED            : out    std_logic
		);
	end component;
	 

begin
rst<=not rst_FPGA;
lapso_bueno <= not DIO_BTN(2);

-- INSTANCIACIONES DE LOS COMPONENTES --

	-- counter_model --
counter_inst: counter_model PORT MAP (
          clk => mclk,
          clk_en => enable_cnt,
          rst => rst,
          lapso => lapso_bueno,
          up_down => DIO_SW(1),
          q => salida_cont
        );
		  
	-- bin2bcd --
bin2bcd_inst: bin2bcd PORT MAP (
          BIN => salida_cont,
          rst => rst,
          clk => mclk,
          BCD_uni => DIO_LED(4 downto 1),
          BCD_dec => DIO_LED(8 downto 5)
        );

	-- Prescaler100to1 --
precaler_inst : Prescaler100to1 PORT MAP (
			clk => mclk,
			sclr => rst,
			thresh0 => enable_cnt,
			q => open
		 );
		 
	-- DCM --
DCM_inst : DCM port map   (
			-- Clock in ports
			CLK_IN1 => CLK1,
			-- Clock out ports
			CLK_OUT1 => mclk,
			-- Status and control signals
			RESET  => rst,
			LOCKED => open
		 );
		 
	-- IBUFG --
IBUFG_inst : IBUFG   generic map (
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "DEFAULT")
   port map (
      O => rst_FPGA, -- Clock buffer output
      I => DIO_BTN(1)  -- Clock buffer input (connect directly to top-level port)
   );

	
end Behavioral;


