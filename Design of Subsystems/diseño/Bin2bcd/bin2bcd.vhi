
-- VHDL Instantiation Created from source file bin2bcd.vhd -- 00:54:46 10/25/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT bin2bcd
	PORT(
		Data_bin : IN std_logic_vector(5 downto 0);
		rst : IN std_logic;
		clk : IN std_logic;          
		Unidades : OUT std_logic_vector(3 downto 0);
		Decenas : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_bin2bcd: bin2bcd PORT MAP(
		Data_bin => ,
		rst => ,
		clk => ,
		Unidades => ,
		Decenas => 
	);


