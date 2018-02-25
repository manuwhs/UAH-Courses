----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:27:33 12/02/2012 
-- Design Name: 
-- Module Name:    ROM_Coef - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_Coef is
    Generic ( M : integer := 27); -- orden del filtro: M+1 coeficientes
    Port ( clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
           Reg_out : out ROM_Mem);
end ROM_Coef;
-- Al inicio del programa,se hara un barrido poniendo a la entrada de cada multiplicador
-- el valor de la Rom indicado

architecture Behavioral of ROM_Coef is
type ROM_mem is array (0 to M) of std_logic_vector(15 downto 0) ;
signal Registro_M :ROM_mem;
begin


end Behavioral;

