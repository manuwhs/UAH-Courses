----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:55:08 11/15/2012 
-- Design Name: 
-- Module Name:    FSM_Control - Behavioral 
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

-- Conceptos generales:

-- La cadencia de todo es 1 ciclo:
   -- Cadencia de la ROM 
	-- Cadencia del registro 
	-- Cadencia de la multiplcicacion
	-- Cadencia de la suma

-- La latencia de:
  -- La Rom es 1
  -- El registro es 1
  -- La multipliacion es 2  (configurable)
  -- La suma es 1
  
 -- Para que se realice una multiplicacion, el chip enable de la multipliacion debe estar 
 -- encendido hasta que los multiplicandos de la ultima multipliacion esten estables durante 2 ciclos
 
  -- Para que se realice una suma, el chip enable de la suma debe estar 
 -- encendido hasta que los sumandos de la ultima suma esten estables durante 1 ciclo
 
 
 
entity FSM_Control is
Generic (addr_max : STD_LOGIC_VECTOR (4 downto 0):="00100"; -- 4
         Lat_mult:integer := 2; -- Latencia Multiplicador
			Lat_Sum:integer := 1); -- Latencia Sumador
			                       
			
    Port ( datain_valid : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dataout_valid : out  STD_LOGIC;
           Addr : out  STD_LOGIC_VECTOR (4 downto 0);
			  CE_ROM : out  STD_LOGIC;
			  CE_reg : out  STD_LOGIC;
           CE_Mult : out  STD_LOGIC;
           CE_Acum : out  STD_LOGIC);
end FSM_Control;

architecture Behavioral of FSM_Control is

type estadoFSM is (Espera, Calculando, Desactivando);   --Listado de estados
attribute ENUM_ENCODING: STRING;
attribute ENUM_ENCODING of estadoFSM:type is "00 01 10"; --Codificamos estados
signal Addr_1 : STD_LOGIC_VECTOR (4 downto 0);
signal estado: estadoFSM;
signal retardo : integer range 0 to 7 := 0;

-- Necesitaremos retrasar la multiplicacion 1
-- Esto es necesario ya que:
-- Al activar la ROM y reg, tardan un ciclo en poner su valor 
-- a la salida de los mismos por lo que la multiplicacion se debe
-- activar un ciclo despues.
-- (Misma razon por la que retrasamos las salidas de las direcciones)
-- Necesitamos retrasar la activacion de la suma lat_mult ciclos despues para
-- asegurar una salida del multiplicador estable
																		 
signal dataout_valid_D: std_logic_vector (Lat_mult downto 0); 
  
begin

