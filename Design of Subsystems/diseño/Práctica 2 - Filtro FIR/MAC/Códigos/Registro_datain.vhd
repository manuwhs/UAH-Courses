----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:45 11/14/2012 
-- Design Name: 
-- Module Name:    Registro_datain - Behavioral 
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



entity Registro_datain is
    Generic ( M : integer := 4); -- orden del filtro: M+1 coeficientes
    Port ( addr : in  STD_LOGIC_VECTOR (4 downto 0);
           data_valid : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
			  data_in : in  STD_LOGIC_VECTOR(15 downto 0);
           Reg_out : out  STD_LOGIC_VECTOR(15 downto 0));
end Registro_datain;

architecture Behavioral of Registro_datain is

type RAM_mem is array (0 to M) of std_logic_vector(15 downto 0) ;
signal Registro_M :RAM_mem ;

begin


process (clk,rst,data_valid) 
begin

 if (rst = '1') then           -- Si hay reset
	   for i in 0 to M loop   --Ponemos el registro a 0
      Registro_M(i) <= x"0000";
      end loop;
	   reg_out <= x"0000";
		
    elsif (clk'event and clk = '1') then
	 if (data_valid ='1') then  -- Si llega un nuevo dato
	       Registro_M(0) <= data_in; --Ponemos el nuevo dato en la primera posicion
          for i in 0 to (M-1) loop   --Desplazamos todos una posicion a derechas
            Registro_M(i+1) <= Registro_M(i);
          end loop;
	 end if;
	 if (ce = '1') then -- Si tenemos la señal
	         Reg_out <= Registro_M(CONV_INTEGER(unsigned(addr)));
	 end if;
 end if;
end process;


end Behavioral;

