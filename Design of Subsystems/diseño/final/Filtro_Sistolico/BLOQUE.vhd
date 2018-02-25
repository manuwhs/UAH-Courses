----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:00 12/03/2012 
-- Design Name: 
-- Module Name:    BLOQUE - Behavioral 
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



entity BLOQUE is
    Generic (lat_sum:integer := 1);
    Port ( clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           ce : IN  std_logic;      -- El Chip_Enable de la suma y multiplicacion
			  clk_en : IN  std_logic;   -- El Clock_Enable del bloque(Conectado a datain_valid)
			  datain_valid_prop : in  STD_LOGIC; -- Prapagacion del datain_valid
			  dataout_valid_prop : out  STD_LOGIC; -- para llevarlo a la salida (dataout_valid)
           reg_datain_in : IN  std_logic_vector(15 downto 0);
			  ROM_datain_in : in  STD_LOGIC_VECTOR (15 downto 0);
           reg_datain_out : out  STD_LOGIC_VECTOR (15 downto 0);
           sumando_in : in  STD_LOGIC_VECTOR (36 downto 0);
           sumando_out : out  STD_LOGIC_VECTOR (36 downto 0));
end BLOQUE;
-- El objetivo es que en cada bloque, el valor de los 2 sumandos, uno de la multiplicacion
-- y otro de la suma anteior estén estables y disponibles al mismo tiempo.
-- Suponemos cadencia del circuito igual a 1 ciclo ya que todos sus elementos la tienen
-- Sea la latencia de la multiplicacion lat_mult y la de la suma lat_sum veamos el numero
-- de ciclos que tenemos que retrasar la señal a la entrada de cada multiplicador para
-- que se sincronicen los tiempos:
--(VER que la latencia del multiplicador no afecta a la sincronizacion que los tiempos
-- se compensan unos con otros, pero si que afecta a la latencia del circuito global)
-- (lo que si hay que tener en cuenta es la latencia del sumador)
-- Primer pensamiento: HAY que añadir tantos registros arriba como lat_sum 
-- Se demuestra haciendo el flujo de datos
-- (Aparte claro de un registro por cada multiplicador para separar los coeficientes

-- La propagacion del datain_valid dentro de los bloques sirve para saber cuando el dato
-- de salida está preparado y activamos el dataout_valid.
-- Hay que ver que una vez el primer dato de salida esté listo, el dataout_valid del filtro
-- será 1 siempre que el datain_valid sea 1 y sera 0 siempre que el datain_valid,
-- a no ser que de haga un reset por lo que hay que tener esto en cuenta, solo propagar
-- una vez hasta el final y luego ya que sea igual a datain_valid.
-- Por esta razon creamos la señal "propagado", que lo que hace es que una vez el bloque
-- ha propagado por primera vez el datain_valid, ya siempre su salida es '1' hasta
-- un nuevo reset.

architecture Behavioral of BLOQUE is

-- Multiplicador
COMPONENT Multiplicador
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;
--Sumador
COMPONENT Sumador
  PORT (
    a : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(36 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(36 DOWNTO 0)
  );
END COMPONENT;


-- TIPOS DE DATOS PARA RETRASOS
type Array_vect_16bits_r is array (0 to lat_sum) of std_logic_vector(15 downto 0) ; -- Para retardos de xn
type Array_vect_1bit_r is array (0 to lat_sum-1) of std_logic ; -- Para retardos de dataout_valid

-- SEÑALES

-- Los multiplicandos son de 18 bits (16 que se van propagando y a la hora de meterlo
-- en el multiplicador lo extendemos a 18)
-- Las multplicaciones son de 36 bits
-- Las sumas deber ser de 37 bits (32 + 5) (5 => log2(28) )
-- Asi pues los sumandos deben ser de 36 y 37 bits de entrada y 37 de salida
signal multiplicando_reg: STD_LOGIC_VECTOR(17 downto 0);  -- multiplicando del reg
signal multiplicando_ROM:STD_LOGIC_VECTOR(17 downto 0);  --multiplicando de la Rom
signal multiplicacion:STD_LOGIC_VECTOR(35 downto 0);  -- multiplicacion resultante
-- SEÑALES PARA RETRASOS
signal multiplicando_reg_D:Array_vect_16bits_r;  -- Registros para retrasar la multiplicacion de xn debido a la latencia
signal datainout_r : Array_vect_1bit_r;
signal propagado :std_logic;

begin
-- Extendemos los multiplicandos de 16 a 18 bits
multiplicando_reg <= multiplicando_reg_D(lat_sum)(15)&multiplicando_reg_D(lat_sum)(15)&multiplicando_reg_D(lat_sum);
multiplicando_ROM <= ROM_datain_in(15)&ROM_datain_in(15)&ROM_datain_in;
-- Señales de salida
reg_datain_out <= multiplicando_reg_D(lat_sum);
dataout_valid_prop <= propagado;

-- Instanciamos el sumador y multiplicador
-- Multiplicador
Multiplicador_inst : Multiplicador
  PORT MAP (
    clk => clk,
    a => multiplicando_reg, -- El valor ya ha sido retrasado 
    b => multiplicando_ROM,
    ce => CE,
    p => Multiplicacion
  );
-- Sumador
Sumador_inst : Sumador
  PORT MAP (
    a => Multiplicacion,
    b => sumando_in,      
    clk => clk,
    ce => ce,
    sclr => rst,
    s => sumando_out   -- Suma que se retrasara
  );

-- RETRASO DE LA MULTIPLICACION Y LA SUMA:
Retrado_Signals: process(clk,rst)
begin 
-- El sistema es el siguiente:
-- Para retrasar las señales lat_sum ciclos entre bloques, crearemos lat_sum registros de 16 bits por bloque
-- Concurrentemente igualaremos la entrada al multiplicador del bloque correspondiente a la
-- salida del ultimo registro y lo extendemos a 18 bits

  if (rst ='1') then   -- Reset asincrono
     for i in 0 to lat_sum loop          -- Por cada registro retrasador
	    multiplicando_reg_D(i) <= (others =>'0');
	  end loop;
	  
	   for i in 0 to lat_sum-1 loop          -- Por cada registro retrasador
       datainout_r(i) <= '0';  
	  end loop;
	  
	  
		propagado <= '0';
		
else
	  
 if (clk'event and clk = '1') then
 


 -- Multiplicacion
     if (clk_en = '1') then  -- Solo se realiza el avance si datain_valid = '1';
	                                      -- o si rst = 1 para que se puedan vaciar los registros
	    	 multiplicando_reg_D(0) <= reg_datain_in; -- En este punto ya hemos retrasado 1 ciclo
		 for i in 0 to lat_sum-1 loop          -- Por cada registro retrasador
              multiplicando_reg_D(i+1) <= multiplicando_reg_D(i);
	-- El valor del indice de multiplicando_reg_D indica cuantos ciclos esta la salida 
	-- de dicho registro con respecto a la original
	end loop;
	
-- Dataout_valid
    datainout_r(0) <= datain_valid_prop;  -- Aqui ya hemos retrasado 1   
      for i in 0 to lat_sum-2 loop          -- Por cada registro retrasador
       datainout_r(i+1) <= datainout_r(i);  
	  end loop;
	  if (datainout_r(lat_sum-1) = '1') then
	  -- Como el ciclo en el que datainout_r(lat_sum) pase a ser 1 no podremos detectarlo
	  -- ya que se detectara al ciclo siguiente, lo que hacemos es ver si el registro
	  -- anterior está a 1
	                                      
	    propagado <= '1';
	  end if;
	end if;
end if;
 end if; 
end process;


end Behavioral;


