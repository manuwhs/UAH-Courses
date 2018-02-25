--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: Filtro_FIR_Sistologico_timesim.vhd
-- /___/   /\     Timestamp: Sun Dec 09 16:04:20 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf Filtro_FIR_Sistologico.pcf -rpw 100 -tpw 0 -ar Structure -tm Filtro_FIR_Sistologico -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Filtro_FIR_Sistologico.ncd Filtro_FIR_Sistologico_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.19 2011-06-20)
-- Input file	: Filtro_FIR_Sistologico.ncd
-- Output file	: C:\Users\manuel\Desktop\final\Filtro_FIR_Sistologico\netgen\par\Filtro_FIR_Sistologico_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Filtro_FIR_Sistologico
-- Xilinx	: D:\Programas\XILINX\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Filtro_FIR_Sistologico is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    datain_valid : in STD_LOGIC := 'X'; 
    dataout_valid : out STD_LOGIC; 
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    dataout : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end Filtro_FIR_Sistologico;

architecture Structure of Filtro_FIR_Sistologico is
  signal datain_valid_IBUF_0 : STD_LOGIC; 
  signal clk_DCM : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_0 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_propagado_2007 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_propagado_2008 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_0 : STD_LOGIC; 
  signal datain_4_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_0 : STD_LOGIC; 
  signal datain_5_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_Q : STD_LOGIC; 
  signal datain_6_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_0 : STD_LOGIC; 
  signal datain_7_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_0 : STD_LOGIC; 
  signal datain_8_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_Q : STD_LOGIC; 
  signal dataout_0_OBUF_2030 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_0 : STD_LOGIC; 
  signal datain_9_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_0 : STD_LOGIC; 
  signal dataout_1_OBUF_2036 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_0 : STD_LOGIC; 
  signal DCM_gen_inst_clkin1_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_propagado_2040 : STD_LOGIC; 
  signal dataout_2_OBUF_2041 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_Q : STD_LOGIC; 
  signal dataout_3_OBUF_2043 : STD_LOGIC; 
  signal dataout_4_OBUF_2044 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_Q : STD_LOGIC; 
  signal datain_10_IBUF_0 : STD_LOGIC; 
  signal dataout_5_OBUF_2047 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_Q : STD_LOGIC; 
  signal dataout_6_OBUF_2050 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_Q : STD_LOGIC; 
  signal dataout_7_OBUF_2055 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_Q : STD_LOGIC; 
  signal datain_11_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_Q : STD_LOGIC; 
  signal dataout_8_OBUF_2060 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_Q : STD_LOGIC; 
  signal datain_12_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_Q : STD_LOGIC; 
  signal dataout_9_OBUF_2066 : STD_LOGIC; 
  signal datain_13_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_0 : STD_LOGIC; 
  signal datain_14_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_0 : STD_LOGIC; 
  signal datain_15_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_0 : STD_LOGIC; 
  signal dataout_10_OBUF_2073 : STD_LOGIC; 
  signal dataout_11_OBUF_2074 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_0 : STD_LOGIC; 
  signal dataout_12_OBUF_2076 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_0 : STD_LOGIC; 
  signal dataout_13_OBUF_2078 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_0 : STD_LOGIC; 
  signal dataout_14_OBUF_2080 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_0 : STD_LOGIC; 
  signal dataout_15_OBUF_2082 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_propagado_2084 : STD_LOGIC; 
  signal datain_0_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_0 : STD_LOGIC; 
  signal datain_1_IBUF_0 : STD_LOGIC; 
  signal datain_2_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_0 : STD_LOGIC; 
  signal datain_3_IBUF_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_0 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_ML_NEW_O : STD_LOGIC; 
  signal sumando_0_0_Q : STD_LOGIC; 
  signal sumando_0_1_Q : STD_LOGIC; 
  signal sumando_0_2_Q : STD_LOGIC; 
  signal sumando_0_3_Q : STD_LOGIC; 
  signal sumando_0_4_Q : STD_LOGIC; 
  signal sumando_0_5_Q : STD_LOGIC; 
  signal sumando_0_6_Q : STD_LOGIC; 
  signal sumando_0_7_Q : STD_LOGIC; 
  signal sumando_0_8_Q : STD_LOGIC; 
  signal sumando_0_9_Q : STD_LOGIC; 
  signal sumando_0_10_Q : STD_LOGIC; 
  signal sumando_0_11_Q : STD_LOGIC; 
  signal sumando_0_12_Q : STD_LOGIC; 
  signal sumando_0_13_Q : STD_LOGIC; 
  signal sumando_0_14_Q : STD_LOGIC; 
  signal sumando_0_15_Q : STD_LOGIC; 
  signal sumando_0_16_Q : STD_LOGIC; 
  signal sumando_0_17_Q : STD_LOGIC; 
  signal sumando_0_18_Q : STD_LOGIC; 
  signal sumando_0_19_Q : STD_LOGIC; 
  signal sumando_0_20_Q : STD_LOGIC; 
  signal sumando_0_21_Q : STD_LOGIC; 
  signal sumando_0_22_Q : STD_LOGIC; 
  signal sumando_0_23_Q : STD_LOGIC; 
  signal sumando_0_24_Q : STD_LOGIC; 
  signal sumando_0_25_Q : STD_LOGIC; 
  signal sumando_0_26_Q : STD_LOGIC; 
  signal sumando_0_27_Q : STD_LOGIC; 
  signal sumando_0_28_Q : STD_LOGIC; 
  signal sumando_0_29_Q : STD_LOGIC; 
  signal sumando_0_30_Q : STD_LOGIC; 
  signal sumando_0_31_Q : STD_LOGIC; 
  signal sumando_0_32_Q : STD_LOGIC; 
  signal sumando_0_33_Q : STD_LOGIC; 
  signal sumando_0_34_Q : STD_LOGIC; 
  signal sumando_0_35_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_16_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_17_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_18_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_19_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_20_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_21_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_22_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_23_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_24_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_25_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_26_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_27_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_28_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_29_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_30_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_31_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_32_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_33_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_34_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_16_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_17_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_18_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_19_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_20_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_21_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_22_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_23_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_24_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_25_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_26_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_27_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_28_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_29_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_30_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_31_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_32_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_33_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_34_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_16_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_17_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_18_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_19_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_20_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_21_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_22_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_23_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_24_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_25_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_26_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_27_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_28_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_29_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_30_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_31_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_32_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_33_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_34_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_16_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_17_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_18_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_19_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_20_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_21_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_22_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_23_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_24_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_25_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_26_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_27_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_28_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_29_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_30_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_31_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_32_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_33_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_34_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_ML_NEW_DIVCLK : STD_LOGIC; 
  signal DCM_gen_inst_clk0 : STD_LOGIC; 
  signal sumando_3_36_Q : STD_LOGIC; 
  signal sumando_3_17_Q : STD_LOGIC; 
  signal sumando_3_16_Q : STD_LOGIC; 
  signal sumando_3_15_Q : STD_LOGIC; 
  signal sumando_3_14_Q : STD_LOGIC; 
  signal sumando_3_13_Q : STD_LOGIC; 
  signal sumando_3_12_Q : STD_LOGIC; 
  signal sumando_3_11_Q : STD_LOGIC; 
  signal sumando_3_10_Q : STD_LOGIC; 
  signal sumando_3_9_Q : STD_LOGIC; 
  signal sumando_3_8_Q : STD_LOGIC; 
  signal sumando_3_7_Q : STD_LOGIC; 
  signal sumando_3_6_Q : STD_LOGIC; 
  signal sumando_3_5_Q : STD_LOGIC; 
  signal sumando_3_4_Q : STD_LOGIC; 
  signal sumando_3_3_Q : STD_LOGIC; 
  signal sumando_3_2_Q : STD_LOGIC; 
  signal sumando_3_1_Q : STD_LOGIC; 
  signal sumando_3_0_Q : STD_LOGIC; 
  signal sumando_3_35_Q : STD_LOGIC; 
  signal sumando_3_34_Q : STD_LOGIC; 
  signal sumando_3_33_Q : STD_LOGIC; 
  signal sumando_3_32_Q : STD_LOGIC; 
  signal sumando_3_31_Q : STD_LOGIC; 
  signal sumando_3_30_Q : STD_LOGIC; 
  signal sumando_3_29_Q : STD_LOGIC; 
  signal sumando_3_28_Q : STD_LOGIC; 
  signal sumando_3_27_Q : STD_LOGIC; 
  signal sumando_3_26_Q : STD_LOGIC; 
  signal sumando_3_25_Q : STD_LOGIC; 
  signal sumando_3_24_Q : STD_LOGIC; 
  signal sumando_3_23_Q : STD_LOGIC; 
  signal sumando_3_22_Q : STD_LOGIC; 
  signal sumando_3_21_Q : STD_LOGIC; 
  signal sumando_3_20_Q : STD_LOGIC; 
  signal sumando_3_19_Q : STD_LOGIC; 
  signal sumando_3_18_Q : STD_LOGIC; 
  signal sumando_2_36_Q : STD_LOGIC; 
  signal sumando_2_17_Q : STD_LOGIC; 
  signal sumando_2_16_Q : STD_LOGIC; 
  signal sumando_2_15_Q : STD_LOGIC; 
  signal sumando_2_14_Q : STD_LOGIC; 
  signal sumando_2_13_Q : STD_LOGIC; 
  signal sumando_2_12_Q : STD_LOGIC; 
  signal sumando_2_11_Q : STD_LOGIC; 
  signal sumando_2_10_Q : STD_LOGIC; 
  signal sumando_2_9_Q : STD_LOGIC; 
  signal sumando_2_8_Q : STD_LOGIC; 
  signal sumando_2_7_Q : STD_LOGIC; 
  signal sumando_2_6_Q : STD_LOGIC; 
  signal sumando_2_5_Q : STD_LOGIC; 
  signal sumando_2_4_Q : STD_LOGIC; 
  signal sumando_2_3_Q : STD_LOGIC; 
  signal sumando_2_2_Q : STD_LOGIC; 
  signal sumando_2_1_Q : STD_LOGIC; 
  signal sumando_2_0_Q : STD_LOGIC; 
  signal sumando_2_35_Q : STD_LOGIC; 
  signal sumando_2_34_Q : STD_LOGIC; 
  signal sumando_2_33_Q : STD_LOGIC; 
  signal sumando_2_32_Q : STD_LOGIC; 
  signal sumando_2_31_Q : STD_LOGIC; 
  signal sumando_2_30_Q : STD_LOGIC; 
  signal sumando_2_29_Q : STD_LOGIC; 
  signal sumando_2_28_Q : STD_LOGIC; 
  signal sumando_2_27_Q : STD_LOGIC; 
  signal sumando_2_26_Q : STD_LOGIC; 
  signal sumando_2_25_Q : STD_LOGIC; 
  signal sumando_2_24_Q : STD_LOGIC; 
  signal sumando_2_23_Q : STD_LOGIC; 
  signal sumando_2_22_Q : STD_LOGIC; 
  signal sumando_2_21_Q : STD_LOGIC; 
  signal sumando_2_20_Q : STD_LOGIC; 
  signal sumando_2_19_Q : STD_LOGIC; 
  signal sumando_2_18_Q : STD_LOGIC; 
  signal sumando_1_36_Q : STD_LOGIC; 
  signal sumando_1_17_Q : STD_LOGIC; 
  signal sumando_1_16_Q : STD_LOGIC; 
  signal sumando_1_15_Q : STD_LOGIC; 
  signal sumando_1_14_Q : STD_LOGIC; 
  signal sumando_1_13_Q : STD_LOGIC; 
  signal sumando_1_12_Q : STD_LOGIC; 
  signal sumando_1_11_Q : STD_LOGIC; 
  signal sumando_1_10_Q : STD_LOGIC; 
  signal sumando_1_9_Q : STD_LOGIC; 
  signal sumando_1_8_Q : STD_LOGIC; 
  signal sumando_1_7_Q : STD_LOGIC; 
  signal sumando_1_6_Q : STD_LOGIC; 
  signal sumando_1_5_Q : STD_LOGIC; 
  signal sumando_1_4_Q : STD_LOGIC; 
  signal sumando_1_3_Q : STD_LOGIC; 
  signal sumando_1_2_Q : STD_LOGIC; 
  signal sumando_1_1_Q : STD_LOGIC; 
  signal sumando_1_0_Q : STD_LOGIC; 
  signal sumando_1_35_Q : STD_LOGIC; 
  signal sumando_1_34_Q : STD_LOGIC; 
  signal sumando_1_33_Q : STD_LOGIC; 
  signal sumando_1_32_Q : STD_LOGIC; 
  signal sumando_1_31_Q : STD_LOGIC; 
  signal sumando_1_30_Q : STD_LOGIC; 
  signal sumando_1_29_Q : STD_LOGIC; 
  signal sumando_1_28_Q : STD_LOGIC; 
  signal sumando_1_27_Q : STD_LOGIC; 
  signal sumando_1_26_Q : STD_LOGIC; 
  signal sumando_1_25_Q : STD_LOGIC; 
  signal sumando_1_24_Q : STD_LOGIC; 
  signal sumando_1_23_Q : STD_LOGIC; 
  signal sumando_1_22_Q : STD_LOGIC; 
  signal sumando_1_21_Q : STD_LOGIC; 
  signal sumando_1_20_Q : STD_LOGIC; 
  signal sumando_1_19_Q : STD_LOGIC; 
  signal sumando_1_18_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_Q : STD_LOGIC; 
  signal datain_4_IBUF_1 : STD_LOGIC; 
  signal datain_5_IBUF_4 : STD_LOGIC; 
  signal datain_6_IBUF_7 : STD_LOGIC; 
  signal datain_7_IBUF_10 : STD_LOGIC; 
  signal datain_8_IBUF_13 : STD_LOGIC; 
  signal datain_9_IBUF_20 : STD_LOGIC; 
  signal DCM_gen_inst_clkin1 : STD_LOGIC; 
  signal datain_10_IBUF_38 : STD_LOGIC; 
  signal datain_11_IBUF_43 : STD_LOGIC; 
  signal datain_12_IBUF_48 : STD_LOGIC; 
  signal datain_13_IBUF_53 : STD_LOGIC; 
  signal datain_14_IBUF_56 : STD_LOGIC; 
  signal datain_15_IBUF_59 : STD_LOGIC; 
  signal datain_valid_IBUF_72 : STD_LOGIC; 
  signal datain_0_IBUF_77 : STD_LOGIC; 
  signal rst_IBUF_80 : STD_LOGIC; 
  signal datain_1_IBUF_83 : STD_LOGIC; 
  signal datain_2_IBUF_86 : STD_LOGIC; 
  signal datain_3_IBUF_89 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT0 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT1 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT2 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT3 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT4 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT5 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT6 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT7 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT8 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT9 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT10 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT11 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT12 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT13 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT14 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT15 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT16 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT17 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT18 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT19 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT20 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT21 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT22 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT23 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT24 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT25 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT26 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT27 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT28 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT29 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT30 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT31 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT32 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT33 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT34 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT35 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT36 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT37 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT38 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT39 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT40 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT41 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT42 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT43 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT44 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT45 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT46 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCOUT47 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P0 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P1 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P2 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P3 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P4 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P5 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P6 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P7 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P8 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P9 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P10 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P11 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P12 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P13 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P14 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P15 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P16 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P17 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P18 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P19 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P20 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P21 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P22 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P23 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P24 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P25 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P26 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P27 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P28 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P29 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P30 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P31 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P32 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P33 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P34 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P35 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P36 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P37 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P38 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P39 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P40 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P41 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P42 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P43 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P44 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P45 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P46 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_P47 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT0 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT1 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT2 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT3 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT4 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT5 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT6 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT7 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT8 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT9 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT10 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT11 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT12 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT13 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT14 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT15 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT16 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCOUT17 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CARRYOUT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CARRYOUTF : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN0 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN1 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN2 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN3 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN4 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN5 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN6 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN7 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN8 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN9 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN10 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN11 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN12 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN13 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN14 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN15 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN16 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_BCIN17 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN0 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN1 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN2 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN3 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN4 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN5 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN6 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN7 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN8 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN9 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN10 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN11 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN12 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN13 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN14 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN15 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN16 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN17 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN18 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN19 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN20 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN21 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN22 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN23 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN24 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN25 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN26 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN27 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN28 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN29 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN30 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN31 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN32 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN33 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN34 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN35 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN36 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN37 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN38 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN39 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN40 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN41 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN42 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN43 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN44 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN45 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN46 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_PCIN47 : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTP_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTA_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CEA_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CEP_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CEB_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CEM_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTB_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CLK_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTM_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTOPMODE_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CEC_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CEOPMODE_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTD_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CED_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTCARRYIN_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_RSTC_INT : STD_LOGIC; 
  signal Primer_Multiplicador_blk00000003_CECARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P1 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P2 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P3 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P4 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P5 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P6 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P7 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P8 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P9 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P10 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P11 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P12 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P13 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P14 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P15 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P16 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P17 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P18 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P19 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P20 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P21 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P22 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P23 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P24 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P25 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P26 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P27 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P28 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P29 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P30 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P31 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P32 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P33 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P34 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P35 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P36 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P37 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P38 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P39 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P40 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P41 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P42 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P43 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P44 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P45 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P46 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P47 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P1 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P2 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P3 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P4 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P5 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P6 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P7 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P8 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P9 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P10 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P11 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P12 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P13 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P14 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P15 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P16 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P17 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P18 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P19 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P20 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P21 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P22 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P23 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P24 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P25 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P26 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P27 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P28 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P29 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P30 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P31 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P32 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P33 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P34 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P35 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P36 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P37 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P38 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P39 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P40 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P41 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P42 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P43 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P44 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P45 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P46 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P47 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P1 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P2 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P3 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P4 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P5 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P6 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P7 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P8 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P9 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P10 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P11 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P12 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P13 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P14 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P15 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P16 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P17 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P18 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P19 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P20 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P21 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P22 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P23 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P24 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P25 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P26 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P27 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P28 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P29 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P30 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P31 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P32 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P33 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P34 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P35 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P36 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P37 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P38 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P39 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P40 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P41 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P42 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P43 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P44 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P45 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P46 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P47 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P1 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P2 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P3 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P4 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P5 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P6 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P7 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P8 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P9 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P10 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P11 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P12 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P13 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P14 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P15 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P16 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P17 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P18 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P19 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P20 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P21 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P22 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P23 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P24 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P25 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P26 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P27 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P28 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P29 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P30 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P31 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P32 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P33 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P34 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P35 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P36 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P37 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P38 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P39 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P40 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P41 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P42 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P43 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P44 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P45 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P46 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P47 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P0 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P1 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P2 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P3 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P4 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P5 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P6 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P7 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P8 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P9 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P10 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P11 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P12 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P13 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P14 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P31 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P32 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P33 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P34 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P35 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P36 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47 : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47 : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47 : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47 : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT : STD_LOGIC;
 
  signal BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT : STD_LOGIC;
 
  signal DCM_gen_inst_dcm_sp_inst_STATUS0 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_STATUS1 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_STATUS2 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_STATUS3 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_STATUS4 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_STATUS5 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_STATUS6 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_STATUS7 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_LOCKED : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLK90 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_PSDONE : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLKDV : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLKFX180 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLK270 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLK180 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLKFX : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLK2X : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLK2X180 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_PSEN_INT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLKFB_INT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_CLKIN_INT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_PSINCDEC_INT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_RST_INTNOT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_PSCLK_INT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_DSSEN : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_Q : STD_LOGIC; 
  signal datain_7_IBUF_rt_1572 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_Q : STD_LOGIC; 
  signal datain_4_IBUF_rt_1566 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_Q : STD_LOGIC; 
  signal datain_5_IBUF_rt_1561 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_Q : STD_LOGIC; 
  signal datain_6_IBUF_rt_1556 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1608 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1603 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1598 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1591 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1631 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1626 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1621 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1614 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1654 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1649 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1644 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1637 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1677 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1672 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1667 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1660 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1700 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1695 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1690 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1683 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1723 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1718 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1713 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1706 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1746 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1741 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1736 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1729 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1769 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1764 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1759 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1752 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1792 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1787 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1782 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1775 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1815 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1810 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1805 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_Q : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1798 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1838 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1833 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1828 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1821 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1861 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1856 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1851 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1844 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_rt_1893 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_rt_1887 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_rt_1882 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_Q : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_rt_1877 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1918 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1913 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1908 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_Q : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1901 : STD_LOGIC; 
  signal BLOQUES_gen_3_BLOQUE_inst_propagado_rstpot_1944 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_propagado_rstpot_1943 : STD_LOGIC; 
  signal BLOQUES_gen_2_BLOQUE_inst_propagado_pack_1 : STD_LOGIC; 
  signal BLOQUES_gen_1_BLOQUE_inst_propagado_rstpot_1955 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_propagado_rstpot_1954 : STD_LOGIC; 
  signal BLOQUES_gen_0_BLOQUE_inst_propagado_pack_1 : STD_LOGIC; 
  signal NlwBufferSignal_dataout_valid_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_DCM_gen_inst_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_propagado_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_propagado_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_propagado_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_propagado_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_IN : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
