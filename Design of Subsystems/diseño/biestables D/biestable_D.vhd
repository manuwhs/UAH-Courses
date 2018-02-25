----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:53 12/05/2012 
-- Design Name: 
-- Module Name:    biestable_D - Behavioral 
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

entity biestable_D is
    Port ( clk : in  STD_LOGIC;
           clk_en : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end biestable_D;

architecture Behavioral of biestable_D is

begin
process(clk)
 begin
 if (clk'event and clk='1') then
    if (clk_en = '1') then
	 Q<=D;
	 end if;
	 end if;
	 end process;

end Behavioral;

