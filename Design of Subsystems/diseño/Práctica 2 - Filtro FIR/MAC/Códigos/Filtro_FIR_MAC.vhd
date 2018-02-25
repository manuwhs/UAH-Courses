----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:42 11/14/2012 
-- Design Name: 
-- Module Name:    Filtro_FIR_MAC - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all; --Para el unsigned
use IEEE.STD_logic_arith.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Filtro_FIR_MAC is
    Port ( datain : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           datain_valid : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (15 downto 0);
           dataout_valid : out  STD_LOGIC);
end Filtro_FIR_MAC;

architecture Behavioral of Filtro_FIR_MAC is
-- Señales Auxiliares 

signal clk_DCM : std_logic; -- - Señal de reloj de salida del DCM que irá a los demas componentes
signal rst_valido : std_logic; -- Ya que los botones si no los pulsas dan 1
signal Addr :std_logic_vector(4 downto 0);
signal Sumando :std_logic_vector (35 downto 0);
signal Reg_out :std_logic_vector (15 downto 0); -- Salida del registro de xn
signal douta :std_logic_vector (15 downto 0);   -- Salida de la ROM
signal CE_ROM :std_logic;
signal CE_reg : STD_LOGIC;
signal CE_Mult : std_logic;
signal CE_Acum : std_logic;
signal sumando_a,sumando_b :std_logic_vector (17 downto 0);   -- Salida de la ROM
-- DECLARACIONES DE LOS COMPONENTES --


-- Componentes
-- Acumulador
    COMPONENT Acumulador
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         CE : IN  std_logic;
         Sumando : IN  std_logic_vector(35 downto 0);
			datain_valid : in STD_LOGIC;
         Resultado : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

-- Registro

    COMPONENT Registro_datain
    PORT(
         addr : IN  std_logic_vector(4 downto 0);
         data_valid : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
			ce : in  STD_LOGIC;
         data_in : IN  std_logic_vector(15 downto 0);
         Reg_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

-- ROM
COMPONENT ROM_16bits_coef
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Multiplicador
COMPONENT Multiplicador
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;
-- FSM_Control
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
-- DCM    
component DCM_gen
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  -- Status and control signals
  RESET             : in     std_logic;
  LOCKED            : out    std_logic
 );
end component;



begin
sumando_a <= Reg_out(15)&Reg_out(15)&Reg_out;
sumando_b <= douta(15)&douta(15)&douta;

rst_valido <= not rst; -- Ya que los botones si no los pulsas dan 1
-- Instanciaciones:
-- Acumulador
Acumulador_inst: Acumulador PORT MAP (
          clk => clk_DCM,
          rst => rst_valido,
          CE => CE_Acum,
			 datain_valid => datain_valid,
          Sumando => Sumando,
          Resultado => dataout
        );

-- Registro
 Registro_inst: Registro_datain PORT MAP (
          addr => addr,
          data_valid => datain_valid,
          clk => clk_DCM,
          rst => rst_valido,
			 ce => CE_reg,
          data_in => datain,
          Reg_out => Reg_out
        );
-- ROM
ROM_inst: ROM_16bits_coef
  PORT MAP (
    clka => clk_DCM,
    ena => CE_ROM,
    addra => addr,
    douta => douta
  );
  
-- Multiplicador
Multiplicador_inst : Multiplicador
  PORT MAP (
    clk => clk_DCM,
    a => sumando_a,
    b => sumando_b,
    ce => CE_mult,
    p => Sumando
  );
  
-- FSM_Control
Control_inst: FSM_Control PORT MAP (
          datain_valid => datain_valid,
          clk => clk_DCM,
          rst => rst_valido,
          dataout_valid => dataout_valid,
          Addr => Addr,
          CE_ROM => CE_ROM,
			 CE_reg => CE_Reg,
          CE_Mult => CE_Mult,
          CE_Acum => CE_Acum
        );
 

-- DCM 
DCM_gen_inst: DCM_gen
  port map
   (-- Clock in ports
    CLK_IN1 => clk,
    -- Clock out ports
    CLK_OUT1 => CLK_DCM,
    -- Status and control signals
    RESET  => rst_valido,
    LOCKED => open);
end Behavioral;