begin
  datain_4_IBUF : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_4_IBUF_1,
      I => datain(4)
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_4_IBUF_1,
      O => datain_4_IBUF_0
    );
  datain_5_IBUF : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_5_IBUF_4,
      I => datain(5)
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_5_IBUF_4,
      O => datain_5_IBUF_0
    );
  datain_6_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_6_IBUF_7,
      I => datain(6)
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_6_IBUF_7,
      O => datain_6_IBUF_0
    );
  datain_7_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_7_IBUF_10,
      I => datain(7)
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_7_IBUF_10,
      O => datain_7_IBUF_0
    );
  datain_8_IBUF : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_8_IBUF_13,
      I => datain(8)
    );
  ProtoComp2_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_8_IBUF_13,
      O => datain_8_IBUF_0
    );
  dataout_valid_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => NlwBufferSignal_dataout_valid_OBUF_I,
      O => dataout_valid
    );
  dataout_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => NlwBufferSignal_dataout_0_OBUF_I,
      O => dataout(0)
    );
  datain_9_IBUF : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_9_IBUF_20,
      I => datain(9)
    );
  ProtoComp2_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_9_IBUF_20,
      O => datain_9_IBUF_0
    );
  dataout_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => NlwBufferSignal_dataout_1_OBUF_I,
      O => dataout(1)
    );
  DCM_gen_inst_clkin1_buf : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => DCM_gen_inst_clkin1,
      I => clk
    );
  ProtoComp2_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_clkin1,
      O => DCM_gen_inst_clkin1_0
    );
  dataout_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => NlwBufferSignal_dataout_2_OBUF_I,
      O => dataout(2)
    );
  dataout_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => NlwBufferSignal_dataout_3_OBUF_I,
      O => dataout(3)
    );
  dataout_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => NlwBufferSignal_dataout_4_OBUF_I,
      O => dataout(4)
    );
  dataout_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => NlwBufferSignal_dataout_5_OBUF_I,
      O => dataout(5)
    );
  dataout_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => NlwBufferSignal_dataout_6_OBUF_I,
      O => dataout(6)
    );
  datain_10_IBUF : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_10_IBUF_38,
      I => datain(10)
    );
  ProtoComp2_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_10_IBUF_38,
      O => datain_10_IBUF_0
    );
  dataout_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => NlwBufferSignal_dataout_7_OBUF_I,
      O => dataout(7)
    );
  datain_11_IBUF : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_11_IBUF_43,
      I => datain(11)
    );
  ProtoComp2_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_11_IBUF_43,
      O => datain_11_IBUF_0
    );
  dataout_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => NlwBufferSignal_dataout_8_OBUF_I,
      O => dataout(8)
    );
  datain_12_IBUF : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_12_IBUF_48,
      I => datain(12)
    );
  ProtoComp2_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_12_IBUF_48,
      O => datain_12_IBUF_0
    );
  dataout_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => NlwBufferSignal_dataout_9_OBUF_I,
      O => dataout(9)
    );
  datain_13_IBUF : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_13_IBUF_53,
      I => datain(13)
    );
  ProtoComp2_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_13_IBUF_53,
      O => datain_13_IBUF_0
    );
  datain_14_IBUF : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_14_IBUF_56,
      I => datain(14)
    );
  ProtoComp2_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_14_IBUF_56,
      O => datain_14_IBUF_0
    );
  datain_15_IBUF : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_15_IBUF_59,
      I => datain(15)
    );
  ProtoComp2_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_15_IBUF_59,
      O => datain_15_IBUF_0
    );
  dataout_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => NlwBufferSignal_dataout_10_OBUF_I,
      O => dataout(10)
    );
  dataout_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => NlwBufferSignal_dataout_11_OBUF_I,
      O => dataout(11)
    );
  dataout_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => NlwBufferSignal_dataout_12_OBUF_I,
      O => dataout(12)
    );
  dataout_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => NlwBufferSignal_dataout_13_OBUF_I,
      O => dataout(13)
    );
  dataout_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => NlwBufferSignal_dataout_14_OBUF_I,
      O => dataout(14)
    );
  datain_valid_IBUF : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_valid_IBUF_72,
      I => datain_valid
    );
  ProtoComp2_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_valid_IBUF_72,
      O => datain_valid_IBUF_0
    );
  dataout_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD36"
    )
    port map (
      I => NlwBufferSignal_dataout_15_OBUF_I,
      O => dataout(15)
    );
  datain_0_IBUF : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_0_IBUF_77,
      I => datain(0)
    );
  ProtoComp2_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_0_IBUF_77,
      O => datain_0_IBUF_0
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_80,
      I => rst
    );
  ProtoComp2_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_80,
      O => rst_IBUF_0
    );
  datain_1_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_1_IBUF_83,
      I => datain(1)
    );
  ProtoComp2_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_1_IBUF_83,
      O => datain_1_IBUF_0
    );
  datain_2_IBUF : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_2_IBUF_86,
      I => datain(2)
    );
  ProtoComp2_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_2_IBUF_86,
      O => datain_2_IBUF_0
    );
  datain_3_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_3_IBUF_89,
      I => datain(3)
    );
  ProtoComp2_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_3_IBUF_89,
      O => datain_3_IBUF_0
    );
  SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X1Y15"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I,
      O => DCM_gen_inst_dcm_sp_inst_ML_NEW_O
    );
  Primer_Multiplicador_blk00000003_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTP_INT
    );
  Primer_Multiplicador_blk00000003_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTA_INT
    );
  Primer_Multiplicador_blk00000003_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Primer_Multiplicador_blk00000003_CEA_INT
    );
  Primer_Multiplicador_blk00000003_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Primer_Multiplicador_blk00000003_CEP_INT
    );
  Primer_Multiplicador_blk00000003_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Primer_Multiplicador_blk00000003_CEB_INT
    );
  Primer_Multiplicador_blk00000003_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => Primer_Multiplicador_blk00000003_CEM_INT
    );
  Primer_Multiplicador_blk00000003_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTB_INT
    );
  Primer_Multiplicador_blk00000003_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => Primer_Multiplicador_blk00000003_CLK_INT
    );
  Primer_Multiplicador_blk00000003_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTM_INT
    );
  Primer_Multiplicador_blk00000003_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTOPMODE_INT
    );
  Primer_Multiplicador_blk00000003_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Primer_Multiplicador_blk00000003_CEC_INT
    );
  Primer_Multiplicador_blk00000003_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Primer_Multiplicador_blk00000003_CEOPMODE_INT
    );
  Primer_Multiplicador_blk00000003_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTD_INT
    );
  Primer_Multiplicador_blk00000003_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Primer_Multiplicador_blk00000003_CED_INT
    );
  Primer_Multiplicador_blk00000003_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTCARRYIN_INT
    );
  Primer_Multiplicador_blk00000003_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Primer_Multiplicador_blk00000003_RSTC_INT
    );
  Primer_Multiplicador_blk00000003_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Primer_Multiplicador_blk00000003_CECARRYIN_INT
    );
  Primer_Multiplicador_blk00000003 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 1,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y15"
    )
    port map (
      CECARRYIN => Primer_Multiplicador_blk00000003_CECARRYIN_INT,
      RSTC => Primer_Multiplicador_blk00000003_RSTC_INT,
      RSTCARRYIN => Primer_Multiplicador_blk00000003_RSTCARRYIN_INT,
      CED => Primer_Multiplicador_blk00000003_CED_INT,
      RSTD => Primer_Multiplicador_blk00000003_RSTD_INT,
      CEOPMODE => Primer_Multiplicador_blk00000003_CEOPMODE_INT,
      CEC => Primer_Multiplicador_blk00000003_CEC_INT,
      RSTOPMODE => Primer_Multiplicador_blk00000003_RSTOPMODE_INT,
      RSTM => Primer_Multiplicador_blk00000003_RSTM_INT,
      CLK => Primer_Multiplicador_blk00000003_CLK_INT,
      RSTB => Primer_Multiplicador_blk00000003_RSTB_INT,
      CEM => Primer_Multiplicador_blk00000003_CEM_INT,
      CEB => Primer_Multiplicador_blk00000003_CEB_INT,
      CARRYIN => GND,
      CEP => Primer_Multiplicador_blk00000003_CEP_INT,
      CEA => Primer_Multiplicador_blk00000003_CEA_INT,
      RSTA => Primer_Multiplicador_blk00000003_RSTA_INT,
      RSTP => Primer_Multiplicador_blk00000003_RSTP_INT,
      CARRYOUTF => Primer_Multiplicador_blk00000003_CARRYOUTF,
      CARRYOUT => Primer_Multiplicador_blk00000003_CARRYOUT,
      B(17) => datain_15_IBUF_0,
      B(16) => datain_15_IBUF_0,
      B(15) => datain_15_IBUF_0,
      B(14) => datain_14_IBUF_0,
      B(13) => datain_13_IBUF_0,
      B(12) => datain_12_IBUF_0,
      B(11) => datain_11_IBUF_0,
      B(10) => datain_10_IBUF_0,
      B(9) => datain_9_IBUF_0,
      B(8) => datain_8_IBUF_0,
      B(7) => datain_7_IBUF_0,
      B(6) => datain_6_IBUF_0,
      B(5) => datain_5_IBUF_0,
      B(4) => datain_4_IBUF_0,
      B(3) => datain_3_IBUF_0,
      B(2) => datain_2_IBUF_0,
      B(1) => datain_1_IBUF_0,
      B(0) => datain_0_IBUF_0,
      PCIN(47) => Primer_Multiplicador_blk00000003_PCIN47,
      PCIN(46) => Primer_Multiplicador_blk00000003_PCIN46,
      PCIN(45) => Primer_Multiplicador_blk00000003_PCIN45,
      PCIN(44) => Primer_Multiplicador_blk00000003_PCIN44,
      PCIN(43) => Primer_Multiplicador_blk00000003_PCIN43,
      PCIN(42) => Primer_Multiplicador_blk00000003_PCIN42,
      PCIN(41) => Primer_Multiplicador_blk00000003_PCIN41,
      PCIN(40) => Primer_Multiplicador_blk00000003_PCIN40,
      PCIN(39) => Primer_Multiplicador_blk00000003_PCIN39,
      PCIN(38) => Primer_Multiplicador_blk00000003_PCIN38,
      PCIN(37) => Primer_Multiplicador_blk00000003_PCIN37,
      PCIN(36) => Primer_Multiplicador_blk00000003_PCIN36,
      PCIN(35) => Primer_Multiplicador_blk00000003_PCIN35,
      PCIN(34) => Primer_Multiplicador_blk00000003_PCIN34,
      PCIN(33) => Primer_Multiplicador_blk00000003_PCIN33,
      PCIN(32) => Primer_Multiplicador_blk00000003_PCIN32,
      PCIN(31) => Primer_Multiplicador_blk00000003_PCIN31,
      PCIN(30) => Primer_Multiplicador_blk00000003_PCIN30,
      PCIN(29) => Primer_Multiplicador_blk00000003_PCIN29,
      PCIN(28) => Primer_Multiplicador_blk00000003_PCIN28,
      PCIN(27) => Primer_Multiplicador_blk00000003_PCIN27,
      PCIN(26) => Primer_Multiplicador_blk00000003_PCIN26,
      PCIN(25) => Primer_Multiplicador_blk00000003_PCIN25,
      PCIN(24) => Primer_Multiplicador_blk00000003_PCIN24,
      PCIN(23) => Primer_Multiplicador_blk00000003_PCIN23,
      PCIN(22) => Primer_Multiplicador_blk00000003_PCIN22,
      PCIN(21) => Primer_Multiplicador_blk00000003_PCIN21,
      PCIN(20) => Primer_Multiplicador_blk00000003_PCIN20,
      PCIN(19) => Primer_Multiplicador_blk00000003_PCIN19,
      PCIN(18) => Primer_Multiplicador_blk00000003_PCIN18,
      PCIN(17) => Primer_Multiplicador_blk00000003_PCIN17,
      PCIN(16) => Primer_Multiplicador_blk00000003_PCIN16,
      PCIN(15) => Primer_Multiplicador_blk00000003_PCIN15,
      PCIN(14) => Primer_Multiplicador_blk00000003_PCIN14,
      PCIN(13) => Primer_Multiplicador_blk00000003_PCIN13,
      PCIN(12) => Primer_Multiplicador_blk00000003_PCIN12,
      PCIN(11) => Primer_Multiplicador_blk00000003_PCIN11,
      PCIN(10) => Primer_Multiplicador_blk00000003_PCIN10,
      PCIN(9) => Primer_Multiplicador_blk00000003_PCIN9,
      PCIN(8) => Primer_Multiplicador_blk00000003_PCIN8,
      PCIN(7) => Primer_Multiplicador_blk00000003_PCIN7,
      PCIN(6) => Primer_Multiplicador_blk00000003_PCIN6,
      PCIN(5) => Primer_Multiplicador_blk00000003_PCIN5,
      PCIN(4) => Primer_Multiplicador_blk00000003_PCIN4,
      PCIN(3) => Primer_Multiplicador_blk00000003_PCIN3,
      PCIN(2) => Primer_Multiplicador_blk00000003_PCIN2,
      PCIN(1) => Primer_Multiplicador_blk00000003_PCIN1,
      PCIN(0) => Primer_Multiplicador_blk00000003_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => VCC,
      A(16) => VCC,
      A(15) => VCC,
      A(14) => VCC,
      A(13) => VCC,
      A(12) => VCC,
      A(11) => VCC,
      A(10) => VCC,
      A(9) => GND,
      A(8) => VCC,
      A(7) => GND,
      A(6) => VCC,
      A(5) => VCC,
      A(4) => VCC,
      A(3) => VCC,
      A(2) => VCC,
      A(1) => VCC,
      A(0) => GND,
      BCIN(17) => Primer_Multiplicador_blk00000003_BCIN17,
      BCIN(16) => Primer_Multiplicador_blk00000003_BCIN16,
      BCIN(15) => Primer_Multiplicador_blk00000003_BCIN15,
      BCIN(14) => Primer_Multiplicador_blk00000003_BCIN14,
      BCIN(13) => Primer_Multiplicador_blk00000003_BCIN13,
      BCIN(12) => Primer_Multiplicador_blk00000003_BCIN12,
      BCIN(11) => Primer_Multiplicador_blk00000003_BCIN11,
      BCIN(10) => Primer_Multiplicador_blk00000003_BCIN10,
      BCIN(9) => Primer_Multiplicador_blk00000003_BCIN9,
      BCIN(8) => Primer_Multiplicador_blk00000003_BCIN8,
      BCIN(7) => Primer_Multiplicador_blk00000003_BCIN7,
      BCIN(6) => Primer_Multiplicador_blk00000003_BCIN6,
      BCIN(5) => Primer_Multiplicador_blk00000003_BCIN5,
      BCIN(4) => Primer_Multiplicador_blk00000003_BCIN4,
      BCIN(3) => Primer_Multiplicador_blk00000003_BCIN3,
      BCIN(2) => Primer_Multiplicador_blk00000003_BCIN2,
      BCIN(1) => Primer_Multiplicador_blk00000003_BCIN1,
      BCIN(0) => Primer_Multiplicador_blk00000003_BCIN0,
      BCOUT(17) => Primer_Multiplicador_blk00000003_BCOUT17,
      BCOUT(16) => Primer_Multiplicador_blk00000003_BCOUT16,
      BCOUT(15) => Primer_Multiplicador_blk00000003_BCOUT15,
      BCOUT(14) => Primer_Multiplicador_blk00000003_BCOUT14,
      BCOUT(13) => Primer_Multiplicador_blk00000003_BCOUT13,
      BCOUT(12) => Primer_Multiplicador_blk00000003_BCOUT12,
      BCOUT(11) => Primer_Multiplicador_blk00000003_BCOUT11,
      BCOUT(10) => Primer_Multiplicador_blk00000003_BCOUT10,
      BCOUT(9) => Primer_Multiplicador_blk00000003_BCOUT9,
      BCOUT(8) => Primer_Multiplicador_blk00000003_BCOUT8,
      BCOUT(7) => Primer_Multiplicador_blk00000003_BCOUT7,
      BCOUT(6) => Primer_Multiplicador_blk00000003_BCOUT6,
      BCOUT(5) => Primer_Multiplicador_blk00000003_BCOUT5,
      BCOUT(4) => Primer_Multiplicador_blk00000003_BCOUT4,
      BCOUT(3) => Primer_Multiplicador_blk00000003_BCOUT3,
      BCOUT(2) => Primer_Multiplicador_blk00000003_BCOUT2,
      BCOUT(1) => Primer_Multiplicador_blk00000003_BCOUT1,
      BCOUT(0) => Primer_Multiplicador_blk00000003_BCOUT0,
      P(47) => Primer_Multiplicador_blk00000003_P47,
      P(46) => Primer_Multiplicador_blk00000003_P46,
      P(45) => Primer_Multiplicador_blk00000003_P45,
      P(44) => Primer_Multiplicador_blk00000003_P44,
      P(43) => Primer_Multiplicador_blk00000003_P43,
      P(42) => Primer_Multiplicador_blk00000003_P42,
      P(41) => Primer_Multiplicador_blk00000003_P41,
      P(40) => Primer_Multiplicador_blk00000003_P40,
      P(39) => Primer_Multiplicador_blk00000003_P39,
      P(38) => Primer_Multiplicador_blk00000003_P38,
      P(37) => Primer_Multiplicador_blk00000003_P37,
      P(36) => Primer_Multiplicador_blk00000003_P36,
      P(35) => Primer_Multiplicador_blk00000003_P35,
      P(34) => Primer_Multiplicador_blk00000003_P34,
      P(33) => Primer_Multiplicador_blk00000003_P33,
      P(32) => Primer_Multiplicador_blk00000003_P32,
      P(31) => Primer_Multiplicador_blk00000003_P31,
      P(30) => Primer_Multiplicador_blk00000003_P30,
      P(29) => Primer_Multiplicador_blk00000003_P29,
      P(28) => Primer_Multiplicador_blk00000003_P28,
      P(27) => Primer_Multiplicador_blk00000003_P27,
      P(26) => Primer_Multiplicador_blk00000003_P26,
      P(25) => Primer_Multiplicador_blk00000003_P25,
      P(24) => Primer_Multiplicador_blk00000003_P24,
      P(23) => Primer_Multiplicador_blk00000003_P23,
      P(22) => Primer_Multiplicador_blk00000003_P22,
      P(21) => Primer_Multiplicador_blk00000003_P21,
      P(20) => Primer_Multiplicador_blk00000003_P20,
      P(19) => Primer_Multiplicador_blk00000003_P19,
      P(18) => Primer_Multiplicador_blk00000003_P18,
      P(17) => Primer_Multiplicador_blk00000003_P17,
      P(16) => Primer_Multiplicador_blk00000003_P16,
      P(15) => Primer_Multiplicador_blk00000003_P15,
      P(14) => Primer_Multiplicador_blk00000003_P14,
      P(13) => Primer_Multiplicador_blk00000003_P13,
      P(12) => Primer_Multiplicador_blk00000003_P12,
      P(11) => Primer_Multiplicador_blk00000003_P11,
      P(10) => Primer_Multiplicador_blk00000003_P10,
      P(9) => Primer_Multiplicador_blk00000003_P9,
      P(8) => Primer_Multiplicador_blk00000003_P8,
      P(7) => Primer_Multiplicador_blk00000003_P7,
      P(6) => Primer_Multiplicador_blk00000003_P6,
      P(5) => Primer_Multiplicador_blk00000003_P5,
      P(4) => Primer_Multiplicador_blk00000003_P4,
      P(3) => Primer_Multiplicador_blk00000003_P3,
      P(2) => Primer_Multiplicador_blk00000003_P2,
      P(1) => Primer_Multiplicador_blk00000003_P1,
      P(0) => Primer_Multiplicador_blk00000003_P0,
      PCOUT(47) => Primer_Multiplicador_blk00000003_PCOUT47,
      PCOUT(46) => Primer_Multiplicador_blk00000003_PCOUT46,
      PCOUT(45) => Primer_Multiplicador_blk00000003_PCOUT45,
      PCOUT(44) => Primer_Multiplicador_blk00000003_PCOUT44,
      PCOUT(43) => Primer_Multiplicador_blk00000003_PCOUT43,
      PCOUT(42) => Primer_Multiplicador_blk00000003_PCOUT42,
      PCOUT(41) => Primer_Multiplicador_blk00000003_PCOUT41,
      PCOUT(40) => Primer_Multiplicador_blk00000003_PCOUT40,
      PCOUT(39) => Primer_Multiplicador_blk00000003_PCOUT39,
      PCOUT(38) => Primer_Multiplicador_blk00000003_PCOUT38,
      PCOUT(37) => Primer_Multiplicador_blk00000003_PCOUT37,
      PCOUT(36) => Primer_Multiplicador_blk00000003_PCOUT36,
      PCOUT(35) => Primer_Multiplicador_blk00000003_PCOUT35,
      PCOUT(34) => Primer_Multiplicador_blk00000003_PCOUT34,
      PCOUT(33) => Primer_Multiplicador_blk00000003_PCOUT33,
      PCOUT(32) => Primer_Multiplicador_blk00000003_PCOUT32,
      PCOUT(31) => Primer_Multiplicador_blk00000003_PCOUT31,
      PCOUT(30) => Primer_Multiplicador_blk00000003_PCOUT30,
      PCOUT(29) => Primer_Multiplicador_blk00000003_PCOUT29,
      PCOUT(28) => Primer_Multiplicador_blk00000003_PCOUT28,
      PCOUT(27) => Primer_Multiplicador_blk00000003_PCOUT27,
      PCOUT(26) => Primer_Multiplicador_blk00000003_PCOUT26,
      PCOUT(25) => Primer_Multiplicador_blk00000003_PCOUT25,
      PCOUT(24) => Primer_Multiplicador_blk00000003_PCOUT24,
      PCOUT(23) => Primer_Multiplicador_blk00000003_PCOUT23,
      PCOUT(22) => Primer_Multiplicador_blk00000003_PCOUT22,
      PCOUT(21) => Primer_Multiplicador_blk00000003_PCOUT21,
      PCOUT(20) => Primer_Multiplicador_blk00000003_PCOUT20,
      PCOUT(19) => Primer_Multiplicador_blk00000003_PCOUT19,
      PCOUT(18) => Primer_Multiplicador_blk00000003_PCOUT18,
      PCOUT(17) => Primer_Multiplicador_blk00000003_PCOUT17,
      PCOUT(16) => Primer_Multiplicador_blk00000003_PCOUT16,
      PCOUT(15) => Primer_Multiplicador_blk00000003_PCOUT15,
      PCOUT(14) => Primer_Multiplicador_blk00000003_PCOUT14,
      PCOUT(13) => Primer_Multiplicador_blk00000003_PCOUT13,
      PCOUT(12) => Primer_Multiplicador_blk00000003_PCOUT12,
      PCOUT(11) => Primer_Multiplicador_blk00000003_PCOUT11,
      PCOUT(10) => Primer_Multiplicador_blk00000003_PCOUT10,
      PCOUT(9) => Primer_Multiplicador_blk00000003_PCOUT9,
      PCOUT(8) => Primer_Multiplicador_blk00000003_PCOUT8,
      PCOUT(7) => Primer_Multiplicador_blk00000003_PCOUT7,
      PCOUT(6) => Primer_Multiplicador_blk00000003_PCOUT6,
      PCOUT(5) => Primer_Multiplicador_blk00000003_PCOUT5,
      PCOUT(4) => Primer_Multiplicador_blk00000003_PCOUT4,
      PCOUT(3) => Primer_Multiplicador_blk00000003_PCOUT3,
      PCOUT(2) => Primer_Multiplicador_blk00000003_PCOUT2,
      PCOUT(1) => Primer_Multiplicador_blk00000003_PCOUT1,
      PCOUT(0) => Primer_Multiplicador_blk00000003_PCOUT0,
      M(35) => sumando_0_35_Q,
      M(34) => sumando_0_34_Q,
      M(33) => sumando_0_33_Q,
      M(32) => sumando_0_32_Q,
      M(31) => sumando_0_31_Q,
      M(30) => sumando_0_30_Q,
      M(29) => sumando_0_29_Q,
      M(28) => sumando_0_28_Q,
      M(27) => sumando_0_27_Q,
      M(26) => sumando_0_26_Q,
      M(25) => sumando_0_25_Q,
      M(24) => sumando_0_24_Q,
      M(23) => sumando_0_23_Q,
      M(22) => sumando_0_22_Q,
      M(21) => sumando_0_21_Q,
      M(20) => sumando_0_20_Q,
      M(19) => sumando_0_19_Q,
      M(18) => sumando_0_18_Q,
      M(17) => sumando_0_17_Q,
      M(16) => sumando_0_16_Q,
      M(15) => sumando_0_15_Q,
      M(14) => sumando_0_14_Q,
      M(13) => sumando_0_13_Q,
      M(12) => sumando_0_12_Q,
      M(11) => sumando_0_11_Q,
      M(10) => sumando_0_10_Q,
      M(9) => sumando_0_9_Q,
      M(8) => sumando_0_8_Q,
      M(7) => sumando_0_7_Q,
      M(6) => sumando_0_6_Q,
      M(5) => sumando_0_5_Q,
      M(4) => sumando_0_4_Q,
      M(3) => sumando_0_3_Q,
      M(2) => sumando_0_2_Q,
      M(1) => sumando_0_1_Q,
      M(0) => sumando_0_0_Q
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT
    );
  BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 1,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y10"
    )
    port map (
      CECARRYIN => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT,
      RSTC => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT,
      RSTCARRYIN => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT,
      CED => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT,
      RSTD => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT,
      CEOPMODE => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT,
      CEC => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT,
      RSTOPMODE => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT,
      RSTM => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT,
      CLK => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT,
      RSTB => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT,
      CEM => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT,
      CEB => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT,
      CARRYIN => GND,
      CEP => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT,
      CEA => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT,
      RSTA => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT,
      RSTP => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT,
      CARRYOUTF => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF,
      CARRYOUT => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT,
      B(17) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(16) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(15) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(14) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_0,
      B(13) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_0,
      B(12) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_0,
      B(11) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      B(10) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      B(9) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      B(8) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      B(7) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      B(6) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      B(5) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      B(4) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      B(3) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_0,
      B(2) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_0,
      B(1) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_0,
      B(0) => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_0,
      PCIN(47) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47,
      PCIN(46) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46,
      PCIN(45) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45,
      PCIN(44) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44,
      PCIN(43) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43,
      PCIN(42) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42,
      PCIN(41) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41,
      PCIN(40) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40,
      PCIN(39) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39,
      PCIN(38) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38,
      PCIN(37) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37,
      PCIN(36) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36,
      PCIN(35) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35,
      PCIN(34) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34,
      PCIN(33) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33,
      PCIN(32) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32,
      PCIN(31) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31,
      PCIN(30) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30,
      PCIN(29) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29,
      PCIN(28) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28,
      PCIN(27) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27,
      PCIN(26) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26,
      PCIN(25) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25,
      PCIN(24) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24,
      PCIN(23) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23,
      PCIN(22) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22,
      PCIN(21) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21,
      PCIN(20) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20,
      PCIN(19) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19,
      PCIN(18) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18,
      PCIN(17) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17,
      PCIN(16) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16,
      PCIN(15) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15,
      PCIN(14) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14,
      PCIN(13) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13,
      PCIN(12) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12,
      PCIN(11) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11,
      PCIN(10) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10,
      PCIN(9) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9,
      PCIN(8) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8,
      PCIN(7) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7,
      PCIN(6) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6,
      PCIN(5) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5,
      PCIN(4) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4,
      PCIN(3) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3,
      PCIN(2) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2,
      PCIN(1) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1,
      PCIN(0) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => VCC,
      A(16) => VCC,
      A(15) => VCC,
      A(14) => VCC,
      A(13) => VCC,
      A(12) => VCC,
      A(11) => VCC,
      A(10) => VCC,
      A(9) => GND,
      A(8) => GND,
      A(7) => VCC,
      A(6) => GND,
      A(5) => VCC,
      A(4) => VCC,
      A(3) => GND,
      A(2) => GND,
      A(1) => VCC,
      A(0) => GND,
      BCIN(17) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17,
      BCIN(16) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16,
      BCIN(15) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15,
      BCIN(14) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14,
      BCIN(13) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13,
      BCIN(12) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12,
      BCIN(11) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11,
      BCIN(10) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10,
      BCIN(9) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9,
      BCIN(8) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8,
      BCIN(7) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7,
      BCIN(6) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6,
      BCIN(5) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5,
      BCIN(4) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4,
      BCIN(3) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3,
      BCIN(2) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2,
      BCIN(1) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1,
      BCIN(0) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0,
      BCOUT(17) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17,
      BCOUT(16) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16,
      BCOUT(15) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15,
      BCOUT(14) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14,
      BCOUT(13) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13,
      BCOUT(12) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12,
      BCOUT(11) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11,
      BCOUT(10) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10,
      BCOUT(9) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9,
      BCOUT(8) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8,
      BCOUT(7) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7,
      BCOUT(6) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6,
      BCOUT(5) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5,
      BCOUT(4) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4,
      BCOUT(3) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3,
      BCOUT(2) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2,
      BCOUT(1) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1,
      BCOUT(0) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0,
      P(47) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P47,
      P(46) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P46,
      P(45) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P45,
      P(44) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P44,
      P(43) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P43,
      P(42) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P42,
      P(41) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P41,
      P(40) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P40,
      P(39) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P39,
      P(38) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P38,
      P(37) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P37,
      P(36) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P36,
      P(35) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P35,
      P(34) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P34,
      P(33) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P33,
      P(32) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P32,
      P(31) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P31,
      P(30) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P30,
      P(29) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P29,
      P(28) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P28,
      P(27) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P27,
      P(26) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P26,
      P(25) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P25,
      P(24) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P24,
      P(23) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P23,
      P(22) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P22,
      P(21) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P21,
      P(20) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P20,
      P(19) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P19,
      P(18) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P18,
      P(17) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P17,
      P(16) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P16,
      P(15) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P15,
      P(14) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P14,
      P(13) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P13,
      P(12) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P12,
      P(11) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P11,
      P(10) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P10,
      P(9) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P9,
      P(8) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P8,
      P(7) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P7,
      P(6) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P6,
      P(5) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P5,
      P(4) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P4,
      P(3) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P3,
      P(2) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P2,
      P(1) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P1,
      P(0) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_P0,
      PCOUT(47) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47,
      PCOUT(46) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46,
      PCOUT(45) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45,
      PCOUT(44) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44,
      PCOUT(43) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43,
      PCOUT(42) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42,
      PCOUT(41) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41,
      PCOUT(40) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40,
      PCOUT(39) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39,
      PCOUT(38) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38,
      PCOUT(37) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37,
      PCOUT(36) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36,
      PCOUT(35) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35,
      PCOUT(34) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34,
      PCOUT(33) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33,
      PCOUT(32) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32,
      PCOUT(31) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31,
      PCOUT(30) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30,
      PCOUT(29) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29,
      PCOUT(28) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28,
      PCOUT(27) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27,
      PCOUT(26) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26,
      PCOUT(25) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25,
      PCOUT(24) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24,
      PCOUT(23) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23,
      PCOUT(22) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22,
      PCOUT(21) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21,
      PCOUT(20) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20,
      PCOUT(19) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19,
      PCOUT(18) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18,
      PCOUT(17) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17,
      PCOUT(16) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16,
      PCOUT(15) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15,
      PCOUT(14) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14,
      PCOUT(13) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13,
      PCOUT(12) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12,
      PCOUT(11) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11,
      PCOUT(10) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10,
      PCOUT(9) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9,
      PCOUT(8) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8,
      PCOUT(7) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7,
      PCOUT(6) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6,
      PCOUT(5) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5,
      PCOUT(4) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4,
      PCOUT(3) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3,
      PCOUT(2) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2,
      PCOUT(1) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1,
      PCOUT(0) => BLOQUES_gen_3_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0,
      M(35) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      M(34) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_34_Q,
      M(33) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_33_Q,
      M(32) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_32_Q,
      M(31) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_31_Q,
      M(30) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_30_Q,
      M(29) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_29_Q,
      M(28) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_28_Q,
      M(27) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_27_Q,
      M(26) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_26_Q,
      M(25) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_25_Q,
      M(24) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_24_Q,
      M(23) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_23_Q,
      M(22) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_22_Q,
      M(21) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_21_Q,
      M(20) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_20_Q,
      M(19) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_19_Q,
      M(18) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_18_Q,
      M(17) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_17_Q,
      M(16) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_16_Q,
      M(15) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_15_Q,
      M(14) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_14_Q,
      M(13) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_13_Q,
      M(12) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_12_Q,
      M(11) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_11_Q,
      M(10) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_10_Q,
      M(9) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_9_Q,
      M(8) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_8_Q,
      M(7) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_7_Q,
      M(6) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_6_Q,
      M(5) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_5_Q,
      M(4) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_4_Q,
      M(3) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_3_Q,
      M(2) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_2_Q,
      M(1) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_1_Q,
      M(0) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_0_Q
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT
    );
  BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 1,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X1Y14"
    )
    port map (
      CECARRYIN => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT,
      RSTC => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT,
      RSTCARRYIN => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT,
      CED => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT,
      RSTD => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT,
      CEOPMODE => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT,
      CEC => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT,
      RSTOPMODE => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT,
      RSTM => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT,
      CLK => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT,
      RSTB => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT,
      CEM => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT,
      CEB => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT,
      CARRYIN => GND,
      CEP => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT,
      CEA => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT,
      RSTA => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT,
      RSTP => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT,
      CARRYOUTF => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF,
      CARRYOUT => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT,
      B(17) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(16) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(15) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(14) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_0,
      B(13) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_0,
      B(12) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_0,
      B(11) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      B(10) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      B(9) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      B(8) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      B(7) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      B(6) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      B(5) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      B(4) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      B(3) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      B(2) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      B(1) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      B(0) => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      PCIN(47) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47,
      PCIN(46) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46,
      PCIN(45) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45,
      PCIN(44) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44,
      PCIN(43) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43,
      PCIN(42) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42,
      PCIN(41) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41,
      PCIN(40) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40,
      PCIN(39) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39,
      PCIN(38) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38,
      PCIN(37) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37,
      PCIN(36) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36,
      PCIN(35) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35,
      PCIN(34) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34,
      PCIN(33) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33,
      PCIN(32) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32,
      PCIN(31) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31,
      PCIN(30) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30,
      PCIN(29) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29,
      PCIN(28) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28,
      PCIN(27) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27,
      PCIN(26) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26,
      PCIN(25) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25,
      PCIN(24) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24,
      PCIN(23) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23,
      PCIN(22) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22,
      PCIN(21) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21,
      PCIN(20) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20,
      PCIN(19) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19,
      PCIN(18) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18,
      PCIN(17) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17,
      PCIN(16) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16,
      PCIN(15) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15,
      PCIN(14) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14,
      PCIN(13) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13,
      PCIN(12) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12,
      PCIN(11) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11,
      PCIN(10) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10,
      PCIN(9) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9,
      PCIN(8) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8,
      PCIN(7) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7,
      PCIN(6) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6,
      PCIN(5) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5,
      PCIN(4) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4,
      PCIN(3) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3,
      PCIN(2) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2,
      PCIN(1) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1,
      PCIN(0) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => VCC,
      A(16) => VCC,
      A(15) => VCC,
      A(14) => VCC,
      A(13) => VCC,
      A(12) => VCC,
      A(11) => VCC,
      A(10) => VCC,
      A(9) => GND,
      A(8) => GND,
      A(7) => GND,
      A(6) => VCC,
      A(5) => VCC,
      A(4) => VCC,
      A(3) => VCC,
      A(2) => GND,
      A(1) => GND,
      A(0) => GND,
      BCIN(17) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17,
      BCIN(16) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16,
      BCIN(15) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15,
      BCIN(14) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14,
      BCIN(13) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13,
      BCIN(12) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12,
      BCIN(11) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11,
      BCIN(10) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10,
      BCIN(9) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9,
      BCIN(8) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8,
      BCIN(7) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7,
      BCIN(6) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6,
      BCIN(5) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5,
      BCIN(4) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4,
      BCIN(3) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3,
      BCIN(2) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2,
      BCIN(1) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1,
      BCIN(0) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0,
      BCOUT(17) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17,
      BCOUT(16) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16,
      BCOUT(15) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15,
      BCOUT(14) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14,
      BCOUT(13) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13,
      BCOUT(12) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12,
      BCOUT(11) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11,
      BCOUT(10) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10,
      BCOUT(9) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9,
      BCOUT(8) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8,
      BCOUT(7) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7,
      BCOUT(6) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6,
      BCOUT(5) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5,
      BCOUT(4) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4,
      BCOUT(3) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3,
      BCOUT(2) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2,
      BCOUT(1) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1,
      BCOUT(0) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0,
      P(47) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P47,
      P(46) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P46,
      P(45) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P45,
      P(44) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P44,
      P(43) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P43,
      P(42) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P42,
      P(41) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P41,
      P(40) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P40,
      P(39) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P39,
      P(38) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P38,
      P(37) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P37,
      P(36) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P36,
      P(35) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P35,
      P(34) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P34,
      P(33) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P33,
      P(32) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P32,
      P(31) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P31,
      P(30) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P30,
      P(29) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P29,
      P(28) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P28,
      P(27) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P27,
      P(26) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P26,
      P(25) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P25,
      P(24) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P24,
      P(23) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P23,
      P(22) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P22,
      P(21) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P21,
      P(20) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P20,
      P(19) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P19,
      P(18) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P18,
      P(17) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P17,
      P(16) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P16,
      P(15) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P15,
      P(14) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P14,
      P(13) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P13,
      P(12) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P12,
      P(11) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P11,
      P(10) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P10,
      P(9) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P9,
      P(8) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P8,
      P(7) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P7,
      P(6) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P6,
      P(5) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P5,
      P(4) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P4,
      P(3) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P3,
      P(2) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P2,
      P(1) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P1,
      P(0) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_P0,
      PCOUT(47) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47,
      PCOUT(46) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46,
      PCOUT(45) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45,
      PCOUT(44) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44,
      PCOUT(43) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43,
      PCOUT(42) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42,
      PCOUT(41) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41,
      PCOUT(40) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40,
      PCOUT(39) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39,
      PCOUT(38) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38,
      PCOUT(37) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37,
      PCOUT(36) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36,
      PCOUT(35) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35,
      PCOUT(34) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34,
      PCOUT(33) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33,
      PCOUT(32) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32,
      PCOUT(31) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31,
      PCOUT(30) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30,
      PCOUT(29) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29,
      PCOUT(28) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28,
      PCOUT(27) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27,
      PCOUT(26) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26,
      PCOUT(25) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25,
      PCOUT(24) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24,
      PCOUT(23) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23,
      PCOUT(22) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22,
      PCOUT(21) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21,
      PCOUT(20) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20,
      PCOUT(19) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19,
      PCOUT(18) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18,
      PCOUT(17) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17,
      PCOUT(16) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16,
      PCOUT(15) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15,
      PCOUT(14) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14,
      PCOUT(13) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13,
      PCOUT(12) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12,
      PCOUT(11) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11,
      PCOUT(10) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10,
      PCOUT(9) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9,
      PCOUT(8) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8,
      PCOUT(7) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7,
      PCOUT(6) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6,
      PCOUT(5) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5,
      PCOUT(4) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4,
      PCOUT(3) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3,
      PCOUT(2) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2,
      PCOUT(1) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1,
      PCOUT(0) => BLOQUES_gen_2_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0,
      M(35) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      M(34) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_34_Q,
      M(33) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_33_Q,
      M(32) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_32_Q,
      M(31) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_31_Q,
      M(30) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_30_Q,
      M(29) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_29_Q,
      M(28) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_28_Q,
      M(27) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_27_Q,
      M(26) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_26_Q,
      M(25) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_25_Q,
      M(24) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_24_Q,
      M(23) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_23_Q,
      M(22) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_22_Q,
      M(21) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_21_Q,
      M(20) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_20_Q,
      M(19) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_19_Q,
      M(18) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_18_Q,
      M(17) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_17_Q,
      M(16) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_16_Q,
      M(15) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_15_Q,
      M(14) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_14_Q,
      M(13) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_13_Q,
      M(12) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_12_Q,
      M(11) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_11_Q,
      M(10) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_10_Q,
      M(9) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_9_Q,
      M(8) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_8_Q,
      M(7) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_7_Q,
      M(6) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_6_Q,
      M(5) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_5_Q,
      M(4) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_4_Q,
      M(3) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_3_Q,
      M(2) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_2_Q,
      M(1) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_1_Q,
      M(0) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_0_Q
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT
    );
  BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 1,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y12"
    )
    port map (
      CECARRYIN => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT,
      RSTC => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT,
      RSTCARRYIN => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT,
      CED => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT,
      RSTD => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT,
      CEOPMODE => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT,
      CEC => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT,
      RSTOPMODE => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT,
      RSTM => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT,
      CLK => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT,
      RSTB => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT,
      CEM => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT,
      CEB => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT,
      CARRYIN => GND,
      CEP => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT,
      CEA => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT,
      RSTA => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT,
      RSTP => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT,
      CARRYOUTF => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF,
      CARRYOUT => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT,
      B(17) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(16) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(15) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(14) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_0,
      B(13) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_0,
      B(12) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_0,
      B(11) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      B(10) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      B(9) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      B(8) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      B(7) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      B(6) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      B(5) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      B(4) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      B(3) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      B(2) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      B(1) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      B(0) => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      PCIN(47) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47,
      PCIN(46) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46,
      PCIN(45) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45,
      PCIN(44) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44,
      PCIN(43) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43,
      PCIN(42) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42,
      PCIN(41) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41,
      PCIN(40) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40,
      PCIN(39) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39,
      PCIN(38) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38,
      PCIN(37) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37,
      PCIN(36) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36,
      PCIN(35) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35,
      PCIN(34) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34,
      PCIN(33) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33,
      PCIN(32) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32,
      PCIN(31) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31,
      PCIN(30) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30,
      PCIN(29) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29,
      PCIN(28) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28,
      PCIN(27) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27,
      PCIN(26) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26,
      PCIN(25) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25,
      PCIN(24) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24,
      PCIN(23) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23,
      PCIN(22) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22,
      PCIN(21) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21,
      PCIN(20) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20,
      PCIN(19) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19,
      PCIN(18) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18,
      PCIN(17) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17,
      PCIN(16) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16,
      PCIN(15) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15,
      PCIN(14) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14,
      PCIN(13) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13,
      PCIN(12) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12,
      PCIN(11) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11,
      PCIN(10) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10,
      PCIN(9) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9,
      PCIN(8) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8,
      PCIN(7) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7,
      PCIN(6) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6,
      PCIN(5) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5,
      PCIN(4) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4,
      PCIN(3) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3,
      PCIN(2) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2,
      PCIN(1) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1,
      PCIN(0) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => VCC,
      A(16) => VCC,
      A(15) => VCC,
      A(14) => VCC,
      A(13) => VCC,
      A(12) => VCC,
      A(11) => VCC,
      A(10) => VCC,
      A(9) => GND,
      A(8) => GND,
      A(7) => VCC,
      A(6) => VCC,
      A(5) => GND,
      A(4) => GND,
      A(3) => GND,
      A(2) => VCC,
      A(1) => VCC,
      A(0) => VCC,
      BCIN(17) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17,
      BCIN(16) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16,
      BCIN(15) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15,
      BCIN(14) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14,
      BCIN(13) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13,
      BCIN(12) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12,
      BCIN(11) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11,
      BCIN(10) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10,
      BCIN(9) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9,
      BCIN(8) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8,
      BCIN(7) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7,
      BCIN(6) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6,
      BCIN(5) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5,
      BCIN(4) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4,
      BCIN(3) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3,
      BCIN(2) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2,
      BCIN(1) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1,
      BCIN(0) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0,
      BCOUT(17) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17,
      BCOUT(16) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16,
      BCOUT(15) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15,
      BCOUT(14) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14,
      BCOUT(13) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13,
      BCOUT(12) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12,
      BCOUT(11) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11,
      BCOUT(10) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10,
      BCOUT(9) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9,
      BCOUT(8) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8,
      BCOUT(7) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7,
      BCOUT(6) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6,
      BCOUT(5) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5,
      BCOUT(4) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4,
      BCOUT(3) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3,
      BCOUT(2) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2,
      BCOUT(1) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1,
      BCOUT(0) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0,
      P(47) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P47,
      P(46) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P46,
      P(45) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P45,
      P(44) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P44,
      P(43) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P43,
      P(42) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P42,
      P(41) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P41,
      P(40) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P40,
      P(39) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P39,
      P(38) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P38,
      P(37) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P37,
      P(36) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P36,
      P(35) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P35,
      P(34) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P34,
      P(33) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P33,
      P(32) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P32,
      P(31) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P31,
      P(30) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P30,
      P(29) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P29,
      P(28) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P28,
      P(27) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P27,
      P(26) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P26,
      P(25) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P25,
      P(24) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P24,
      P(23) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P23,
      P(22) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P22,
      P(21) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P21,
      P(20) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P20,
      P(19) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P19,
      P(18) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P18,
      P(17) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P17,
      P(16) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P16,
      P(15) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P15,
      P(14) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P14,
      P(13) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P13,
      P(12) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P12,
      P(11) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P11,
      P(10) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P10,
      P(9) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P9,
      P(8) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P8,
      P(7) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P7,
      P(6) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P6,
      P(5) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P5,
      P(4) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P4,
      P(3) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P3,
      P(2) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P2,
      P(1) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P1,
      P(0) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_P0,
      PCOUT(47) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47,
      PCOUT(46) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46,
      PCOUT(45) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45,
      PCOUT(44) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44,
      PCOUT(43) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43,
      PCOUT(42) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42,
      PCOUT(41) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41,
      PCOUT(40) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40,
      PCOUT(39) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39,
      PCOUT(38) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38,
      PCOUT(37) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37,
      PCOUT(36) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36,
      PCOUT(35) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35,
      PCOUT(34) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34,
      PCOUT(33) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33,
      PCOUT(32) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32,
      PCOUT(31) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31,
      PCOUT(30) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30,
      PCOUT(29) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29,
      PCOUT(28) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28,
      PCOUT(27) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27,
      PCOUT(26) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26,
      PCOUT(25) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25,
      PCOUT(24) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24,
      PCOUT(23) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23,
      PCOUT(22) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22,
      PCOUT(21) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21,
      PCOUT(20) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20,
      PCOUT(19) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19,
      PCOUT(18) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18,
      PCOUT(17) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17,
      PCOUT(16) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16,
      PCOUT(15) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15,
      PCOUT(14) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14,
      PCOUT(13) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13,
      PCOUT(12) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12,
      PCOUT(11) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11,
      PCOUT(10) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10,
      PCOUT(9) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9,
      PCOUT(8) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8,
      PCOUT(7) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7,
      PCOUT(6) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6,
      PCOUT(5) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5,
      PCOUT(4) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4,
      PCOUT(3) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3,
      PCOUT(2) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2,
      PCOUT(1) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1,
      PCOUT(0) => BLOQUES_gen_1_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0,
      M(35) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      M(34) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_34_Q,
      M(33) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_33_Q,
      M(32) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_32_Q,
      M(31) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_31_Q,
      M(30) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_30_Q,
      M(29) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_29_Q,
      M(28) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_28_Q,
      M(27) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_27_Q,
      M(26) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_26_Q,
      M(25) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_25_Q,
      M(24) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_24_Q,
      M(23) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_23_Q,
      M(22) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_22_Q,
      M(21) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_21_Q,
      M(20) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_20_Q,
      M(19) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_19_Q,
      M(18) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_18_Q,
      M(17) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_17_Q,
      M(16) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_16_Q,
      M(15) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_15_Q,
      M(14) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_14_Q,
      M(13) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_13_Q,
      M(12) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_12_Q,
      M(11) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_11_Q,
      M(10) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_10_Q,
      M(9) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_9_Q,
      M(8) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_8_Q,
      M(7) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_7_Q,
      M(6) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_6_Q,
      M(5) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_5_Q,
      M(4) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_4_Q,
      M(3) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_3_Q,
      M(2) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_2_Q,
      M(1) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_1_Q,
      M(0) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_0_Q
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y15",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT
    );
  BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 1,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X1Y15"
    )
    port map (
      CECARRYIN => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CECARRYIN_INT,
      RSTC => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTC_INT,
      RSTCARRYIN => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTCARRYIN_INT,
      CED => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CED_INT,
      RSTD => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTD_INT,
      CEOPMODE => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEOPMODE_INT,
      CEC => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEC_INT,
      RSTOPMODE => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTOPMODE_INT,
      RSTM => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTM_INT,
      CLK => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CLK_INT,
      RSTB => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTB_INT,
      CEM => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEM_INT,
      CEB => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEB_INT,
      CARRYIN => GND,
      CEP => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEP_INT,
      CEA => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CEA_INT,
      RSTA => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTA_INT,
      RSTP => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_RSTP_INT,
      CARRYOUTF => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUTF,
      CARRYOUT => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_CARRYOUT,
      B(17) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(16) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(15) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      B(14) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_0,
      B(13) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_0,
      B(12) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_0,
      B(11) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      B(10) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      B(9) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      B(8) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      B(7) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      B(6) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      B(5) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      B(4) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      B(3) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      B(2) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      B(1) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      B(0) => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      PCIN(47) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN47,
      PCIN(46) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN46,
      PCIN(45) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN45,
      PCIN(44) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN44,
      PCIN(43) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN43,
      PCIN(42) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN42,
      PCIN(41) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN41,
      PCIN(40) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN40,
      PCIN(39) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN39,
      PCIN(38) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN38,
      PCIN(37) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN37,
      PCIN(36) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN36,
      PCIN(35) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN35,
      PCIN(34) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN34,
      PCIN(33) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN33,
      PCIN(32) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN32,
      PCIN(31) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN31,
      PCIN(30) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN30,
      PCIN(29) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN29,
      PCIN(28) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN28,
      PCIN(27) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN27,
      PCIN(26) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN26,
      PCIN(25) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN25,
      PCIN(24) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN24,
      PCIN(23) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN23,
      PCIN(22) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN22,
      PCIN(21) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN21,
      PCIN(20) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN20,
      PCIN(19) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN19,
      PCIN(18) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN18,
      PCIN(17) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN17,
      PCIN(16) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN16,
      PCIN(15) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN15,
      PCIN(14) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN14,
      PCIN(13) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN13,
      PCIN(12) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN12,
      PCIN(11) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN11,
      PCIN(10) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN10,
      PCIN(9) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN9,
      PCIN(8) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN8,
      PCIN(7) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN7,
      PCIN(6) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN6,
      PCIN(5) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN5,
      PCIN(4) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN4,
      PCIN(3) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN3,
      PCIN(2) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN2,
      PCIN(1) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN1,
      PCIN(0) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => VCC,
      A(16) => VCC,
      A(15) => VCC,
      A(14) => VCC,
      A(13) => VCC,
      A(12) => VCC,
      A(11) => VCC,
      A(10) => VCC,
      A(9) => GND,
      A(8) => VCC,
      A(7) => GND,
      A(6) => VCC,
      A(5) => VCC,
      A(4) => VCC,
      A(3) => VCC,
      A(2) => VCC,
      A(1) => VCC,
      A(0) => GND,
      BCIN(17) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN17,
      BCIN(16) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN16,
      BCIN(15) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN15,
      BCIN(14) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN14,
      BCIN(13) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN13,
      BCIN(12) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN12,
      BCIN(11) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN11,
      BCIN(10) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN10,
      BCIN(9) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN9,
      BCIN(8) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN8,
      BCIN(7) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN7,
      BCIN(6) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN6,
      BCIN(5) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN5,
      BCIN(4) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN4,
      BCIN(3) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN3,
      BCIN(2) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN2,
      BCIN(1) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN1,
      BCIN(0) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCIN0,
      BCOUT(17) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT17,
      BCOUT(16) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT16,
      BCOUT(15) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT15,
      BCOUT(14) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT14,
      BCOUT(13) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT13,
      BCOUT(12) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT12,
      BCOUT(11) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT11,
      BCOUT(10) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT10,
      BCOUT(9) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT9,
      BCOUT(8) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT8,
      BCOUT(7) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT7,
      BCOUT(6) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT6,
      BCOUT(5) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT5,
      BCOUT(4) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT4,
      BCOUT(3) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT3,
      BCOUT(2) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT2,
      BCOUT(1) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT1,
      BCOUT(0) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_BCOUT0,
      P(47) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P47,
      P(46) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P46,
      P(45) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P45,
      P(44) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P44,
      P(43) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P43,
      P(42) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P42,
      P(41) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P41,
      P(40) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P40,
      P(39) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P39,
      P(38) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P38,
      P(37) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P37,
      P(36) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P36,
      P(35) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P35,
      P(34) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P34,
      P(33) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P33,
      P(32) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P32,
      P(31) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P31,
      P(30) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P30,
      P(29) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P29,
      P(28) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P28,
      P(27) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P27,
      P(26) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P26,
      P(25) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P25,
      P(24) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P24,
      P(23) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P23,
      P(22) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P22,
      P(21) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P21,
      P(20) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P20,
      P(19) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P19,
      P(18) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P18,
      P(17) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P17,
      P(16) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P16,
      P(15) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P15,
      P(14) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P14,
      P(13) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P13,
      P(12) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P12,
      P(11) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P11,
      P(10) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P10,
      P(9) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P9,
      P(8) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P8,
      P(7) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P7,
      P(6) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P6,
      P(5) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P5,
      P(4) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P4,
      P(3) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P3,
      P(2) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P2,
      P(1) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P1,
      P(0) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_P0,
      PCOUT(47) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT47,
      PCOUT(46) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT46,
      PCOUT(45) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT45,
      PCOUT(44) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT44,
      PCOUT(43) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT43,
      PCOUT(42) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT42,
      PCOUT(41) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT41,
      PCOUT(40) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT40,
      PCOUT(39) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT39,
      PCOUT(38) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT38,
      PCOUT(37) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT37,
      PCOUT(36) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT36,
      PCOUT(35) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT35,
      PCOUT(34) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT34,
      PCOUT(33) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT33,
      PCOUT(32) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT32,
      PCOUT(31) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT31,
      PCOUT(30) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT30,
      PCOUT(29) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT29,
      PCOUT(28) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT28,
      PCOUT(27) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT27,
      PCOUT(26) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT26,
      PCOUT(25) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT25,
      PCOUT(24) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT24,
      PCOUT(23) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT23,
      PCOUT(22) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT22,
      PCOUT(21) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT21,
      PCOUT(20) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT20,
      PCOUT(19) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT19,
      PCOUT(18) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT18,
      PCOUT(17) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT17,
      PCOUT(16) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT16,
      PCOUT(15) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT15,
      PCOUT(14) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT14,
      PCOUT(13) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT13,
      PCOUT(12) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT12,
      PCOUT(11) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT11,
      PCOUT(10) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT10,
      PCOUT(9) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT9,
      PCOUT(8) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT8,
      PCOUT(7) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT7,
      PCOUT(6) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT6,
      PCOUT(5) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT5,
      PCOUT(4) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT4,
      PCOUT(3) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT3,
      PCOUT(2) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT2,
      PCOUT(1) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT1,
      PCOUT(0) => BLOQUES_gen_0_BLOQUE_inst_Multiplicador_inst_blk00000003_PCOUT0,
      M(35) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      M(34) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_34_Q,
      M(33) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_33_Q,
      M(32) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_32_Q,
      M(31) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_31_Q,
      M(30) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_30_Q,
      M(29) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_29_Q,
      M(28) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_28_Q,
      M(27) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_27_Q,
      M(26) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_26_Q,
      M(25) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_25_Q,
      M(24) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_24_Q,
      M(23) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_23_Q,
      M(22) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_22_Q,
      M(21) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_21_Q,
      M(20) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_20_Q,
      M(19) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_19_Q,
      M(18) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_18_Q,
      M(17) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_17_Q,
      M(16) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_16_Q,
      M(15) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_15_Q,
      M(14) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_14_Q,
      M(13) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_13_Q,
      M(12) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_12_Q,
      M(11) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_11_Q,
      M(10) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_10_Q,
      M(9) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_9_Q,
      M(8) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_8_Q,
      M(7) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_7_Q,
      M(6) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_6_Q,
      M(5) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_5_Q,
      M(4) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_4_Q,
      M(3) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_3_Q,
      M(2) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_2_Q,
      M(1) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_1_Q,
      M(0) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_0_Q
    );
  SP6_BUFIO_INSERT_ML_BUFIO2_0 : X_BUFIO2
    generic map(
      DIVIDE => 1,
      DIVIDE_BYPASS => TRUE,
      I_INVERT => FALSE,
      USE_DOUBLER => FALSE,
      LOC => "BUFIO2_X1Y15"
    )
    port map (
      DIVCLK => DCM_gen_inst_dcm_sp_inst_ML_NEW_DIVCLK,
      I => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I,
      IOCLK => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED,
      SERDESSTROBE => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED
    );
  DCM_gen_inst_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_DCM_gen_inst_clkout1_buf_IN,
      O => clk_DCM
    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_0,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLKINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y11",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT

    );
  BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive : 
