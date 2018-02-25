----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:42 11/14/2012 
-- Design Name: 
-- Module Name:    Filtro_FIR_MAC - Behavioral 
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
use ieee.std_logic_signed.all; --Para el unsigned
use IEEE.STD_logic_arith.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Filtro_FIR_Sistologico is
 Generic ( M : integer := 4);
    Port ( datain : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           datain_valid : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (15 downto 0);
           dataout_valid : out  STD_LOGIC);
end Filtro_FIR_Sistologico;

architecture Behavioral of Filtro_FIR_Sistologico is


-- Componentes
    COMPONENT BLOQUE
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ce : IN  std_logic;      -- El Chip_Enable de la suma y multiplicacion
			clk_en : IN  std_logic;   -- El Clock_Enable del bloque(Conectado a datain_valid)
			datain_valid_prop : in  STD_LOGIC; -- Prapagacion del datain_valid
			dataout_valid_prop : out  STD_LOGIC; -- para llevarlo a la salida (dataout_valid)
         reg_datain_in : IN  std_logic_vector(15 downto 0);
         ROM_datain_in : IN  std_logic_vector(15 downto 0);
         reg_datain_out : OUT  std_logic_vector(15 downto 0);
         sumando_in : IN  std_logic_vector(36 downto 0);
         sumando_out : OUT  std_logic_vector(36 downto 0)
        );
    END COMPONENT;

-- DCM    
component DCM_gen
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  -- Status and control signals
  RESET             : in     std_logic;
  LOCKED            : out    std_logic
 );
end component;

COMPONENT Multiplicador
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce: IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- TIPOS DE DATOS DE ARRAYS DE VECTORES LOGICOS
type Array_vect_16bits is array (0 to M) of std_logic_vector(15 downto 0) ; -- Para multiplicandos y ROM
type Array_vect_37bits is array (0 to M) of std_logic_vector(36 downto 0) ; -- Para mult (32 + 5)

-- SEÑALES AUXILIARES
signal clk_DCM : std_logic; -- - Señal de reloj de salida del DCM que irá a los demas componentes
signal rst_valido : std_logic; -- Ya que los botones si no los pulsas dan 1
signal Addr :std_logic_vector(4 downto 0);
signal CE :std_logic;


-- SEÑALES INTER-BLOQUES
signal Dato_reg:Array_vect_16bits;  -- Cada uno de los M + 1 multiplicandos del reg
signal sumando: Array_vect_37bits;      -- Cada una de las M sumas (M -1  intermedias + la final = dataout)
signal datain_valid_Bloque :std_logic_vector(0 to M);

-- SEÑALES PARA EL PRIMER MILTIPLICADOR
signal Primer_datain : std_logic_vector(17 downto 0);
signal Primer_coef : std_logic_vector(17 downto 0);

begin
Primer_datain <= Dato_reg(0)(15)&Dato_reg(0)(15)&Dato_reg(0); -- Extemdemos a 18
Primer_coef <= Coefs(0)(15)&Coefs(0)(15)&Coefs(0);

dato_reg(0) <= datain;
datain_valid_bloque(0)<=datain_valid;
sumando(0)(36) <= sumando(0)(35); -- Hay que hacer esto ya que las sumas se hacen en 37 bits
                                  -- y el resultado del multiplicsdor está en 36


-- Sea un filtro de orden M, tiene M + 1 coeficientes por lo que tendremos que instanciar
-- la estructura inicial mas M bloques repetidos de multiplicaicon y suma con sus 
-- retrasos correspondientes.


-- GENERAMOS PRIMER BLOQUE

Primer_Multiplicador : Multiplicador
  PORT MAP (
    clk => clk_DCM,
    a => Primer_datain, -- Ultimo dato recibido
    b => Primer_coef, -- Primer coeficiente del filtro
    ce => '1',
    p => sumando(0)(35 downto 0)    -- Primera multipliacion
  );

-- GENERAMOS LOS M BLOQUES SIGUIENTES
BLOQUES_gen: for i in 0 to M-1 generate
   BLOQUE_inst: BLOQUE PORT MAP (
          clk => clk_DCM,
          rst => rst,
          ce => '1',
			 clk_en => datain_valid,
			 datain_valid_prop =>datain_valid_bloque(i),
			 dataout_valid_prop =>datain_valid_bloque(i+1),
          reg_datain_in => Dato_reg(i),
          ROM_datain_in => Coefs(i),
          reg_datain_out => Dato_reg(i+1), -- Conectamos la salida de uno con la entrada del siguiente 
          sumando_in => sumando(i),
          sumando_out => sumando(i+1)  -- Conectamos la salida de uno con la entrada del siguiente
        );


end generate;	


rst_valido <= not rst; -- Ya que los botones si no los pulsas dan 1



-- DCM 
DCM_gen_inst: DCM_gen
  port map
   (-- Clock in ports
    CLK_IN1 => clk,
    -- Clock out ports
    CLK_OUT1 => CLK_DCM,
    -- Status and control signals
    RESET  => rst_valido,
    LOCKED => open);
end Behavioral;

