----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:29:25 11/14/2012 
-- Design Name: 
-- Module Name:    Acumulador - Behavioral 
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
use IEEE.STD_logic_arith.all;
use ieee.std_logic_unsigned.all; --Para el unsigned


entity Acumulador is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           CE : in  STD_LOGIC;
			  Sumando : in  STD_LOGIC_VECTOR (35 downto 0); -- Los 36 bits de salida del mult
           Resultado : out  STD_LOGIC_VECTOR (15 downto 0);
			  datain_valid : in STD_LOGIC);
end Acumulador;

architecture Behavioral of Acumulador is

-- Nombramos el sumador
COMPONENT Sumador
  PORT (
    a : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
	 sclr : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(37 DOWNTO 0)
  );
END COMPONENT;

signal Resultado_D1 : STD_LOGIC_VECTOR(37 DOWNTO 0);
signal Clear : std_logic;

begin 

Resultado <= Resultado_D1(30 downto 15);
Clear <= rst or datain_valid;

-- Instanciamos el sumador:
Sumador_inst: Sumador
  PORT MAP (
    a => Sumando,
    b => Resultado_D1,
    clk => clk,
    ce => CE,      -- Solo suma cuando este activado 
	 sclr => Clear,   -- Si hay reset general o fin de calculo, se pone a 0
    s => Resultado_D1 -- No lo ponemos directamente a la salida xk si no no lo
	                   -- podriamos leer
  );

end Behavioral;