X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y11"
    )
    port map (
      CECARRYIN => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT
,
      RSTC => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT
,
      RSTCARRYIN => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT
,
      CED => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT
,
      RSTD => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT
,
      CEOPMODE => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT
,
      CEC => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT
,
      RSTOPMODE => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT
,
      RSTM => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT
,
      CLK => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT
,
      RSTB => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT
,
      CEM => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT
,
      CEB => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT
,
      CARRYIN => GND,
      CEP => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT
,
      CEA => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT
,
      RSTA => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT
,
      RSTP => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT
,
      CARRYOUTF => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF
,
      CARRYOUT => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT
,
      B(17) => sumando_3_17_Q,
      B(16) => sumando_3_16_Q,
      B(15) => sumando_3_15_Q,
      B(14) => sumando_3_14_Q,
      B(13) => sumando_3_13_Q,
      B(12) => sumando_3_12_Q,
      B(11) => sumando_3_11_Q,
      B(10) => sumando_3_10_Q,
      B(9) => sumando_3_9_Q,
      B(8) => sumando_3_8_Q,
      B(7) => sumando_3_7_Q,
      B(6) => sumando_3_6_Q,
      B(5) => sumando_3_5_Q,
      B(4) => sumando_3_4_Q,
      B(3) => sumando_3_3_Q,
      B(2) => sumando_3_2_Q,
      B(1) => sumando_3_1_Q,
      B(0) => sumando_3_0_Q,
      PCIN(47) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47
,
      PCIN(46) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46
,
      PCIN(45) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45
,
      PCIN(44) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44
,
      PCIN(43) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43
,
      PCIN(42) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42
,
      PCIN(41) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41
,
      PCIN(40) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40
,
      PCIN(39) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39
,
      PCIN(38) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38
,
      PCIN(37) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37
,
      PCIN(36) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36
,
      PCIN(35) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35
,
      PCIN(34) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34
,
      PCIN(33) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33
,
      PCIN(32) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32
,
      PCIN(31) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31
,
      PCIN(30) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30
,
      PCIN(29) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29
,
      PCIN(28) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28
,
      PCIN(27) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27
,
      PCIN(26) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26
,
      PCIN(25) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25
,
      PCIN(24) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24
,
      PCIN(23) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23
,
      PCIN(22) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22
,
      PCIN(21) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21
,
      PCIN(20) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20
,
      PCIN(19) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19
,
      PCIN(18) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18
,
      PCIN(17) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17
,
      PCIN(16) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16
,
      PCIN(15) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15
,
      PCIN(14) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14
,
      PCIN(13) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13
,
      PCIN(12) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12
,
      PCIN(11) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11
,
      PCIN(10) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10
,
      PCIN(9) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9
,
      PCIN(8) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8
,
      PCIN(7) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7
,
      PCIN(6) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6
,
      PCIN(5) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5
,
      PCIN(4) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4
,
      PCIN(3) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3
,
      PCIN(2) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2
,
      PCIN(1) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1
,
      PCIN(0) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0
,
      C(47) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(46) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(45) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(44) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(43) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(42) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(41) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(40) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(39) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(38) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(37) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(36) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(35) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_35_Q,
      C(34) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_34_Q,
      C(33) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_33_Q,
      C(32) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_32_Q,
      C(31) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_31_Q,
      C(30) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_30_Q,
      C(29) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_29_Q,
      C(28) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_28_Q,
      C(27) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_27_Q,
      C(26) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_26_Q,
      C(25) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_25_Q,
      C(24) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_24_Q,
      C(23) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_23_Q,
      C(22) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_22_Q,
      C(21) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_21_Q,
      C(20) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_20_Q,
      C(19) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_19_Q,
      C(18) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_18_Q,
      C(17) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_17_Q,
      C(16) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_16_Q,
      C(15) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_15_Q,
      C(14) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_14_Q,
      C(13) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_13_Q,
      C(12) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_12_Q,
      C(11) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_11_Q,
      C(10) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_10_Q,
      C(9) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_9_Q,
      C(8) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_8_Q,
      C(7) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_7_Q,
      C(6) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_6_Q,
      C(5) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_5_Q,
      C(4) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_4_Q,
      C(3) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_3_Q,
      C(2) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_2_Q,
      C(1) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_1_Q,
      C(0) => BLOQUES_gen_3_BLOQUE_inst_multiplicacion_0_Q,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => VCC,
      OPMODE(0) => VCC,
      D(17) => sumando_3_36_Q,
      D(16) => sumando_3_36_Q,
      D(15) => sumando_3_36_Q,
      D(14) => sumando_3_36_Q,
      D(13) => sumando_3_36_Q,
      D(12) => sumando_3_36_Q,
      D(11) => sumando_3_36_Q,
      D(10) => sumando_3_36_Q,
      D(9) => sumando_3_36_Q,
      D(8) => sumando_3_36_Q,
      D(7) => sumando_3_36_Q,
      D(6) => sumando_3_36_Q,
      D(5) => sumando_3_36_Q,
      D(4) => sumando_3_36_Q,
      D(3) => sumando_3_36_Q,
      D(2) => sumando_3_36_Q,
      D(1) => sumando_3_36_Q,
      D(0) => sumando_3_36_Q,
      A(17) => sumando_3_35_Q,
      A(16) => sumando_3_34_Q,
      A(15) => sumando_3_33_Q,
      A(14) => sumando_3_32_Q,
      A(13) => sumando_3_31_Q,
      A(12) => sumando_3_30_Q,
      A(11) => sumando_3_29_Q,
      A(10) => sumando_3_28_Q,
      A(9) => sumando_3_27_Q,
      A(8) => sumando_3_26_Q,
      A(7) => sumando_3_25_Q,
      A(6) => sumando_3_24_Q,
      A(5) => sumando_3_23_Q,
      A(4) => sumando_3_22_Q,
      A(3) => sumando_3_21_Q,
      A(2) => sumando_3_20_Q,
      A(1) => sumando_3_19_Q,
      A(0) => sumando_3_18_Q,
      BCIN(17) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17
,
      BCIN(16) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16
,
      BCIN(15) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15
,
      BCIN(14) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14
,
      BCIN(13) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13
,
      BCIN(12) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12
,
      BCIN(11) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11
,
      BCIN(10) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10
,
      BCIN(9) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9
,
      BCIN(8) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8
,
      BCIN(7) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7
,
      BCIN(6) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6
,
      BCIN(5) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5
,
      BCIN(4) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4
,
      BCIN(3) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3
,
      BCIN(2) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2
,
      BCIN(1) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1
,
      BCIN(0) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0
,
      BCOUT(17) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17
,
      BCOUT(16) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16
,
      BCOUT(15) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15
,
      BCOUT(14) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14
,
      BCOUT(13) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13
,
      BCOUT(12) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12
,
      BCOUT(11) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11
,
      BCOUT(10) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10
,
      BCOUT(9) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9
,
      BCOUT(8) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8
,
      BCOUT(7) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7
,
      BCOUT(6) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6
,
      BCOUT(5) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5
,
      BCOUT(4) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4
,
      BCOUT(3) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3
,
      BCOUT(2) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2
,
      BCOUT(1) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1
,
      BCOUT(0) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0
,
      P(47) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47
,
      P(46) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46
,
      P(45) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45
,
      P(44) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44
,
      P(43) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43
,
      P(42) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42
,
      P(41) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41
,
      P(40) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40
,
      P(39) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39
,
      P(38) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38
,
      P(37) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37
,
      P(36) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P36
,
      P(35) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P35
,
      P(34) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P34
,
      P(33) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P33
,
      P(32) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P32
,
      P(31) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P31
,
      P(30) => dataout_15_OBUF_2082,
      P(29) => dataout_14_OBUF_2080,
      P(28) => dataout_13_OBUF_2078,
      P(27) => dataout_12_OBUF_2076,
      P(26) => dataout_11_OBUF_2074,
      P(25) => dataout_10_OBUF_2073,
      P(24) => dataout_9_OBUF_2066,
      P(23) => dataout_8_OBUF_2060,
      P(22) => dataout_7_OBUF_2055,
      P(21) => dataout_6_OBUF_2050,
      P(20) => dataout_5_OBUF_2047,
      P(19) => dataout_4_OBUF_2044,
      P(18) => dataout_3_OBUF_2043,
      P(17) => dataout_2_OBUF_2041,
      P(16) => dataout_1_OBUF_2036,
      P(15) => dataout_0_OBUF_2030,
      P(14) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P14
,
      P(13) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P13
,
      P(12) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P12
,
      P(11) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P11
,
      P(10) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P10
,
      P(9) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P9
,
      P(8) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P8
,
      P(7) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P7
,
      P(6) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P6
,
      P(5) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P5
,
      P(4) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P4
,
      P(3) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P3
,
      P(2) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P2
,
      P(1) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P1
,
      P(0) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P0
,
      PCOUT(47) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47
,
      PCOUT(46) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46
,
      PCOUT(45) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45
,
      PCOUT(44) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44
,
      PCOUT(43) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43
,
      PCOUT(42) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42
,
      PCOUT(41) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41
,
      PCOUT(40) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40
,
      PCOUT(39) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39
,
      PCOUT(38) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38
,
      PCOUT(37) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37
,
      PCOUT(36) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36
,
      PCOUT(35) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35
,
      PCOUT(34) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34
,
      PCOUT(33) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33
,
      PCOUT(32) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32
,
      PCOUT(31) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31
,
      PCOUT(30) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30
,
      PCOUT(29) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29
,
      PCOUT(28) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28
,
      PCOUT(27) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27
,
      PCOUT(26) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26
,
      PCOUT(25) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25
,
      PCOUT(24) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24
,
      PCOUT(23) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23
,
      PCOUT(22) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22
,
      PCOUT(21) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21
,
      PCOUT(20) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20
,
      PCOUT(19) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19
,
      PCOUT(18) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18
,
      PCOUT(17) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17
,
      PCOUT(16) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16
,
      PCOUT(15) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15
,
      PCOUT(14) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14
,
      PCOUT(13) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13
,
      PCOUT(12) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12
,
      PCOUT(11) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11
,
      PCOUT(10) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10
,
      PCOUT(9) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9
,
      PCOUT(8) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8
,
      PCOUT(7) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7
,
      PCOUT(6) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6
,
      PCOUT(5) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5
,
      PCOUT(4) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4
,
      PCOUT(3) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3
,
      PCOUT(2) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2
,
      PCOUT(1) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1
,
      PCOUT(0) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0
,
      M(35) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35
,
      M(34) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34
,
      M(33) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33
,
      M(32) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32
,
      M(31) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31
,
      M(30) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30
,
      M(29) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29
,
      M(28) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28
,
      M(27) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27
,
      M(26) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26
,
      M(25) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25
,
      M(24) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24
,
      M(23) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23
,
      M(22) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22
,
      M(21) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21
,
      M(20) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20
,
      M(19) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19
,
      M(18) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18
,
      M(17) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17
,
      M(16) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16
,
      M(15) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15
,
      M(14) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14
,
      M(13) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13
,
      M(12) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12
,
      M(11) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11
,
      M(10) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10
,
      M(9) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9
,
      M(8) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8
,
      M(7) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7
,
      M(6) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6
,
      M(5) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5
,
      M(4) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4
,
      M(3) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3
,
      M(2) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2
,
      M(1) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1
,
      M(0) => 
BLOQUES_gen_3_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_0,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLKINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCINV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT

    );
  BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive : 