FSM_Controlador: process(clk,rst)

 begin

 
 if (clk'event and clk='1') then  --Si flanco de subida 	
   	 -- Señales que pasan por biestables para retrasar
    addr <= addr_1;		     -- Las direcciones se retrasan 1 ciclo
	                          -- Esto es ya que cuando llegue datin_valid, le damos un cilo al registro
									  -- Para que ponga a su salida el nuevo dato
 -- Asegurada salida estable y correcta de la Rom y registro
 end if;
 
 
  if (rst='1') then  --Reset asincrono
       estado <= Espera; -- Estado inicial.
		 retardo <= 0;   -- Ponemos a 0 el contador de retardos
       Addr_1 <= (others =>'0'); -- Ponemos la direccion inicial a 0
		 CE_ROM <= '0';
		 CE_reg <= '0';
		 CE_mult<= '0'; 
		 CE_acum<= '0'; 
       dataout_valid <='0'; 
	
		 
    elsif (clk'event and clk='1') then  --Si no hay reset y flanco de subida 	
	 
     case estado is
        when Espera =>
		       
          if (datain_valid='1') then -- Si estamos esperando nuevo dato y llega
			     addr_1 <= addr_1 + '1'; -- Aumentamos la direccion (pasará a la salida en el siguiente ciclo)
              estado <= Calculando;   -- Vamos a este estado
				                          -- Encendemos ROM y reg
		       CE_ROM <= '1';
		       CE_reg <= '1';
	       
       
			 end if;
			 
		  when Calculando =>
		    
          if (Addr_1 =addr_max) then  -- Si hemos acabado de calcular
				estado <= Desactivando;    -- Vamos a este estado
            retardo <= 0;          -- Vaciamos el contador de retarlos para volverlo a usar para desactivar
				 
				else           -- Si Hay un nuevo ciclo de operacion
	         addr_1 <= addr_1 + '1'; -- Aumentamos la direccion
				
				-- CODIGO PARA IR ACTIVANDO LA MULTIPLICACION Y ACUMULADOR EN SUS MOMENTOS
				
				if (retardo <= Lat_mult) then -- Si aun no se han retrasado todas las señales que
				                              -- tenemos que retrasar
				    retardo <= retardo + 1;
				    
				     if (retardo = 0) then     -- Cuando lleguemos por primera vez a este estado ya habra
				                                -- pasado un ciclo desde que encendimos ROm y reg
				        CE_mult <= '1';        -- (Encendemos mult un ciclo despues que los registros)
					
				     elsif (retardo = Lat_mult) then  -- Si hemos retrasado suficiente la acumulacion (Latencia del mult)
                     CE_Acum <= '1';        -- (Encendemos el acum cuando la salida del multiplicador este bien
				                                -- es decir, despues de latencia ciclos (con respecto al mult)				  
				     end if;
					  
				else                 
           end if;        							
       end if;
		 
		  when Desactivando =>   -- En este instante, las salidas de los registros seran estales y la última multiplicacion habra empezado
							   -- 1) Como tenemos que mantener el multiplicador activa hasta que ponga la ultima salida
							   -- Tenemos que esperarnos su latencia antes de apagarlo			
						      -- La multiplicacion debe estar encencida N_mult + Latencia_mult
								-- Por lo que se tiene que desactivar Lat_mult ciclos despues de este instante
								
							   -- 2) La acumulacion tiene que estar unicamente N_sum  ciclos encendida para hacer
								-- solo las sumas que tiene que hacer (no funciona como el multiplicador que tenemos que 
								-- mantenerlo activo durante su latencia).
								-- Se tiene que desactivar lat_sum justo despues de que la ultima multiplicacion sea estable
								-- Es decir, se desactiva en Lat_mult + Lat_sum ciclos
								
								
		  	-- CODIGO PARA IR DESACTIVANDO DE LOS REGISTROS, MULTIPLIACION Y ACUMULACION EN SUS TIEMPOS
				
				if (retardo <= Lat_mult + Lat_Sum + 2) then-- Si aun no se han retrasado todas las señales que
				                         -- tenemos que retrasar
				    retardo <= retardo + 1;
				    
				     if (retardo = 0) then  -- Cuando lleguemos por primera vez a este estado, estará a 0
				                            -- Desactivamos los registros
						 CE_reg <= '0';             -- Apagamos el registro
			          CE_ROM <= '0';             -- Apagamos la Rom directamente
						 Addr_1 <= (others =>'0'); -- Ponemos las direcciones a 0
					
				     elsif (retardo = Lat_mult) then  -- Si hemos retrasado suficiente la mult (Latencia)
                     CE_Mult <= '0';              -- La apagamos
							-- En este momento habran pasado 2 ciclos desde la ultima multiplicacion
							-- Se puede observar que para que el multiplicador ponga la salida correcta, su ce
							-- debe estar activado hasta que ponga la salida bien (esperar latencia).
							-- Esto no ocurre con el sumador que no tenemos que esperar a que la salida sea la ultima
							-- para apagarlo, sino que tenemos que esperar
							
                      
				      
                 elsif (retardo = Lat_mult + Lat_Sum) then  -- En este momento la salida del sumador justo acaba de ser la buena
					                                             -- (Un ciclo atras se puso la última multiplicacion buena, 
																				-- cuando acabó la ultima multiplicacion)
																				-- (Si no lo desactivamos ahora, seguira sumando mas veces, solo puede estar activo el n_sumas)
                      CE_Acum <= '0';                       -- Apagamos el acumulador para que deje de sumar
							 
							 
				    elsif (retardo = Lat_mult + Lat_Sum + 1) then  -- Despues de un ciclo, nos aseguramos que la salida del acumulador
					                                                -- sea estable (debido al redondeo)
							 
							 dataout_valid <= '1';           
							 
					   elsif (retardo = Lat_mult + Lat_Sum + 2) then  
                      dataout_valid <= '0';            -- Decimos eso			 
                      estado <= Espera;         -- Volvemos al estado de espera;	
                      retardo <= 0;          -- Reiniciamos el retardo							 
				     end if;
           end if;        								
      end case;
	end if;
end process;


end Behavioral;

