----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:47 10/30/2012 
-- Design Name: 
-- Module Name:    FSM_lapse - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM_lapso is
    Port ( clk: in STD_LOGIC;
           rst : in STD_LOGIC;
			  lapso : in STD_LOGIC;
           actualizar: out  STD_LOGIC);
end FSM_lapso;

architecture Behavioral of FSM_lapso is

-- Declaramos sistema anti-rebote
    COMPONENT antirebote
    PORT(
         clk : IN  std_logic;
			rst : IN  std_logic;
         entrada : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;

-- Señales y estados
type estadoFSM is (S1, S2, S3, S4);   --Listado de estados
attribute ENUM_ENCODING: STRING;
attribute ENUM_ENCODING of estadoFSM:type is "00 01 10 11"; --Codificamos estados

signal estado: estadoFSM;
signal lapso_estable : std_logic;
begin

-- Instanciamos citcuito antirebote
antirebote_inst: antirebote PORT MAP (
          clk => clk,
			 rst => rst,
          entrada => lapso,
          salida => lapso_estable
        );


-- Maquina de estados del lapso
FSM_lapso: process(clk,rst)
 begin
  if (rst='1') then  --Reset asincrono
       estado <= S1; -- Estado inicial.
       actualizar <= '1';  --Salida del estado inicial
  elsif (clk'event and clk='1') then  --Si no hay reset y flanco de subida 
												       
     case estado is
        when S1 =>
          if (lapso_estable='1') then
             estado <= S2;        -- Vamos a este estado
             actualizar <= '0';   -- Salida en ese nuevo estado
          end if;
		  when S2 =>
          if (lapso_estable='0') then  
             estado <= S3;        -- Vamos a este estado
             actualizar <= '0';   -- Salida en ese nuevo estado
          end if;
		 when S3 =>
          if (lapso_estable='1') then
             estado <= S4;        -- Vamos a este estado
             actualizar <= '1';   -- Salida en ese nuevo estado
          end if;
		 when S4 =>
          if (lapso_estable='0') then
             estado <= S1;        -- Vamos a este estado
             actualizar <= '1';   -- Salida en ese nuevo estado
          end if;
      end case;
	end if;
end process;
end Behavioral;