X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X1Y13"
    )
    port map (
      CECARRYIN => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT
,
      RSTC => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT
,
      RSTCARRYIN => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT
,
      CED => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT
,
      RSTD => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT
,
      CEOPMODE => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT
,
      CEC => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT
,
      RSTOPMODE => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT
,
      RSTM => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT
,
      CLK => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT
,
      RSTB => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT
,
      CEM => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT
,
      CEB => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT
,
      CARRYIN => GND,
      CEP => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT
,
      CEA => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT
,
      RSTA => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT
,
      RSTP => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT
,
      CARRYOUTF => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF
,
      CARRYOUT => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT
,
      B(17) => sumando_2_17_Q,
      B(16) => sumando_2_16_Q,
      B(15) => sumando_2_15_Q,
      B(14) => sumando_2_14_Q,
      B(13) => sumando_2_13_Q,
      B(12) => sumando_2_12_Q,
      B(11) => sumando_2_11_Q,
      B(10) => sumando_2_10_Q,
      B(9) => sumando_2_9_Q,
      B(8) => sumando_2_8_Q,
      B(7) => sumando_2_7_Q,
      B(6) => sumando_2_6_Q,
      B(5) => sumando_2_5_Q,
      B(4) => sumando_2_4_Q,
      B(3) => sumando_2_3_Q,
      B(2) => sumando_2_2_Q,
      B(1) => sumando_2_1_Q,
      B(0) => sumando_2_0_Q,
      PCIN(47) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47
,
      PCIN(46) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46
,
      PCIN(45) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45
,
      PCIN(44) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44
,
      PCIN(43) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43
,
      PCIN(42) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42
,
      PCIN(41) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41
,
      PCIN(40) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40
,
      PCIN(39) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39
,
      PCIN(38) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38
,
      PCIN(37) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37
,
      PCIN(36) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36
,
      PCIN(35) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35
,
      PCIN(34) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34
,
      PCIN(33) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33
,
      PCIN(32) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32
,
      PCIN(31) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31
,
      PCIN(30) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30
,
      PCIN(29) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29
,
      PCIN(28) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28
,
      PCIN(27) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27
,
      PCIN(26) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26
,
      PCIN(25) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25
,
      PCIN(24) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24
,
      PCIN(23) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23
,
      PCIN(22) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22
,
      PCIN(21) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21
,
      PCIN(20) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20
,
      PCIN(19) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19
,
      PCIN(18) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18
,
      PCIN(17) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17
,
      PCIN(16) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16
,
      PCIN(15) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15
,
      PCIN(14) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14
,
      PCIN(13) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13
,
      PCIN(12) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12
,
      PCIN(11) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11
,
      PCIN(10) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10
,
      PCIN(9) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9
,
      PCIN(8) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8
,
      PCIN(7) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7
,
      PCIN(6) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6
,
      PCIN(5) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5
,
      PCIN(4) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4
,
      PCIN(3) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3
,
      PCIN(2) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2
,
      PCIN(1) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1
,
      PCIN(0) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0
,
      C(47) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(46) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(45) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(44) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(43) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(42) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(41) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(40) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(39) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(38) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(37) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(36) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(35) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_35_Q,
      C(34) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_34_Q,
      C(33) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_33_Q,
      C(32) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_32_Q,
      C(31) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_31_Q,
      C(30) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_30_Q,
      C(29) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_29_Q,
      C(28) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_28_Q,
      C(27) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_27_Q,
      C(26) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_26_Q,
      C(25) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_25_Q,
      C(24) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_24_Q,
      C(23) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_23_Q,
      C(22) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_22_Q,
      C(21) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_21_Q,
      C(20) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_20_Q,
      C(19) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_19_Q,
      C(18) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_18_Q,
      C(17) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_17_Q,
      C(16) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_16_Q,
      C(15) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_15_Q,
      C(14) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_14_Q,
      C(13) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_13_Q,
      C(12) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_12_Q,
      C(11) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_11_Q,
      C(10) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_10_Q,
      C(9) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_9_Q,
      C(8) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_8_Q,
      C(7) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_7_Q,
      C(6) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_6_Q,
      C(5) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_5_Q,
      C(4) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_4_Q,
      C(3) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_3_Q,
      C(2) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_2_Q,
      C(1) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_1_Q,
      C(0) => BLOQUES_gen_2_BLOQUE_inst_multiplicacion_0_Q,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => VCC,
      OPMODE(0) => VCC,
      D(17) => sumando_2_36_Q,
      D(16) => sumando_2_36_Q,
      D(15) => sumando_2_36_Q,
      D(14) => sumando_2_36_Q,
      D(13) => sumando_2_36_Q,
      D(12) => sumando_2_36_Q,
      D(11) => sumando_2_36_Q,
      D(10) => sumando_2_36_Q,
      D(9) => sumando_2_36_Q,
      D(8) => sumando_2_36_Q,
      D(7) => sumando_2_36_Q,
      D(6) => sumando_2_36_Q,
      D(5) => sumando_2_36_Q,
      D(4) => sumando_2_36_Q,
      D(3) => sumando_2_36_Q,
      D(2) => sumando_2_36_Q,
      D(1) => sumando_2_36_Q,
      D(0) => sumando_2_36_Q,
      A(17) => sumando_2_35_Q,
      A(16) => sumando_2_34_Q,
      A(15) => sumando_2_33_Q,
      A(14) => sumando_2_32_Q,
      A(13) => sumando_2_31_Q,
      A(12) => sumando_2_30_Q,
      A(11) => sumando_2_29_Q,
      A(10) => sumando_2_28_Q,
      A(9) => sumando_2_27_Q,
      A(8) => sumando_2_26_Q,
      A(7) => sumando_2_25_Q,
      A(6) => sumando_2_24_Q,
      A(5) => sumando_2_23_Q,
      A(4) => sumando_2_22_Q,
      A(3) => sumando_2_21_Q,
      A(2) => sumando_2_20_Q,
      A(1) => sumando_2_19_Q,
      A(0) => sumando_2_18_Q,
      BCIN(17) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17
,
      BCIN(16) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16
,
      BCIN(15) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15
,
      BCIN(14) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14
,
      BCIN(13) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13
,
      BCIN(12) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12
,
      BCIN(11) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11
,
      BCIN(10) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10
,
      BCIN(9) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9
,
      BCIN(8) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8
,
      BCIN(7) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7
,
      BCIN(6) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6
,
      BCIN(5) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5
,
      BCIN(4) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4
,
      BCIN(3) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3
,
      BCIN(2) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2
,
      BCIN(1) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1
,
      BCIN(0) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0
,
      BCOUT(17) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17
,
      BCOUT(16) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16
,
      BCOUT(15) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15
,
      BCOUT(14) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14
,
      BCOUT(13) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13
,
      BCOUT(12) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12
,
      BCOUT(11) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11
,
      BCOUT(10) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10
,
      BCOUT(9) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9
,
      BCOUT(8) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8
,
      BCOUT(7) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7
,
      BCOUT(6) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6
,
      BCOUT(5) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5
,
      BCOUT(4) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4
,
      BCOUT(3) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3
,
      BCOUT(2) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2
,
      BCOUT(1) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1
,
      BCOUT(0) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0
,
      P(47) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47
,
      P(46) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46
,
      P(45) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45
,
      P(44) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44
,
      P(43) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43
,
      P(42) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42
,
      P(41) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41
,
      P(40) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40
,
      P(39) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39
,
      P(38) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38
,
      P(37) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37
,
      P(36) => sumando_3_36_Q,
      P(35) => sumando_3_35_Q,
      P(34) => sumando_3_34_Q,
      P(33) => sumando_3_33_Q,
      P(32) => sumando_3_32_Q,
      P(31) => sumando_3_31_Q,
      P(30) => sumando_3_30_Q,
      P(29) => sumando_3_29_Q,
      P(28) => sumando_3_28_Q,
      P(27) => sumando_3_27_Q,
      P(26) => sumando_3_26_Q,
      P(25) => sumando_3_25_Q,
      P(24) => sumando_3_24_Q,
      P(23) => sumando_3_23_Q,
      P(22) => sumando_3_22_Q,
      P(21) => sumando_3_21_Q,
      P(20) => sumando_3_20_Q,
      P(19) => sumando_3_19_Q,
      P(18) => sumando_3_18_Q,
      P(17) => sumando_3_17_Q,
      P(16) => sumando_3_16_Q,
      P(15) => sumando_3_15_Q,
      P(14) => sumando_3_14_Q,
      P(13) => sumando_3_13_Q,
      P(12) => sumando_3_12_Q,
      P(11) => sumando_3_11_Q,
      P(10) => sumando_3_10_Q,
      P(9) => sumando_3_9_Q,
      P(8) => sumando_3_8_Q,
      P(7) => sumando_3_7_Q,
      P(6) => sumando_3_6_Q,
      P(5) => sumando_3_5_Q,
      P(4) => sumando_3_4_Q,
      P(3) => sumando_3_3_Q,
      P(2) => sumando_3_2_Q,
      P(1) => sumando_3_1_Q,
      P(0) => sumando_3_0_Q,
      PCOUT(47) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47
,
      PCOUT(46) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46
,
      PCOUT(45) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45
,
      PCOUT(44) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44
,
      PCOUT(43) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43
,
      PCOUT(42) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42
,
      PCOUT(41) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41
,
      PCOUT(40) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40
,
      PCOUT(39) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39
,
      PCOUT(38) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38
,
      PCOUT(37) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37
,
      PCOUT(36) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36
,
      PCOUT(35) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35
,
      PCOUT(34) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34
,
      PCOUT(33) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33
,
      PCOUT(32) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32
,
      PCOUT(31) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31
,
      PCOUT(30) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30
,
      PCOUT(29) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29
,
      PCOUT(28) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28
,
      PCOUT(27) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27
,
      PCOUT(26) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26
,
      PCOUT(25) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25
,
      PCOUT(24) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24
,
      PCOUT(23) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23
,
      PCOUT(22) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22
,
      PCOUT(21) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21
,
      PCOUT(20) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20
,
      PCOUT(19) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19
,
      PCOUT(18) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18
,
      PCOUT(17) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17
,
      PCOUT(16) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16
,
      PCOUT(15) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15
,
      PCOUT(14) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14
,
      PCOUT(13) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13
,
      PCOUT(12) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12
,
      PCOUT(11) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11
,
      PCOUT(10) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10
,
      PCOUT(9) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9
,
      PCOUT(8) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8
,
      PCOUT(7) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7
,
      PCOUT(6) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6
,
      PCOUT(5) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5
,
      PCOUT(4) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4
,
      PCOUT(3) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3
,
      PCOUT(2) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2
,
      PCOUT(1) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1
,
      PCOUT(0) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0
,
      M(35) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35
,
      M(34) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34
,
      M(33) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33
,
      M(32) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32
,
      M(31) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31
,
      M(30) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30
,
      M(29) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29
,
      M(28) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28
,
      M(27) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27
,
      M(26) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26
,
      M(25) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25
,
      M(24) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24
,
      M(23) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23
,
      M(22) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22
,
      M(21) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21
,
      M(20) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20
,
      M(19) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19
,
      M(18) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18
,
      M(17) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17
,
      M(16) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16
,
      M(15) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15
,
      M(14) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14
,
      M(13) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13
,
      M(12) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12
,
      M(11) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11
,
      M(10) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10
,
      M(9) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9
,
      M(8) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8
,
      M(7) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7
,
      M(6) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6
,
      M(5) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5
,
      M(4) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4
,
      M(3) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3
,
      M(2) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2
,
      M(1) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1
,
      M(0) => 
BLOQUES_gen_2_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_0,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLKINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT

    );
  BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive : 
