--------------------------------------------------------------------------------
--
--   FileName:         antirebote.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 3/26/2012 Scott Larson
--     Initial Public Release
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity antirebote is
  generic(
    bits_contador  :  integer := 21); -- A 100 MHz equivale mas o menos a 10.5 ms
  PORT(
    clk     : in  STD_LOGIC;  -- Reloj del sistema
	 rst : in  STD_LOGIC;  -- Reset asincrono
    entrada  : in  STD_LOGIC;  -- Señal de entrada con rebote
    salida  : out STD_LOGIC); -- Señal de salida sin rebote
end antirebote;

architecture algoritmica of antirebote is
  signal biestables_D   : STD_LOGIC_VECTOR(1 downto 0); -- Biestables a la entrada para detectar cambio en
																		 -- La señal de entrada
  signal clear: STD_LOGIC;                    -- Clear sincrono del contador que se activa
												          -- Cuando cambia la señal de entrada
  signal cuenta : STD_LOGIC_VECTOR(bits_contador downto 0) := (others => '0'); -- salida del contador
begin

  clear <= biestables_D(0) xor biestables_D(1);   -- Deteca un cambio en la señal de entrada
                                                        --
  process(clk,rst)                  
  begin
  if(rst = '1') then           --Reset asincrono
      cuenta <= (others => '0');  -- Activamos y reiniciamos la cuenta, congelando la salida
		
    elsif(clk'EVENT and clk = '1') then  -- Cuando flanco de subida
      biestables_D(0) <= entrada;            -- La entrada del primer biestable_D es la señal con rebote
      biestables_D(1) <= biestables_D(0);    -- La entada del segundo biestable_D es la salida del primer biestable
		                                       -- Esto hace que haya un ciclo de reloj entre la salida de ambos biestables
															-- haciendo posible medianta la puerta xor detectar cambios en la entrada
      if(clear = '1') then                   -- Si la señal de entrada a cabiado 
        cuenta <= (others => '0');           -- Reestablecemos la cuenta
		  
         elsif(cuenta(bits_contador) = '0') then --Si no ha cambiado pero cambió y aun no ha acabado el contador
		                                       -- por lo que se considera como señal no estables
          cuenta <= cuenta + 1;                -- Aumentamos el contador (binario)
		     -- Tener en cuenta que este contador, si es de 20 bits, "cuenta" tiene 21 bits 
			  -- El contador solo cuenta hasta "0_1111_1111_1111_1111"
		     -- Al llegar al siguiente ("1_0000_0000_0000_0000") deja de contar
		     -- De esta manera el contador trabaja mucho mas rapido
			  -- Cuando el contador llega a "1_0000_0000_0000_0000", se para ahi y al haber flanco de subida
			  -- no se cumplira la condicion "cuenta(bits_contador) = '0'", por lo que la salida sera siempre igual
			  -- a la entrada, por lo que de alguna manera el bit de mayor peso del contador es ENABLE de la salida
			  -- y el ENABLE del contador, al llegar a '1', el contador se desactiva y la salida se activa
			  -- cuando es '0', el contador cuenta y se activa y la salida se desactiva
		  
         else                                   --Si cambio la entrada hace tiempo y el contador acaba de terminar
        salida <= biestables_D(1);           --Llevamos la entrada a la salida

      end if;      -- if del rst  o valor del contador
    end if;        -- if del flanco de subida
  end process;
end algoritmica;
-- Consideraciones:
-- El numero de ciclos que pasan desde que hay un cambio a la salida hasta que cambia la entrada es:

