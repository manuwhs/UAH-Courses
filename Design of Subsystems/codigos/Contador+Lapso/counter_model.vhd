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

--Contador hacia arriba o hacia abajo de 0 a 59
--Creamos un proceso que calcula el siguiente valor del contador, este proceso se activa
--cuando cambia el valor del contador "count_reg" o la señal "updwn"
--El valor de la señal  "count_reg" cambiara cuando haya un flanco de reloj
--El segundo proceso se activa con el flanco de reloj o la señal de reset y lo que hace
--es cambiar el valor de la señal "count_reg" poniendole el proximo valor,que se calculo
--con el primer proceso; este cambio acciona el primer proceo que genera el siguiente valor
--(Debe tardarse menos en generar el siguiente valor "proceso 1" que el tiempo entre flancos)

-- La señal va de de 0 a 59 por lo que en binario C2 necesitaremos 7 bits para poder tener
-- el rango [-64,63] si bien solo usaremos los valores de 0 a 59 y la informacion
-- siempre estara en los 6 bits de menor peso
entity counter_model is
    Port ( clk : in  STD_LOGIC;
	        clk_en : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  lapso : in STD_LOGIC;
           up_down : in  STD_LOGIC;
			  
           q : out  STD_LOGIC_VECTOR (5 downto 0));
end counter_model;

architecture algoritmica of counter_model is

-- Declaramos la maquina de estados del lapso
    COMPONENT FSM_lapso
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         lapso : IN  std_logic;
         actualizar : OUT  std_logic
        );
    END COMPONENT;
	 
-- Señales a utilizar
	signal count_reg : integer range 0 to 59; -- Valor actual del contador
	signal count_next:  integer range 0 to 59; -- Valor que tomará el contador en el siguiente flanco
   signal actualiza: std_logic := '1';

																		
begin     --Empiezan las instrucicones concurrentes

-- Instanciamos la maquina de estados
FSM_lapso_inst: FSM_lapso PORT MAP (
          clk => clk,
          rst => rst,
          lapso => lapso,
          actualizar => actualiza
        );

--Proceso que te calcula el siguiente valor de count_reg, es decir, count_next
--Cuando cambie el valor del contador o la señal updwn
process(count_reg,up_down)
begin 
   if (up_down = '1') then -- Si la cuenta es ascendente
    if (count_reg = 59) then  --Si hemos llegado al tope
	    count_next <= 0; 
		 else
		 count_next <= count_reg + 1; 
	 end if; 
  else                 --Si la cuenta es descendente
    if (count_reg = 0) then --Si hemos llegado al tope
       count_next <= 59;
       else
		 count_next <= count_reg - 1;
   end if;
 end if; 
 end process;
-- Podriamos haber usado variables dentro del proceso para calcular el siguiente valor del contador
-- pero necesitamos señales igualmente para comunicar los procesos

-- Este proceso varia el valor de count_reg e indica en funcion de la señal "actualiza" 
-- si ponemos el valor de count_reg a la saida

process(clk, rst)
begin
    if (rst = '1') then  --Reset asincrono
	  count_reg <= 0;
	  elsif (clk = '1' and clk'event) then  --Si flanco de subida
	     if(clk_en='1') then  -- Si esta habilitado (se habilita cuando pasa un seg)
	        count_reg <= count_next; -- Se actualiza la salida
			  if (actualiza = '1') then
			     q <= CONV_STD_LOGIC_VECTOR(count_reg,6); -- Ponemos el valor del contador a la salida
				end if;   
	     end if;
	  end if;
end process;
end algoritmica;