X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y13"
    )
    port map (
      CECARRYIN => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT
,
      RSTC => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT
,
      RSTCARRYIN => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT
,
      CED => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT
,
      RSTD => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT
,
      CEOPMODE => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT
,
      CEC => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT
,
      RSTOPMODE => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT
,
      RSTM => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT
,
      CLK => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT
,
      RSTB => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT
,
      CEM => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT
,
      CEB => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT
,
      CARRYIN => GND,
      CEP => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT
,
      CEA => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT
,
      RSTA => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT
,
      RSTP => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT
,
      CARRYOUTF => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF
,
      CARRYOUT => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT
,
      B(17) => sumando_1_17_Q,
      B(16) => sumando_1_16_Q,
      B(15) => sumando_1_15_Q,
      B(14) => sumando_1_14_Q,
      B(13) => sumando_1_13_Q,
      B(12) => sumando_1_12_Q,
      B(11) => sumando_1_11_Q,
      B(10) => sumando_1_10_Q,
      B(9) => sumando_1_9_Q,
      B(8) => sumando_1_8_Q,
      B(7) => sumando_1_7_Q,
      B(6) => sumando_1_6_Q,
      B(5) => sumando_1_5_Q,
      B(4) => sumando_1_4_Q,
      B(3) => sumando_1_3_Q,
      B(2) => sumando_1_2_Q,
      B(1) => sumando_1_1_Q,
      B(0) => sumando_1_0_Q,
      PCIN(47) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47
,
      PCIN(46) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46
,
      PCIN(45) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45
,
      PCIN(44) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44
,
      PCIN(43) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43
,
      PCIN(42) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42
,
      PCIN(41) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41
,
      PCIN(40) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40
,
      PCIN(39) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39
,
      PCIN(38) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38
,
      PCIN(37) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37
,
      PCIN(36) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36
,
      PCIN(35) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35
,
      PCIN(34) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34
,
      PCIN(33) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33
,
      PCIN(32) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32
,
      PCIN(31) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31
,
      PCIN(30) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30
,
      PCIN(29) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29
,
      PCIN(28) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28
,
      PCIN(27) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27
,
      PCIN(26) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26
,
      PCIN(25) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25
,
      PCIN(24) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24
,
      PCIN(23) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23
,
      PCIN(22) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22
,
      PCIN(21) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21
,
      PCIN(20) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20
,
      PCIN(19) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19
,
      PCIN(18) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18
,
      PCIN(17) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17
,
      PCIN(16) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16
,
      PCIN(15) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15
,
      PCIN(14) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14
,
      PCIN(13) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13
,
      PCIN(12) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12
,
      PCIN(11) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11
,
      PCIN(10) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10
,
      PCIN(9) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9
,
      PCIN(8) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8
,
      PCIN(7) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7
,
      PCIN(6) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6
,
      PCIN(5) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5
,
      PCIN(4) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4
,
      PCIN(3) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3
,
      PCIN(2) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2
,
      PCIN(1) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1
,
      PCIN(0) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0
,
      C(47) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(46) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(45) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(44) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(43) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(42) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(41) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(40) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(39) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(38) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(37) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(36) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(35) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_35_Q,
      C(34) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_34_Q,
      C(33) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_33_Q,
      C(32) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_32_Q,
      C(31) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_31_Q,
      C(30) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_30_Q,
      C(29) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_29_Q,
      C(28) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_28_Q,
      C(27) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_27_Q,
      C(26) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_26_Q,
      C(25) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_25_Q,
      C(24) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_24_Q,
      C(23) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_23_Q,
      C(22) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_22_Q,
      C(21) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_21_Q,
      C(20) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_20_Q,
      C(19) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_19_Q,
      C(18) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_18_Q,
      C(17) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_17_Q,
      C(16) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_16_Q,
      C(15) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_15_Q,
      C(14) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_14_Q,
      C(13) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_13_Q,
      C(12) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_12_Q,
      C(11) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_11_Q,
      C(10) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_10_Q,
      C(9) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_9_Q,
      C(8) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_8_Q,
      C(7) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_7_Q,
      C(6) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_6_Q,
      C(5) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_5_Q,
      C(4) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_4_Q,
      C(3) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_3_Q,
      C(2) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_2_Q,
      C(1) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_1_Q,
      C(0) => BLOQUES_gen_1_BLOQUE_inst_multiplicacion_0_Q,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => VCC,
      OPMODE(0) => VCC,
      D(17) => sumando_1_36_Q,
      D(16) => sumando_1_36_Q,
      D(15) => sumando_1_36_Q,
      D(14) => sumando_1_36_Q,
      D(13) => sumando_1_36_Q,
      D(12) => sumando_1_36_Q,
      D(11) => sumando_1_36_Q,
      D(10) => sumando_1_36_Q,
      D(9) => sumando_1_36_Q,
      D(8) => sumando_1_36_Q,
      D(7) => sumando_1_36_Q,
      D(6) => sumando_1_36_Q,
      D(5) => sumando_1_36_Q,
      D(4) => sumando_1_36_Q,
      D(3) => sumando_1_36_Q,
      D(2) => sumando_1_36_Q,
      D(1) => sumando_1_36_Q,
      D(0) => sumando_1_36_Q,
      A(17) => sumando_1_35_Q,
      A(16) => sumando_1_34_Q,
      A(15) => sumando_1_33_Q,
      A(14) => sumando_1_32_Q,
      A(13) => sumando_1_31_Q,
      A(12) => sumando_1_30_Q,
      A(11) => sumando_1_29_Q,
      A(10) => sumando_1_28_Q,
      A(9) => sumando_1_27_Q,
      A(8) => sumando_1_26_Q,
      A(7) => sumando_1_25_Q,
      A(6) => sumando_1_24_Q,
      A(5) => sumando_1_23_Q,
      A(4) => sumando_1_22_Q,
      A(3) => sumando_1_21_Q,
      A(2) => sumando_1_20_Q,
      A(1) => sumando_1_19_Q,
      A(0) => sumando_1_18_Q,
      BCIN(17) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17
,
      BCIN(16) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16
,
      BCIN(15) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15
,
      BCIN(14) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14
,
      BCIN(13) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13
,
      BCIN(12) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12
,
      BCIN(11) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11
,
      BCIN(10) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10
,
      BCIN(9) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9
,
      BCIN(8) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8
,
      BCIN(7) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7
,
      BCIN(6) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6
,
      BCIN(5) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5
,
      BCIN(4) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4
,
      BCIN(3) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3
,
      BCIN(2) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2
,
      BCIN(1) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1
,
      BCIN(0) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0
,
      BCOUT(17) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17
,
      BCOUT(16) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16
,
      BCOUT(15) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15
,
      BCOUT(14) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14
,
      BCOUT(13) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13
,
      BCOUT(12) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12
,
      BCOUT(11) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11
,
      BCOUT(10) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10
,
      BCOUT(9) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9
,
      BCOUT(8) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8
,
      BCOUT(7) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7
,
      BCOUT(6) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6
,
      BCOUT(5) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5
,
      BCOUT(4) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4
,
      BCOUT(3) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3
,
      BCOUT(2) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2
,
      BCOUT(1) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1
,
      BCOUT(0) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0
,
      P(47) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47
,
      P(46) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46
,
      P(45) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45
,
      P(44) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44
,
      P(43) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43
,
      P(42) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42
,
      P(41) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41
,
      P(40) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40
,
      P(39) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39
,
      P(38) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38
,
      P(37) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37
,
      P(36) => sumando_2_36_Q,
      P(35) => sumando_2_35_Q,
      P(34) => sumando_2_34_Q,
      P(33) => sumando_2_33_Q,
      P(32) => sumando_2_32_Q,
      P(31) => sumando_2_31_Q,
      P(30) => sumando_2_30_Q,
      P(29) => sumando_2_29_Q,
      P(28) => sumando_2_28_Q,
      P(27) => sumando_2_27_Q,
      P(26) => sumando_2_26_Q,
      P(25) => sumando_2_25_Q,
      P(24) => sumando_2_24_Q,
      P(23) => sumando_2_23_Q,
      P(22) => sumando_2_22_Q,
      P(21) => sumando_2_21_Q,
      P(20) => sumando_2_20_Q,
      P(19) => sumando_2_19_Q,
      P(18) => sumando_2_18_Q,
      P(17) => sumando_2_17_Q,
      P(16) => sumando_2_16_Q,
      P(15) => sumando_2_15_Q,
      P(14) => sumando_2_14_Q,
      P(13) => sumando_2_13_Q,
      P(12) => sumando_2_12_Q,
      P(11) => sumando_2_11_Q,
      P(10) => sumando_2_10_Q,
      P(9) => sumando_2_9_Q,
      P(8) => sumando_2_8_Q,
      P(7) => sumando_2_7_Q,
      P(6) => sumando_2_6_Q,
      P(5) => sumando_2_5_Q,
      P(4) => sumando_2_4_Q,
      P(3) => sumando_2_3_Q,
      P(2) => sumando_2_2_Q,
      P(1) => sumando_2_1_Q,
      P(0) => sumando_2_0_Q,
      PCOUT(47) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47
,
      PCOUT(46) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46
,
      PCOUT(45) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45
,
      PCOUT(44) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44
,
      PCOUT(43) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43
,
      PCOUT(42) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42
,
      PCOUT(41) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41
,
      PCOUT(40) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40
,
      PCOUT(39) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39
,
      PCOUT(38) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38
,
      PCOUT(37) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37
,
      PCOUT(36) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36
,
      PCOUT(35) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35
,
      PCOUT(34) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34
,
      PCOUT(33) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33
,
      PCOUT(32) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32
,
      PCOUT(31) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31
,
      PCOUT(30) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30
,
      PCOUT(29) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29
,
      PCOUT(28) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28
,
      PCOUT(27) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27
,
      PCOUT(26) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26
,
      PCOUT(25) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25
,
      PCOUT(24) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24
,
      PCOUT(23) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23
,
      PCOUT(22) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22
,
      PCOUT(21) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21
,
      PCOUT(20) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20
,
      PCOUT(19) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19
,
      PCOUT(18) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18
,
      PCOUT(17) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17
,
      PCOUT(16) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16
,
      PCOUT(15) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15
,
      PCOUT(14) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14
,
      PCOUT(13) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13
,
      PCOUT(12) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12
,
      PCOUT(11) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11
,
      PCOUT(10) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10
,
      PCOUT(9) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9
,
      PCOUT(8) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8
,
      PCOUT(7) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7
,
      PCOUT(6) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6
,
      PCOUT(5) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5
,
      PCOUT(4) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4
,
      PCOUT(3) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3
,
      PCOUT(2) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2
,
      PCOUT(1) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1
,
      PCOUT(0) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0
,
      M(35) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35
,
      M(34) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34
,
      M(33) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33
,
      M(32) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32
,
      M(31) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31
,
      M(30) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30
,
      M(29) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29
,
      M(28) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28
,
      M(27) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27
,
      M(26) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26
,
      M(25) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25
,
      M(24) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24
,
      M(23) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23
,
      M(22) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22
,
      M(21) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21
,
      M(20) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20
,
      M(19) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19
,
      M(18) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18
,
      M(17) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17
,
      M(16) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16
,
      M(15) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15
,
      M(14) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14
,
      M(13) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13
,
      M(12) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12
,
      M(11) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11
,
      M(10) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10
,
      M(9) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9
,
      M(8) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8
,
      M(7) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7
,
      M(6) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6
,
      M(5) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5
,
      M(4) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4
,
      M(3) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3
,
      M(2) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2
,
      M(1) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1
,
      M(0) => 
BLOQUES_gen_1_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_0,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLKINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y14",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT

    );
  BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive : 
