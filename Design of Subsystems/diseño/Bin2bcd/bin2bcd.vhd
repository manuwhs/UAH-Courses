----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:53:43 10/23/2012 
-- Design Name: 
-- Module Name:    bin2bcd - Behavioral 
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

entity bin2bcd is
    Port ( Data_bin : in  STD_LOGIC_VECTOR (5 downto 0);
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           Unidades : out  STD_LOGIC_VECTOR (3 downto 0);
           Decenas : out  STD_LOGIC_VECTOR (3 downto 0));
end bin2bcd;

architecture Behavioral of bin2bcd is
	signal Ua, Da : STD_LOGIC_VECTOR (3 downto 0);
begin

	 -- obtiene los valores de unidades y decenas a registrar
	 p1: process(data_bin)
			variable vunidad, vdecena : integer range 0 to 9;
	      variable vaux : integer range 0 to 59;
	 begin
		vaux := CONV_INTEGER(unsigned(data_bin));
		
		Ua <= CONV_STD_LOGIC_VECTOR(vaux,Ua'length);
		Da <= (others =>'0');
		
		if (vaux >= 50)  then
			vunidad := vaux-50;
			vdecena:=5;
		elsif (vaux >= 40) then
			vunidad := vaux-40;
			vdecena:=4;
		elsif (vaux >= 30) then
			vunidad := vaux-30;
			vdecena:=3;
		elsif (vaux >= 20) then
			vunidad := vaux-20;
			vdecena:=2;
		elsif (vaux >= 10) then
			vunidad := vaux-10;
			vdecena:=1;
		else
			vunidad:=vaux;
			vdecena:=0;
		end if;
							
					Ua <= CONV_STD_LOGIC_VECTOR(vunidad,Ua'length);
					Da <= CONV_STD_LOGIC_VECTOR(vdecena,Da'length);
						
	 end process; --p1
	 
	 -- escribe unidades y decenas
	 p2: process(clk)
	 begin
		if(clk'event and clk='1') then
			if(rst='1') then
				unidades <= (others => '0');
				decenas  <= (others => '0');
			else
				unidades <= Ua;
				decenas  <= Da;			
			end if;
			
		end if;
		
	end process; --p2
	

end Behavioral;

