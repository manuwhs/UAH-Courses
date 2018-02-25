----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:22:18 11/21/2012 
-- Design Name: 
-- Module Name:    Prueba_1 - Behavioral 
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

entity Prueba_1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end Prueba_1;

architecture Behavioral of Prueba_1 is
signal s_1 : integer range 100 downto 0 := 0;
signal s_2 : integer range 100 downto 0 := 0;
signal s_3 : integer range 100 downto 0 := 0;
signal s_4 : integer range 100 downto 0 := 0;
signal clk : std_logic;

begin

process 
begin
s_1 <= s_1 + 1;
for i in 0 to 15 loop
s_2 <= s_2 + 1;
wait until clk = '1';
s_3 <= s_3 + 1;
end loop;
s_4 <= s_4 + 1;
end process;

process 
begin 
clk <= '0';
wait for 5 ns;
clk <= '1';
wait for 5 ns;
end process;

end Behavioral;