X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y14"
    )
    port map (
      CECARRYIN => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT
,
      RSTC => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT
,
      RSTCARRYIN => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT
,
      CED => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT
,
      RSTD => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT
,
      CEOPMODE => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT
,
      CEC => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT
,
      RSTOPMODE => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT
,
      RSTM => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT
,
      CLK => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT
,
      RSTB => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT
,
      CEM => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT
,
      CEB => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT
,
      CARRYIN => GND,
      CEP => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT
,
      CEA => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT
,
      RSTA => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT
,
      RSTP => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT
,
      CARRYOUTF => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF
,
      CARRYOUT => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT
,
      B(17) => sumando_0_17_Q,
      B(16) => sumando_0_16_Q,
      B(15) => sumando_0_15_Q,
      B(14) => sumando_0_14_Q,
      B(13) => sumando_0_13_Q,
      B(12) => sumando_0_12_Q,
      B(11) => sumando_0_11_Q,
      B(10) => sumando_0_10_Q,
      B(9) => sumando_0_9_Q,
      B(8) => sumando_0_8_Q,
      B(7) => sumando_0_7_Q,
      B(6) => sumando_0_6_Q,
      B(5) => sumando_0_5_Q,
      B(4) => sumando_0_4_Q,
      B(3) => sumando_0_3_Q,
      B(2) => sumando_0_2_Q,
      B(1) => sumando_0_1_Q,
      B(0) => sumando_0_0_Q,
      PCIN(47) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47
,
      PCIN(46) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46
,
      PCIN(45) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45
,
      PCIN(44) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44
,
      PCIN(43) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43
,
      PCIN(42) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42
,
      PCIN(41) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41
,
      PCIN(40) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40
,
      PCIN(39) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39
,
      PCIN(38) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38
,
      PCIN(37) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37
,
      PCIN(36) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36
,
      PCIN(35) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35
,
      PCIN(34) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34
,
      PCIN(33) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33
,
      PCIN(32) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32
,
      PCIN(31) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31
,
      PCIN(30) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30
,
      PCIN(29) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29
,
      PCIN(28) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28
,
      PCIN(27) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27
,
      PCIN(26) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26
,
      PCIN(25) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25
,
      PCIN(24) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24
,
      PCIN(23) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23
,
      PCIN(22) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22
,
      PCIN(21) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21
,
      PCIN(20) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20
,
      PCIN(19) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19
,
      PCIN(18) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18
,
      PCIN(17) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17
,
      PCIN(16) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16
,
      PCIN(15) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15
,
      PCIN(14) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14
,
      PCIN(13) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13
,
      PCIN(12) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12
,
      PCIN(11) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11
,
      PCIN(10) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10
,
      PCIN(9) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9
,
      PCIN(8) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8
,
      PCIN(7) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7
,
      PCIN(6) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6
,
      PCIN(5) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5
,
      PCIN(4) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4
,
      PCIN(3) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3
,
      PCIN(2) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2
,
      PCIN(1) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1
,
      PCIN(0) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0
,
      C(47) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(46) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(45) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(44) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(43) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(42) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(41) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(40) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(39) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(38) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(37) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(36) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(35) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_35_Q,
      C(34) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_34_Q,
      C(33) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_33_Q,
      C(32) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_32_Q,
      C(31) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_31_Q,
      C(30) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_30_Q,
      C(29) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_29_Q,
      C(28) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_28_Q,
      C(27) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_27_Q,
      C(26) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_26_Q,
      C(25) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_25_Q,
      C(24) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_24_Q,
      C(23) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_23_Q,
      C(22) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_22_Q,
      C(21) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_21_Q,
      C(20) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_20_Q,
      C(19) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_19_Q,
      C(18) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_18_Q,
      C(17) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_17_Q,
      C(16) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_16_Q,
      C(15) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_15_Q,
      C(14) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_14_Q,
      C(13) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_13_Q,
      C(12) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_12_Q,
      C(11) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_11_Q,
      C(10) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_10_Q,
      C(9) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_9_Q,
      C(8) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_8_Q,
      C(7) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_7_Q,
      C(6) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_6_Q,
      C(5) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_5_Q,
      C(4) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_4_Q,
      C(3) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_3_Q,
      C(2) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_2_Q,
      C(1) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_1_Q,
      C(0) => BLOQUES_gen_0_BLOQUE_inst_multiplicacion_0_Q,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => VCC,
      OPMODE(0) => VCC,
      D(17) => sumando_0_35_Q,
      D(16) => sumando_0_35_Q,
      D(15) => sumando_0_35_Q,
      D(14) => sumando_0_35_Q,
      D(13) => sumando_0_35_Q,
      D(12) => sumando_0_35_Q,
      D(11) => sumando_0_35_Q,
      D(10) => sumando_0_35_Q,
      D(9) => sumando_0_35_Q,
      D(8) => sumando_0_35_Q,
      D(7) => sumando_0_35_Q,
      D(6) => sumando_0_35_Q,
      D(5) => sumando_0_35_Q,
      D(4) => sumando_0_35_Q,
      D(3) => sumando_0_35_Q,
      D(2) => sumando_0_35_Q,
      D(1) => sumando_0_35_Q,
      D(0) => sumando_0_35_Q,
      A(17) => sumando_0_35_Q,
      A(16) => sumando_0_34_Q,
      A(15) => sumando_0_33_Q,
      A(14) => sumando_0_32_Q,
      A(13) => sumando_0_31_Q,
      A(12) => sumando_0_30_Q,
      A(11) => sumando_0_29_Q,
      A(10) => sumando_0_28_Q,
      A(9) => sumando_0_27_Q,
      A(8) => sumando_0_26_Q,
      A(7) => sumando_0_25_Q,
      A(6) => sumando_0_24_Q,
      A(5) => sumando_0_23_Q,
      A(4) => sumando_0_22_Q,
      A(3) => sumando_0_21_Q,
      A(2) => sumando_0_20_Q,
      A(1) => sumando_0_19_Q,
      A(0) => sumando_0_18_Q,
      BCIN(17) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17
,
      BCIN(16) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16
,
      BCIN(15) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15
,
      BCIN(14) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14
,
      BCIN(13) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13
,
      BCIN(12) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12
,
      BCIN(11) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11
,
      BCIN(10) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10
,
      BCIN(9) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9
,
      BCIN(8) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8
,
      BCIN(7) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7
,
      BCIN(6) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6
,
      BCIN(5) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5
,
      BCIN(4) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4
,
      BCIN(3) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3
,
      BCIN(2) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2
,
      BCIN(1) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1
,
      BCIN(0) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0
,
      BCOUT(17) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17
,
      BCOUT(16) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16
,
      BCOUT(15) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15
,
      BCOUT(14) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14
,
      BCOUT(13) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13
,
      BCOUT(12) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12
,
      BCOUT(11) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11
,
      BCOUT(10) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10
,
      BCOUT(9) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9
,
      BCOUT(8) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8
,
      BCOUT(7) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7
,
      BCOUT(6) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6
,
      BCOUT(5) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5
,
      BCOUT(4) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4
,
      BCOUT(3) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3
,
      BCOUT(2) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2
,
      BCOUT(1) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1
,
      BCOUT(0) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0
,
      P(47) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47
,
      P(46) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46
,
      P(45) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45
,
      P(44) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44
,
      P(43) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43
,
      P(42) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42
,
      P(41) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41
,
      P(40) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40
,
      P(39) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39
,
      P(38) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38
,
      P(37) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37
,
      P(36) => sumando_1_36_Q,
      P(35) => sumando_1_35_Q,
      P(34) => sumando_1_34_Q,
      P(33) => sumando_1_33_Q,
      P(32) => sumando_1_32_Q,
      P(31) => sumando_1_31_Q,
      P(30) => sumando_1_30_Q,
      P(29) => sumando_1_29_Q,
      P(28) => sumando_1_28_Q,
      P(27) => sumando_1_27_Q,
      P(26) => sumando_1_26_Q,
      P(25) => sumando_1_25_Q,
      P(24) => sumando_1_24_Q,
      P(23) => sumando_1_23_Q,
      P(22) => sumando_1_22_Q,
      P(21) => sumando_1_21_Q,
      P(20) => sumando_1_20_Q,
      P(19) => sumando_1_19_Q,
      P(18) => sumando_1_18_Q,
      P(17) => sumando_1_17_Q,
      P(16) => sumando_1_16_Q,
      P(15) => sumando_1_15_Q,
      P(14) => sumando_1_14_Q,
      P(13) => sumando_1_13_Q,
      P(12) => sumando_1_12_Q,
      P(11) => sumando_1_11_Q,
      P(10) => sumando_1_10_Q,
      P(9) => sumando_1_9_Q,
      P(8) => sumando_1_8_Q,
      P(7) => sumando_1_7_Q,
      P(6) => sumando_1_6_Q,
      P(5) => sumando_1_5_Q,
      P(4) => sumando_1_4_Q,
      P(3) => sumando_1_3_Q,
      P(2) => sumando_1_2_Q,
      P(1) => sumando_1_1_Q,
      P(0) => sumando_1_0_Q,
      PCOUT(47) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47
,
      PCOUT(46) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46
,
      PCOUT(45) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45
,
      PCOUT(44) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44
,
      PCOUT(43) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43
,
      PCOUT(42) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42
,
      PCOUT(41) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41
,
      PCOUT(40) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40
,
      PCOUT(39) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39
,
      PCOUT(38) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38
,
      PCOUT(37) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37
,
      PCOUT(36) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36
,
      PCOUT(35) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35
,
      PCOUT(34) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34
,
      PCOUT(33) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33
,
      PCOUT(32) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32
,
      PCOUT(31) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31
,
      PCOUT(30) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30
,
      PCOUT(29) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29
,
      PCOUT(28) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28
,
      PCOUT(27) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27
,
      PCOUT(26) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26
,
      PCOUT(25) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25
,
      PCOUT(24) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24
,
      PCOUT(23) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23
,
      PCOUT(22) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22
,
      PCOUT(21) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21
,
      PCOUT(20) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20
,
      PCOUT(19) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19
,
      PCOUT(18) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18
,
      PCOUT(17) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17
,
      PCOUT(16) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16
,
      PCOUT(15) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15
,
      PCOUT(14) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14
,
      PCOUT(13) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13
,
      PCOUT(12) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12
,
      PCOUT(11) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11
,
      PCOUT(10) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10
,
      PCOUT(9) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9
,
      PCOUT(8) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8
,
      PCOUT(7) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7
,
      PCOUT(6) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6
,
      PCOUT(5) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5
,
      PCOUT(4) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4
,
      PCOUT(3) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3
,
      PCOUT(2) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2
,
      PCOUT(1) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1
,
      PCOUT(0) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0
,
      M(35) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35
,
      M(34) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34
,
      M(33) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33
,
      M(32) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32
,
      M(31) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31
,
      M(30) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30
,
      M(29) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29
,
      M(28) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28
,
      M(27) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27
,
      M(26) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26
,
      M(25) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25
,
      M(24) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24
,
      M(23) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23
,
      M(22) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22
,
      M(21) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21
,
      M(20) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20
,
      M(19) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19
,
      M(18) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18
,
      M(17) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17
,
      M(16) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16
,
      M(15) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15
,
      M(14) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14
,
      M(13) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13
,
      M(12) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12
,
      M(11) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11
,
      M(10) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10
,
      M(9) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9
,
      M(8) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8
,
      M(7) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7
,
      M(6) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6
,
      M(5) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5
,
      M(4) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4
,
      M(3) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3
,
      M(2) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2
,
      M(1) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1
,
      M(0) => 
BLOQUES_gen_0_BLOQUE_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0

    );
  DCM_gen_inst_dcm_sp_inst_PSENINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => DCM_gen_inst_dcm_sp_inst_PSEN_INT
    );
  DCM_gen_inst_dcm_sp_inst_CLKFB : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_dcm_sp_inst_ML_NEW_O,
      O => DCM_gen_inst_dcm_sp_inst_CLKFB_INT
    );
  DCM_gen_inst_dcm_sp_inst_CLKIN : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_dcm_sp_inst_ML_NEW_DIVCLK,
      O => DCM_gen_inst_dcm_sp_inst_CLKIN_INT
    );
  DCM_gen_inst_dcm_sp_inst_PSINCDECINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => DCM_gen_inst_dcm_sp_inst_PSINCDEC_INT
    );
  DCM_gen_inst_dcm_sp_inst_RSTINV : X_INV
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_0,
      O => DCM_gen_inst_dcm_sp_inst_RST_INTNOT
    );
  DCM_gen_inst_dcm_sp_inst_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => DCM_gen_inst_dcm_sp_inst_PSCLK_INT
    );
  DCM_gen_inst_dcm_sp_inst : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      DLL_FREQUENCY_MODE => "LOW",
      DFS_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      STARTUP_WAIT => FALSE,
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      DESKEW_ADJUST => "5",
      CLKFX_MULTIPLY => 4,
      CLKFX_DIVIDE => 1,
      PHASE_SHIFT => 0,
      CLKIN_PERIOD => 10.000000,
      LOC => "DCM_X0Y1"
    )
    port map (
      PSCLK => DCM_gen_inst_dcm_sp_inst_PSCLK_INT,
      RST => DCM_gen_inst_dcm_sp_inst_RST_INTNOT,
      PSINCDEC => DCM_gen_inst_dcm_sp_inst_PSINCDEC_INT,
      CLKIN => DCM_gen_inst_dcm_sp_inst_CLKIN_INT,
      CLKFB => DCM_gen_inst_dcm_sp_inst_CLKFB_INT,
      PSEN => DCM_gen_inst_dcm_sp_inst_PSEN_INT,
      DSSEN => DCM_gen_inst_dcm_sp_inst_DSSEN,
      CLK2X180 => DCM_gen_inst_dcm_sp_inst_CLK2X180,
      CLK2X => DCM_gen_inst_dcm_sp_inst_CLK2X,
      CLKFX => DCM_gen_inst_dcm_sp_inst_CLKFX,
      CLK180 => DCM_gen_inst_dcm_sp_inst_CLK180,
      CLK270 => DCM_gen_inst_dcm_sp_inst_CLK270,
      CLK0 => DCM_gen_inst_clk0,
      CLKFX180 => DCM_gen_inst_dcm_sp_inst_CLKFX180,
      CLKDV => DCM_gen_inst_dcm_sp_inst_CLKDV,
      PSDONE => DCM_gen_inst_dcm_sp_inst_PSDONE,
      CLK90 => DCM_gen_inst_dcm_sp_inst_CLK90,
      LOCKED => DCM_gen_inst_dcm_sp_inst_LOCKED,
      STATUS(7) => DCM_gen_inst_dcm_sp_inst_STATUS7,
      STATUS(6) => DCM_gen_inst_dcm_sp_inst_STATUS6,
      STATUS(5) => DCM_gen_inst_dcm_sp_inst_STATUS5,
      STATUS(4) => DCM_gen_inst_dcm_sp_inst_STATUS4,
      STATUS(3) => DCM_gen_inst_dcm_sp_inst_STATUS3,
      STATUS(2) => DCM_gen_inst_dcm_sp_inst_STATUS2,
      STATUS(1) => DCM_gen_inst_dcm_sp_inst_STATUS1,
      STATUS(0) => DCM_gen_inst_dcm_sp_inst_STATUS0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  datain_7_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => datain_7_IBUF_0,
      O => datain_7_IBUF_rt_1572
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_CLK,
      I => datain_7_IBUF_rt_1572,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  datain_6_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => datain_6_IBUF_0,
      O => datain_6_IBUF_rt_1556
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_CLK,
      I => datain_6_IBUF_rt_1556,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  datain_5_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => datain_5_IBUF_0,
      O => datain_5_IBUF_rt_1561
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_CLK,
      I => datain_5_IBUF_rt_1561,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  datain_4_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => datain_4_IBUF_0,
      O => datain_4_IBUF_rt_1566
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_CLK,
      I => datain_4_IBUF_rt_1566,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1591
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1591,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1598
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1598,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1603
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1603,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1608
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1608,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1614
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1614,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1621
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1621,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1626
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1626,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1631
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1631,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1637
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1637,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1644
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1644,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1649
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1649,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1654
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1654,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1660
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1660,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1667
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1667,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1672
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1672,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      ADR4 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1677
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1677,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1683
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1683,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1690
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1690,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1695
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1695,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1700
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1700,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1706
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1706,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1713
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1713,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1718
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1718,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1723
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8 : X_FF
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1723,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_0
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1729
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1729,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1736
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1736,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      ADR3 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1741
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1741,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      ADR4 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1746
    );
  BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12 : X_FF
    generic map(
      LOC => "SLICE_X12Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1746,
      O => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      ADR3 => '1',
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1752
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1752,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      ADR3 => '1',
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1759
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1759,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      ADR3 => '1',
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1764
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1764,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      ADR3 => '1',
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1769
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1769,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1775
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1775,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1782
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1782,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1787
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1787,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1792
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1792,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_0
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_Q,
      ADR4 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1798
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_rt_1798,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1805
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_rt_1805,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1810
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_rt_1810,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_Q,
      ADR3 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1815
    );
  BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y61",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_rt_1815,
      O => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1821
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_rt_1821,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1828
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_rt_1828,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1833
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_rt_1833,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      ADR4 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1838
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_rt_1838,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1844
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_rt_1844,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1851
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_rt_1851,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1856
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_rt_1856,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1861
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_rt_1861,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y56",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_0
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_0,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_rt_1893
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_rt_1893,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_0,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_rt_1877
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_rt_1877,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_0,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_rt_1882
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_rt_1882,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_0,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_rt_1887
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_rt_1887,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_0
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1901
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_rt_1901,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1908
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_rt_1908,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1913
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_rt_1913,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_Q,
      ADR3 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1918
    );
  BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y58",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_rt_1918,
      O => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_datainout_r_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y60",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_IN,
      O => BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_0_BLOQUE_inst_datainout_r_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_IN,
      O => BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_2_BLOQUE_inst_datainout_r_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y59",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_IN,
      O => BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_propagado_BLOQUES_gen_3_BLOQUE_inst_propagado_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_propagado_pack_1,
      O => BLOQUES_gen_2_BLOQUE_inst_propagado_2007
    );
  BLOQUES_gen_3_BLOQUE_inst_propagado : X_FF
    generic map(
      LOC => "SLICE_X21Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_propagado_CLK,
      I => BLOQUES_gen_3_BLOQUE_inst_propagado_rstpot_1944,
      O => BLOQUES_gen_3_BLOQUE_inst_propagado_2008,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_3_BLOQUE_inst_propagado_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y60",
      INIT => X"FFFFF000FFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => datain_valid_IBUF_0,
      ADR4 => BLOQUES_gen_3_BLOQUE_inst_propagado_2008,
      ADR2 => BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_Q,
      ADR5 => '1',
      O => BLOQUES_gen_3_BLOQUE_inst_propagado_rstpot_1944
    );
  BLOQUES_gen_2_BLOQUE_inst_propagado_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X21Y60",
      INIT => X"EECCEECC"
    )
    port map (
      ADR0 => BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_Q,
      ADR1 => BLOQUES_gen_2_BLOQUE_inst_propagado_2007,
      ADR3 => datain_valid_IBUF_0,
      ADR2 => '1',
      ADR4 => '1',
      O => BLOQUES_gen_2_BLOQUE_inst_propagado_rstpot_1943
    );
  BLOQUES_gen_2_BLOQUE_inst_propagado : X_FF
    generic map(
      LOC => "SLICE_X21Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_propagado_CLK,
      I => BLOQUES_gen_2_BLOQUE_inst_propagado_rstpot_1943,
      O => BLOQUES_gen_2_BLOQUE_inst_propagado_pack_1,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_propagado_BLOQUES_gen_1_BLOQUE_inst_propagado_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_propagado_pack_1,
      O => BLOQUES_gen_0_BLOQUE_inst_propagado_2084
    );
  BLOQUES_gen_1_BLOQUE_inst_propagado : X_FF
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_propagado_CLK,
      I => BLOQUES_gen_1_BLOQUE_inst_propagado_rstpot_1955,
      O => BLOQUES_gen_1_BLOQUE_inst_propagado_2040,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_propagado_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => X"FFFFCC00FFFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => datain_valid_IBUF_0,
      ADR4 => BLOQUES_gen_1_BLOQUE_inst_propagado_2040,
      ADR1 => BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_Q,
      ADR5 => '1',
      O => BLOQUES_gen_1_BLOQUE_inst_propagado_rstpot_1955
    );
  BLOQUES_gen_0_BLOQUE_inst_propagado_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => X"FAAAFAAA"
    )
    port map (
      ADR2 => BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_Q,
      ADR0 => BLOQUES_gen_0_BLOQUE_inst_propagado_2084,
      ADR3 => datain_valid_IBUF_0,
      ADR1 => '1',
      ADR4 => '1',
      O => BLOQUES_gen_0_BLOQUE_inst_propagado_rstpot_1954
    );
  BLOQUES_gen_0_BLOQUE_inst_propagado : X_FF
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_propagado_CLK,
      I => BLOQUES_gen_0_BLOQUE_inst_propagado_rstpot_1954,
      O => BLOQUES_gen_0_BLOQUE_inst_propagado_pack_1,
      RST => rst_IBUF_0,
      SET => GND
    );
  BLOQUES_gen_1_BLOQUE_inst_datainout_r_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y57",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_CLK,
      I => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_IN,
      O => BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_Q,
      RST => rst_IBUF_0,
      SET => GND
    );
  NlwBufferBlock_dataout_valid_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_propagado_2008,
      O => NlwBufferSignal_dataout_valid_OBUF_I
    );
  NlwBufferBlock_dataout_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_0_OBUF_2030,
      O => NlwBufferSignal_dataout_0_OBUF_I
    );
  NlwBufferBlock_dataout_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_1_OBUF_2036,
      O => NlwBufferSignal_dataout_1_OBUF_I
    );
  NlwBufferBlock_dataout_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_2_OBUF_2041,
      O => NlwBufferSignal_dataout_2_OBUF_I
    );
  NlwBufferBlock_dataout_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_3_OBUF_2043,
      O => NlwBufferSignal_dataout_3_OBUF_I
    );
  NlwBufferBlock_dataout_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_4_OBUF_2044,
      O => NlwBufferSignal_dataout_4_OBUF_I
    );
  NlwBufferBlock_dataout_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_5_OBUF_2047,
      O => NlwBufferSignal_dataout_5_OBUF_I
    );
  NlwBufferBlock_dataout_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_6_OBUF_2050,
      O => NlwBufferSignal_dataout_6_OBUF_I
    );
  NlwBufferBlock_dataout_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_7_OBUF_2055,
      O => NlwBufferSignal_dataout_7_OBUF_I
    );
  NlwBufferBlock_dataout_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_8_OBUF_2060,
      O => NlwBufferSignal_dataout_8_OBUF_I
    );
  NlwBufferBlock_dataout_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_9_OBUF_2066,
      O => NlwBufferSignal_dataout_9_OBUF_I
    );
  NlwBufferBlock_dataout_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_10_OBUF_2073,
      O => NlwBufferSignal_dataout_10_OBUF_I
    );
  NlwBufferBlock_dataout_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_11_OBUF_2074,
      O => NlwBufferSignal_dataout_11_OBUF_I
    );
  NlwBufferBlock_dataout_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_12_OBUF_2076,
      O => NlwBufferSignal_dataout_12_OBUF_I
    );
  NlwBufferBlock_dataout_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_13_OBUF_2078,
      O => NlwBufferSignal_dataout_13_OBUF_I
    );
  NlwBufferBlock_dataout_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_14_OBUF_2080,
      O => NlwBufferSignal_dataout_14_OBUF_I
    );
  NlwBufferBlock_dataout_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_15_OBUF_2082,
      O => NlwBufferSignal_dataout_15_OBUF_I
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I
    );
  NlwBufferBlock_DCM_gen_inst_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_clk0,
      O => NlwBufferSignal_DCM_gen_inst_clkout1_buf_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_3_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_2_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_1_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_0_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_11_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_10_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_9_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_8_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_3_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_2_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_1_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_0_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_3_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_3_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_2_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_2_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_1_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_1_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_0_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_0_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_7_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_6_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_5_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_4_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_7_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_7_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_6_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_6_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_5_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_5_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_4_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_4_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_11_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_11_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_10_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_10_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_9_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_9_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_8_Q,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_8_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_11_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_11_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_10_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_10_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_9_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_9_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_8_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_8_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_15_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_15_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_14_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_14_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_13_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_13_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_12_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_0_12_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_15_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_14_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_13_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_12_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_15_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_14_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_13_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_12_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_15_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_15_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_15_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_14_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_14_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_14_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_13_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_13_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_13_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_multiplicando_reg_D_1_12_0,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_0_12_IN
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_multiplicando_reg_D_1_12_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_7_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_7_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_6_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_6_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_5_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_5_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_4_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_4_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_3_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_3_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_2_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_2_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_1_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_1_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_0_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_0_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_7_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_7_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_6_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_6_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_5_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_5_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_4_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_4_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_11_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_3_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_10_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_2_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_9_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_1_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_0,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_8_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_1_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_11_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_11_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_11_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_10_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_10_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_10_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_9_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_9_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_9_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_0_8_0,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_multiplicando_reg_D_1_8_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_multiplicando_reg_D_0_8_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_2_BLOQUE_inst_propagado_2007,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_datainout_r_0_IN
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_valid_IBUF_0,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_datainout_r_0_IN
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_1_BLOQUE_inst_propagado_2040,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_datainout_r_0_IN
    );
  NlwBufferBlock_BLOQUES_gen_3_BLOQUE_inst_propagado_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_3_BLOQUE_inst_propagado_CLK
    );
  NlwBufferBlock_BLOQUES_gen_2_BLOQUE_inst_propagado_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_2_BLOQUE_inst_propagado_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_propagado_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_propagado_CLK
    );
  NlwBufferBlock_BLOQUES_gen_0_BLOQUE_inst_propagado_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_0_BLOQUE_inst_propagado_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_CLK
    );
  NlwBufferBlock_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => BLOQUES_gen_0_BLOQUE_inst_propagado_2084,
      O => NlwBufferSignal_BLOQUES_gen_1_BLOQUE_inst_datainout_r_0_IN
    );
  NlwBlock_Filtro_FIR_Sistologico_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Filtro_FIR_Sistologico_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

