----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:32 10/16/2012 
-- Design Name: 
-- Module Name:    Contador - Behavioral 
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
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Contador is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           updn : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (6 downto 0));
end Contador;

architecture Behavioral of Contador is

	signal count : STD_LOGIC_VECTOR (6 downto 0);

begin
q<=count;
	
	process (clk) 
	begin
		if clk='1' and clk'event then
			if rst='0' then 
				count <= (others => '0');
				
			else
				if updn ='1' then
						count <= count + 1;
					else
						count <= count - 1;
					end if;
				end if;
			end if;

end process; 
end Behavioral;

