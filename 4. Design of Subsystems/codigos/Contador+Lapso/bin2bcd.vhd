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
use ieee.std_logic_signed.all; --Para el unsigned


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- Esta entidad es un conversor de binario sin signo de 6 bits (0-63)
-- a bcd de dos digitos,BCD_uni y BCD_dec
-- Se ha implementado mediante dos procesos:
-- 1)El primero (salidas) se activa cuando haya un cambio en la señal binaria de
-- entrada al sistema,y se calcula entonces la salida bcd de dicha entrada, 
-- pero dichas salidas no se escriben aún en los puertos de salida ya que
-- queremos un circuito regulado por la señal de reloj
--2)El segundo proceso se activa con la señal de reloj, al hacerlo,
-- comprueba que sea un flanco de subida y entonces, si el reset no está activado
-- escribe las salidasen los puertos



entity bin2bcd is
    Port ( BIN : in  STD_LOGIC_VECTOR (5 downto 0);
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           BCD_uni : out  STD_LOGIC_VECTOR (3 downto 0);
           BCD_dec : out  STD_LOGIC_VECTOR (3 downto 0));
end bin2bcd;

architecture algoritmica of bin2bcd is
--Señales donde pondremos el valor de las salidas (BCD_uni y BCD_dec)
--calculado en el proceso salidas y que llevaremos a los puertos de salida
--de la entidad cuando haya un flanco de reloj
	signal Ua, Da : STD_LOGIC_VECTOR (3 downto 0);

begin

-- obtiene los valores de BCD_uni y BCD_dec a registrar
	 salidas: process(BIN)
	 -- Variables que usaremos para calcular las salidas
	 -- Recordar que las variables no tienen significado fisico y que son
	 -- eliminadas en la implementacion por el programa
			variable vunidad, vdecena : integer range 0 to 9;
	      variable vaux : integer range 0 to 59;
	 begin
		vaux := CONV_INTEGER(unsigned(BIN));
		-- Convierte el dato de entrada de binario sin signo (se ha de especificar)
		-- a numero natural
		
		-- Esta cadena de if's mira a ver en que rango de BCD_dec cae la entrada dada
		-- y acorde con eso le da valores a las entradas y BCD_dec
		-- Recordar que no se puede dividir en vhdl sintetizable (si no es multiplo de 2)
		
		-- xk se trabaja con variables y no con señales ?
		
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
		-- Convierte los numeros enteros de las variables vunidad y vdecena
      -- a vectores de 4 bits y los pone en las señales para luego poder 
     -- utilizarlas en el siguiente proceso y ponerlas en los puertos de salida		
					Ua <= CONV_STD_LOGIC_VECTOR(vunidad,Ua'length);
					Da <= CONV_STD_LOGIC_VECTOR(vdecena,Da'length);
						
	 end process; --p1
	 
	 -- escribe BCD_uni y BCD_dec en los puertos de salida y se encarga de 
	 -- la señal de reset sincrona
	 p2: process(clk)
	 begin
		if(clk'event and clk='1') then
			if(rst='1') then     --señal de reset sincrona en flanco de subida
				BCD_uni <= (others => '0');
				BCD_dec  <= (others => '0');
			else           -- Si no hay reset
				BCD_uni <= Ua;
				BCD_dec  <= Da;			
			end if;
			
		end if;
		
	end process; --p2
	

end algoritmica;

