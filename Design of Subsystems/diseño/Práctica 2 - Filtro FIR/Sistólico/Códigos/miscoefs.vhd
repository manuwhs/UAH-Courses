library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


package miscoefs is 

type tcoefs is array (0 to 28-1) of std_logic_vector(15 downto 0); 
constant coefs : tcoefs := (
		X"fd7e",
		X"fcc7",
		X"fc78",
		X"fcb2",
		X"fd8b",
		X"ff08",
		X"011b",
		X"03a6",
		X"067b",
		X"0960",
		X"0c16",
		X"0e60",
		X"1007",
		X"10e5",
		X"10e5",
		X"1007",
		X"0e60",
		X"0c16",
		X"0960",
		X"067b",
		X"03a6",
		X"011b",
		X"ff08",
		X"fd8b",
		X"fcb2",
		X"fc78",
		X"fcc7",
		X"fd7e" );  


end miscoefs;


package body miscoefs is 

end miscoefs;
