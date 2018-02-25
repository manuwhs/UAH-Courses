----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:43:21 11/11/2012 
-- Design Name: 
-- Module Name:    puertos_in_out - Behavioral 
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

entity puertos_in_out is
    Port ( a  : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s1 : out  STD_LOGIC;
           s2 : out  STD_LOGIC);
end puertos_in_out;

architecture Behavioral of puertos_in_out is
signal s1_s : std_logic;

signal k1 : integer range 0 to 10 := 3;
signal k2 : integer range 0 to 100 := 3;
begin
k1<=k2;
s1_s <= a and b;
s1 <= s1_s;
s2<= s1_s or c;

end Behavioral;

