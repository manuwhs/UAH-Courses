--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: Filtro_FIR_MAC_timesim.vhd
-- /___/   /\     Timestamp: Thu Dec 06 14:52:41 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf Filtro_FIR_MAC.pcf -rpw 100 -tpw 0 -ar Structure -tm Filtro_FIR_MAC -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Filtro_FIR_MAC.ncd Filtro_FIR_MAC_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.19 2011-06-20)
-- Input file	: Filtro_FIR_MAC.ncd
-- Output file	: C:\Users\manuel\Desktop\final\Filtro_Mac_prueba\netgen\par\Filtro_FIR_MAC_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Filtro_FIR_MAC
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

entity Filtro_FIR_MAC is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    datain_valid : in STD_LOGIC := 'X'; 
    dataout_valid : out STD_LOGIC; 
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    dataout : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end Filtro_FIR_MAC;

architecture Structure of Filtro_FIR_MAC is
  signal Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21_3080 : STD_LOGIC; 
  signal Control_inst_estado_FSM_FFd1_3081 : STD_LOGIC; 
  signal Control_inst_estado_FSM_FFd2_3082 : STD_LOGIC; 
  signal datain_valid_IBUF_0 : STD_LOGIC; 
  signal Control_inst_Addr_1_4_PWR_12_o_equal_5_o : STD_LOGIC; 
  signal clk_DCM : STD_LOGIC; 
  signal Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_Q : STD_LOGIC; 
  signal rst_valido : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal Control_inst_CE_ROM_3099 : STD_LOGIC; 
  signal Control_inst_Addr_4_0 : STD_LOGIC; 
  signal DCM_gen_inst_clkin1_0 : STD_LOGIC; 
  signal datain_0_IBUF_0 : STD_LOGIC; 
  signal datain_1_IBUF_0 : STD_LOGIC; 
  signal datain_2_IBUF_0 : STD_LOGIC; 
  signal datain_3_IBUF_0 : STD_LOGIC; 
  signal datain_4_IBUF_0 : STD_LOGIC; 
  signal datain_5_IBUF_0 : STD_LOGIC; 
  signal datain_6_IBUF_0 : STD_LOGIC; 
  signal datain_7_IBUF_0 : STD_LOGIC; 
  signal datain_8_IBUF_0 : STD_LOGIC; 
  signal datain_9_IBUF_0 : STD_LOGIC; 
  signal datain_10_IBUF_0 : STD_LOGIC; 
  signal datain_11_IBUF_0 : STD_LOGIC; 
  signal datain_12_IBUF_0 : STD_LOGIC; 
  signal datain_13_IBUF_0 : STD_LOGIC; 
  signal datain_14_IBUF_0 : STD_LOGIC; 
  signal datain_15_IBUF_0 : STD_LOGIC; 
  signal dataout_0_OBUF_3138 : STD_LOGIC; 
  signal dataout_1_OBUF_3139 : STD_LOGIC; 
  signal dataout_2_OBUF_3140 : STD_LOGIC; 
  signal dataout_3_OBUF_3141 : STD_LOGIC; 
  signal dataout_4_OBUF_3142 : STD_LOGIC; 
  signal dataout_5_OBUF_3143 : STD_LOGIC; 
  signal dataout_6_OBUF_3144 : STD_LOGIC; 
  signal dataout_7_OBUF_3145 : STD_LOGIC; 
  signal dataout_8_OBUF_3146 : STD_LOGIC; 
  signal dataout_9_OBUF_3147 : STD_LOGIC; 
  signal dataout_10_OBUF_3148 : STD_LOGIC; 
  signal dataout_11_OBUF_3149 : STD_LOGIC; 
  signal dataout_12_OBUF_3150 : STD_LOGIC; 
  signal dataout_13_OBUF_3151 : STD_LOGIC; 
  signal dataout_14_OBUF_3152 : STD_LOGIC; 
  signal dataout_15_OBUF_3153 : STD_LOGIC; 
  signal Control_inst_CE_Mult_3154 : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_ML_NEW_DIVCLK : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_ML_NEW_O : STD_LOGIC; 
  signal DCM_gen_inst_clk0 : STD_LOGIC; 
  signal Acumulador_inst_Clear : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_37_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_36_Q : STD_LOGIC; 
  signal Control_inst_CE_Acum_3213 : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_14_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_13_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_12_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_11_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_10_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_9_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_8_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_7_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_6_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_5_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_4_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_3_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_2_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_1_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_0_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_35_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_34_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_33_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_32_Q : STD_LOGIC; 
  signal Acumulador_inst_Resultado_D1_31_Q : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_10_0 : STD_LOGIC; 
  signal Registro_inst_mux1_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux1_91_3243 : STD_LOGIC; 
  signal Registro_inst_mux1_10_3244 : STD_LOGIC; 
  signal Registro_inst_mux1_9_3245 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_11_0 : STD_LOGIC; 
  signal Registro_inst_mux2_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux2_91_3263 : STD_LOGIC; 
  signal Registro_inst_mux2_10_3264 : STD_LOGIC; 
  signal Registro_inst_mux2_9_3265 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_12_0 : STD_LOGIC; 
  signal Registro_inst_mux3_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux3_91_3283 : STD_LOGIC; 
  signal Registro_inst_mux3_10_3284 : STD_LOGIC; 
  signal Registro_inst_mux3_9_3285 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_13_0 : STD_LOGIC; 
  signal Registro_inst_mux4_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux4_91_3303 : STD_LOGIC; 
  signal Registro_inst_mux4_10_3304 : STD_LOGIC; 
  signal Registro_inst_mux4_9_3305 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_14_0 : STD_LOGIC; 
  signal Registro_inst_mux5_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux5_91_3323 : STD_LOGIC; 
  signal Registro_inst_mux5_10_3324 : STD_LOGIC; 
  signal Registro_inst_mux5_9_3325 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_15_0 : STD_LOGIC; 
  signal Registro_inst_mux6_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux6_91_3343 : STD_LOGIC; 
  signal Registro_inst_mux6_10_3344 : STD_LOGIC; 
  signal Registro_inst_mux6_9_3345 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_27_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_1_0 : STD_LOGIC; 
  signal Registro_inst_mux7_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux7_91_3363 : STD_LOGIC; 
  signal Registro_inst_mux7_10_3364 : STD_LOGIC; 
  signal Registro_inst_mux7_9_3365 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_27_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_2_0 : STD_LOGIC; 
  signal Registro_inst_mux8_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux8_91_3383 : STD_LOGIC; 
  signal Registro_inst_mux8_10_3384 : STD_LOGIC; 
  signal Registro_inst_mux8_9_3385 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_27_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_3_0 : STD_LOGIC; 
  signal Registro_inst_mux9_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux9_91_3403 : STD_LOGIC; 
  signal Registro_inst_mux9_10_3404 : STD_LOGIC; 
  signal Registro_inst_mux9_9_3405 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_4_0 : STD_LOGIC; 
  signal Registro_inst_mux10_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux10_91_3423 : STD_LOGIC; 
  signal Registro_inst_mux10_10_3424 : STD_LOGIC; 
  signal Registro_inst_mux10_9_3425 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_5_0 : STD_LOGIC; 
  signal Registro_inst_mux11_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux11_91_3443 : STD_LOGIC; 
  signal Registro_inst_mux11_10_3444 : STD_LOGIC; 
  signal Registro_inst_mux11_9_3445 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_6_0 : STD_LOGIC; 
  signal Registro_inst_mux12_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux12_91_3463 : STD_LOGIC; 
  signal Registro_inst_mux12_10_3464 : STD_LOGIC; 
  signal Registro_inst_mux12_9_3465 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_7_0 : STD_LOGIC; 
  signal Registro_inst_mux13_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux13_91_3483 : STD_LOGIC; 
  signal Registro_inst_mux13_10_3484 : STD_LOGIC; 
  signal Registro_inst_mux13_9_3485 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_8_0 : STD_LOGIC; 
  signal Registro_inst_mux14_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux14_91_3503 : STD_LOGIC; 
  signal Registro_inst_mux14_10_3504 : STD_LOGIC; 
  signal Registro_inst_mux14_9_3505 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_9_0 : STD_LOGIC; 
  signal Registro_inst_mux15_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux15_91_3523 : STD_LOGIC; 
  signal Registro_inst_mux15_10_3524 : STD_LOGIC; 
  signal Registro_inst_mux15_9_3525 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_27_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_3_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_1_0_0 : STD_LOGIC; 
  signal Registro_inst_mux_6_f7_0 : STD_LOGIC; 
  signal Registro_inst_mux_91_3543 : STD_LOGIC; 
  signal Registro_inst_mux_10_3544 : STD_LOGIC; 
  signal Registro_inst_mux_9_3545 : STD_LOGIC; 
  signal Registro_inst_Registro_M_23_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_19_0_0 : STD_LOGIC; 
  signal Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251_3554 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_10_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_11_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_12_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_13_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_14_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_15_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_1_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_2_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_3_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_0_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_9_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_4_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_7_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_5_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_8_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_6_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_9_0 : STD_LOGIC; 
  signal Registro_inst_Registro_M_11_7_0 : STD_LOGIC; 
  signal Registro_inst_addr_1_11_3747 : STD_LOGIC; 
  signal Registro_inst_mux1_81_3748 : STD_LOGIC; 
  signal Registro_inst_addr_1_14 : STD_LOGIC; 
  signal Registro_inst_mux4_81_3750 : STD_LOGIC; 
  signal Registro_inst_addr_1_13 : STD_LOGIC; 
  signal Registro_inst_mux3_81_3752 : STD_LOGIC; 
  signal Registro_inst_addr_1_16 : STD_LOGIC; 
  signal Registro_inst_mux6_81_3754 : STD_LOGIC; 
  signal Registro_inst_addr_1_12 : STD_LOGIC; 
  signal Registro_inst_mux2_81_3756 : STD_LOGIC; 
  signal Registro_inst_addr_1_15 : STD_LOGIC; 
  signal Registro_inst_mux5_81_3758 : STD_LOGIC; 
  signal Control_inst_n0179_inv : STD_LOGIC; 
  signal Control_inst_n0145_inv : STD_LOGIC; 
  signal Control_inst_n0208_inv : STD_LOGIC; 
  signal Registro_inst_addr_1_114 : STD_LOGIC; 
  signal Registro_inst_mux14_81_3763 : STD_LOGIC; 
  signal Registro_inst_addr_1_112 : STD_LOGIC; 
  signal Registro_inst_mux12_81_3765 : STD_LOGIC; 
  signal Control_inst_n0132_inv : STD_LOGIC; 
  signal Registro_inst_addr_1_115 : STD_LOGIC; 
  signal Registro_inst_mux15_81_3768 : STD_LOGIC; 
  signal Registro_inst_addr_1_110 : STD_LOGIC; 
  signal Registro_inst_mux10_81_3770 : STD_LOGIC; 
  signal Registro_inst_addr_1_17 : STD_LOGIC; 
  signal Registro_inst_mux7_81_3772 : STD_LOGIC; 
  signal Registro_inst_addr_1_18 : STD_LOGIC; 
  signal Registro_inst_mux8_81_3774 : STD_LOGIC; 
  signal Registro_inst_addr_1_113 : STD_LOGIC; 
  signal Registro_inst_mux13_81_3776 : STD_LOGIC; 
  signal Registro_inst_addr_1_1_3777 : STD_LOGIC; 
  signal Registro_inst_mux_81_3778 : STD_LOGIC; 
  signal Registro_inst_addr_1_111_3779 : STD_LOGIC; 
  signal Registro_inst_mux11_81_3780 : STD_LOGIC; 
  signal Registro_inst_addr_1_19 : STD_LOGIC; 
  signal Registro_inst_mux9_81_3782 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO4 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO5 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO6 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO7 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO12 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO13 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO14 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO15 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPBDOP0 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPBDOP1 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPADOP0 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPADOP1 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO4 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO5 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO6 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO7 : STD_LOGIC; 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO12 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO13 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO14 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO15 : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU0_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU1_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL0_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL1_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTA_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEBREGCE_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKBRDCLK_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKAWRCLK_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENAWREN_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEA_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENBRDEN_INT : STD_LOGIC;
 
  signal ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTBRST_INT : STD_LOGIC;
 
  signal DCM_gen_inst_clkin1 : STD_LOGIC; 
  signal ProtoComp5_IINV_OUT : STD_LOGIC; 
  signal rst_valido_non_inverted : STD_LOGIC; 
  signal datain_0_IBUF_98 : STD_LOGIC; 
  signal datain_1_IBUF_101 : STD_LOGIC; 
  signal datain_2_IBUF_104 : STD_LOGIC; 
  signal datain_3_IBUF_107 : STD_LOGIC; 
  signal datain_4_IBUF_110 : STD_LOGIC; 
  signal datain_5_IBUF_113 : STD_LOGIC; 
  signal datain_6_IBUF_116 : STD_LOGIC; 
  signal datain_7_IBUF_119 : STD_LOGIC; 
  signal datain_8_IBUF_122 : STD_LOGIC; 
  signal datain_9_IBUF_125 : STD_LOGIC; 
  signal datain_10_IBUF_128 : STD_LOGIC; 
  signal datain_11_IBUF_131 : STD_LOGIC; 
  signal datain_12_IBUF_134 : STD_LOGIC; 
  signal datain_13_IBUF_137 : STD_LOGIC; 
  signal datain_14_IBUF_140 : STD_LOGIC; 
  signal datain_15_IBUF_143 : STD_LOGIC; 
  signal datain_valid_IBUF_168 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT0 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT1 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT2 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT3 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT4 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT5 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT6 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT7 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT8 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT9 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT10 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT11 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT12 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT13 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT14 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT15 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT16 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT17 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT18 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT19 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT20 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT21 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT22 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT23 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT24 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT25 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT26 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT27 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT28 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT29 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT30 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT31 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT32 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT33 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT34 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT35 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT36 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT37 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT38 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT39 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT40 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT41 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT42 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT43 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT44 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT45 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT46 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCOUT47 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P0 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P1 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P2 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P3 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P4 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P5 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P6 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P7 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P8 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P9 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P10 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P11 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P12 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P13 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P14 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P15 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P16 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P17 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P18 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P19 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P20 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P21 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P22 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P23 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P24 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P25 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P26 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P27 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P28 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P29 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P30 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P31 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P32 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P33 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P34 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P35 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P36 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P37 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P38 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P39 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P40 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P41 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P42 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P43 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P44 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P45 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P46 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_P47 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT0 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT1 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT2 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT3 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT4 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT5 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT6 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT7 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT8 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT9 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT10 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT11 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT12 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT13 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT14 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT15 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT16 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCOUT17 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CARRYOUT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CARRYOUTF : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN0 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN1 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN2 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN3 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN4 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN5 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN6 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN7 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN8 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN9 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN10 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN11 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN12 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN13 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN14 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN15 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN16 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_BCIN17 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN0 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN1 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN2 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN3 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN4 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN5 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN6 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN7 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN8 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN9 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN10 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN11 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN12 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN13 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN14 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN15 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN16 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN17 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN18 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN19 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN20 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN21 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN22 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN23 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN24 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN25 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN26 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN27 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN28 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN29 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN30 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN31 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN32 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN33 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN34 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN35 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN36 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN37 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN38 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN39 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN40 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN41 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN42 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN43 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN44 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN45 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN46 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_PCIN47 : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTP_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTA_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CEA_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CEP_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CEB_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CEM_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTB_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CLK_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTM_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTOPMODE_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CEC_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CEOPMODE_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTD_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CED_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTCARRYIN_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_RSTC_INT : STD_LOGIC; 
  signal Multiplicador_inst_blk00000003_CECARRYIN_INT : STD_LOGIC; 
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
  signal DCM_gen_inst_dcm_sp_inst_RST_INT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_PSCLK_INT : STD_LOGIC; 
  signal DCM_gen_inst_dcm_sp_inst_DSSEN : STD_LOGIC; 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47 : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT : STD_LOGIC;
 
  signal Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT : STD_LOGIC;
 
  signal Registro_inst_mux1_7_532 : STD_LOGIC; 
  signal Registro_inst_mux1_6_f7_525 : STD_LOGIC; 
  signal Registro_inst_mux1_8_524 : STD_LOGIC; 
  signal Registro_inst_mux14_7_548 : STD_LOGIC; 
  signal Registro_inst_mux14_6_f7_541 : STD_LOGIC; 
  signal Registro_inst_mux14_8_540 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_13_rt_577 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_12_rt_572 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_15_rt_563 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_14_rt_557 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_13_rt_600 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_12_rt_595 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_15_rt_586 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_14_rt_580 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_11_rt_642 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_11_pack_4 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_10_rt_635 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_10_pack_3 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_9_rt_631 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_9_pack_2 : STD_LOGIC; 
  signal Registro_inst_Registro_M_17_8_rt_626 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_8_pack_1 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_13_rt_668 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_12_rt_663 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_15_rt_654 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_14_rt_648 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_15_rt_695 : STD_LOGIC; 
  signal Registro_inst_Registro_M_7_15_pack_4 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_14_rt_688 : STD_LOGIC; 
  signal Registro_inst_Registro_M_7_14_pack_3 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_13_rt_684 : STD_LOGIC; 
  signal Registro_inst_Registro_M_7_13_pack_2 : STD_LOGIC; 
  signal Registro_inst_Registro_M_6_12_rt_679 : STD_LOGIC; 
  signal Registro_inst_Registro_M_7_12_pack_1 : STD_LOGIC; 
  signal Registro_inst_mux2_7_708 : STD_LOGIC; 
  signal Registro_inst_mux2_6_f7_701 : STD_LOGIC; 
  signal Registro_inst_mux2_8_700 : STD_LOGIC; 
  signal Registro_inst_mux15_6_f7_737 : STD_LOGIC; 
  signal Registro_inst_mux15_8_736 : STD_LOGIC; 
  signal Registro_inst_mux15_7_728 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_10_Q : STD_LOGIC; 
  signal Registro_inst_mux1_4_766 : STD_LOGIC; 
  signal Registro_inst_mux1_3_755 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_13_Q : STD_LOGIC; 
  signal Registro_inst_mux4_4_797 : STD_LOGIC; 
  signal Registro_inst_mux4_3_786 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_12_Q : STD_LOGIC; 
  signal Registro_inst_mux3_4_828 : STD_LOGIC; 
  signal Registro_inst_mux3_3_817 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_15_Q : STD_LOGIC; 
  signal Registro_inst_mux6_4_859 : STD_LOGIC; 
  signal Registro_inst_mux6_3_848 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_15_rt_920 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_14_rt_913 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_13_rt_909 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_12_rt_904 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_11_rt_943 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_10_rt_936 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_9_rt_932 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_8_rt_927 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_11_rt_966 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_10_rt_959 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_9_rt_955 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_8_rt_950 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_13_rt_1003 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_12_rt_998 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_15_rt_989 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_14_rt_983 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_11_Q : STD_LOGIC; 
  signal Registro_inst_mux2_4_1114 : STD_LOGIC; 
  signal Registro_inst_mux2_3_1103 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_11_rt_1136 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_10_rt_1129 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_9_rt_1125 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_8_rt_1120 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_14_Q : STD_LOGIC; 
  signal Registro_inst_mux5_4_1200 : STD_LOGIC; 
  signal Registro_inst_mux5_3_1189 : STD_LOGIC; 
  signal Registro_inst_mux4_7_1212 : STD_LOGIC; 
  signal Registro_inst_mux4_6_f7_1205 : STD_LOGIC; 
  signal Registro_inst_mux4_8_1204 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_13_rt_1241 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_12_rt_1236 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_15_rt_1227 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_14_rt_1221 : STD_LOGIC; 
  signal Registro_inst_mux5_7_1251 : STD_LOGIC; 
  signal Registro_inst_mux5_6_f7_1244 : STD_LOGIC; 
  signal Registro_inst_mux5_8_1243 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_11_rt_1284 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_10_rt_1277 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_9_rt_1273 : STD_LOGIC; 
  signal Registro_inst_Registro_M_15_8_rt_1268 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_13_rt_1335 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_12_rt_1330 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_15_rt_1321 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_14_rt_1315 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_9_rt_1391 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_8_rt_1386 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_11_rt_1377 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_10_rt_1371 : STD_LOGIC; 
  signal Registro_inst_mux3_7_1458 : STD_LOGIC; 
  signal Registro_inst_mux3_6_f7_1451 : STD_LOGIC; 
  signal Registro_inst_mux3_8_1450 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_13_rt_1487 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_12_rt_1482 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_15_rt_1473 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_14_rt_1467 : STD_LOGIC; 
  signal Registro_inst_mux6_7_1497 : STD_LOGIC; 
  signal Registro_inst_mux6_6_f7_1490 : STD_LOGIC; 
  signal Registro_inst_mux6_8_1489 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_9_rt_1526 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_8_rt_1521 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_11_rt_1512 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_10_rt_1506 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_11_rt_1546 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_10_rt_1539 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_9_rt_1535 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_8_rt_1530 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_15_rt_1569 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_14_rt_1562 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_13_rt_1558 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_12_rt_1553 : STD_LOGIC; 
  signal Control_inst_CE_Mult_pack_4 : STD_LOGIC; 
  signal Control_inst_CE_Mult_rstpot_1575 : STD_LOGIC; 
  signal Control_inst_estado_FSM_FFd1_In : STD_LOGIC; 
  signal Control_inst_CE_Acum_rstpot_1612 : STD_LOGIC; 
  signal Control_inst_CE_ROM_rstpot_1611 : STD_LOGIC; 
  signal Control_inst_CE_ROM_pack_15 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_9_rt_1647 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_8_rt_1642 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_11_rt_1633 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_10_rt_1627 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_8_Q : STD_LOGIC; 
  signal Registro_inst_mux14_4_1676 : STD_LOGIC; 
  signal Registro_inst_mux14_3_1665 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_9_rt_1701 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_8_rt_1696 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_11_rt_1687 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_10_rt_1681 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_6_Q : STD_LOGIC; 
  signal Registro_inst_mux12_4_1730 : STD_LOGIC; 
  signal Registro_inst_mux12_3_1719 : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_39_OUT_1_Q : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_39_OUT_0_Q : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_39_OUT_2_Q : STD_LOGIC; 
  signal Control_inst_retardo_2_pack_10 : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_35_OUT_3_Q : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_35_OUT_2_Q : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_35_OUT_1_Q : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_35_OUT_0_Q : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_1_rt_1815 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_0_rt_1810 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_3_rt_1801 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_2_rt_1795 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_11_rt_1835 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_10_rt_1828 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_9_rt_1824 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_8_rt_1819 : STD_LOGIC; 
  signal Control_inst_Addr_1_4_rt_1860 : STD_LOGIC; 
  signal Control_inst_estado_FSM_FFd2_In : STD_LOGIC; 
  signal Control_inst_estado_FSM_FFd2_pack_8 : STD_LOGIC; 
  signal Control_inst_estado_1_X_12_o_wide_mux_35_OUT_4_Q : STD_LOGIC; 
  signal Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_pack_10 : STD_LOGIC; 
  signal Registro_inst_mux8_7_1918 : STD_LOGIC; 
  signal Registro_inst_mux8_8_1901 : STD_LOGIC; 
  signal Registro_inst_mux8_6_f7_1900 : STD_LOGIC; 
  signal Registro_inst_mux_7_1934 : STD_LOGIC; 
  signal Registro_inst_mux_6_f7_1927 : STD_LOGIC; 
  signal Registro_inst_mux_8_1926 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_9_Q : STD_LOGIC; 
  signal Registro_inst_mux15_4_1969 : STD_LOGIC; 
  signal Registro_inst_mux15_3_1958 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_5_rt_1994 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_4_rt_1989 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_7_rt_1980 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_6_rt_1974 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_4_Q : STD_LOGIC; 
  signal Registro_inst_mux10_4_2023 : STD_LOGIC; 
  signal Registro_inst_mux10_3_2012 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_5_rt_2048 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_4_rt_2043 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_7_rt_2034 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_6_rt_2028 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_1_rt_2114 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_0_rt_2109 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_3_rt_2100 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_2_rt_2094 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_1_Q : STD_LOGIC; 
  signal Registro_inst_mux7_4_2175 : STD_LOGIC; 
  signal Registro_inst_mux7_3_2164 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_2_Q : STD_LOGIC; 
  signal Registro_inst_mux8_4_2206 : STD_LOGIC; 
  signal Registro_inst_mux8_3_2195 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_1_rt_2231 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_0_rt_2226 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_3_rt_2217 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_2_rt_2211 : STD_LOGIC; 
  signal Registro_inst_mux7_6_f7_2254 : STD_LOGIC; 
  signal Registro_inst_mux7_8_2253 : STD_LOGIC; 
  signal Registro_inst_mux7_7_2245 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_5_rt_2277 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_4_rt_2272 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_7_rt_2263 : STD_LOGIC; 
  signal Registro_inst_Registro_M_4_6_rt_2257 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_7_Q : STD_LOGIC; 
  signal Registro_inst_mux13_4_2306 : STD_LOGIC; 
  signal Registro_inst_mux13_3_2295 : STD_LOGIC; 
  signal Registro_inst_mux10_7_2350 : STD_LOGIC; 
  signal Registro_inst_mux10_6_f7_2343 : STD_LOGIC; 
  signal Registro_inst_mux10_8_2342 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_1_rt_2379 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_0_rt_2374 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_3_rt_2365 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_2_rt_2359 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_3_rt_2399 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_2_rt_2392 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_1_rt_2388 : STD_LOGIC; 
  signal Registro_inst_Registro_M_10_0_rt_2383 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_1_rt_2425 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_0_rt_2420 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_3_rt_2411 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_2_rt_2405 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_5_rt_2498 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_4_rt_2493 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_7_rt_2484 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_6_rt_2478 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_7_rt_2518 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_6_rt_2511 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_5_rt_2507 : STD_LOGIC; 
  signal Registro_inst_Registro_M_22_4_rt_2502 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_7_rt_2541 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_6_rt_2534 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_5_rt_2530 : STD_LOGIC; 
  signal Registro_inst_Registro_M_21_4_rt_2525 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_1_rt_2567 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_0_rt_2562 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_3_rt_2553 : STD_LOGIC; 
  signal Registro_inst_Registro_M_25_2_rt_2547 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_0_Q : STD_LOGIC; 
  signal Registro_inst_mux_4_2596 : STD_LOGIC; 
  signal Registro_inst_mux_3_2585 : STD_LOGIC; 
  signal Registro_inst_mux9_7_2608 : STD_LOGIC; 
  signal Registro_inst_mux9_6_f7_2601 : STD_LOGIC; 
  signal Registro_inst_mux9_8_2600 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_5_Q : STD_LOGIC; 
  signal Registro_inst_mux11_4_2661 : STD_LOGIC; 
  signal Registro_inst_mux11_3_2650 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_7_rt_2683 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_7_pack_4 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_6_rt_2676 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_6_pack_3 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_5_rt_2672 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_5_pack_2 : STD_LOGIC; 
  signal Registro_inst_Registro_M_13_4_rt_2667 : STD_LOGIC; 
  signal Registro_inst_Registro_M_14_4_pack_1 : STD_LOGIC; 
  signal Registro_inst_mux13_6_f7_2709 : STD_LOGIC; 
  signal Registro_inst_mux13_8_2708 : STD_LOGIC; 
  signal Registro_inst_mux13_7_2700 : STD_LOGIC; 
  signal Registro_inst_mux12_7_2719 : STD_LOGIC; 
  signal Registro_inst_mux12_6_f7_2712 : STD_LOGIC; 
  signal Registro_inst_mux12_8_2711 : STD_LOGIC; 
  signal Registro_inst_mux11_7_2735 : STD_LOGIC; 
  signal Registro_inst_mux11_6_f7_2728 : STD_LOGIC; 
  signal Registro_inst_mux11_8_2727 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_3_rt_2761 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_2_rt_2754 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_1_rt_2750 : STD_LOGIC; 
  signal Registro_inst_Registro_M_26_0_rt_2745 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_1_rt_2787 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_0_rt_2782 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_3_rt_2773 : STD_LOGIC; 
  signal Registro_inst_Registro_M_2_2_rt_2767 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_5_rt_2821 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_4_rt_2816 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_7_rt_2807 : STD_LOGIC; 
  signal Registro_inst_Registro_M_0_6_rt_2801 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_5_rt_2844 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_4_rt_2839 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_7_rt_2830 : STD_LOGIC; 
  signal Registro_inst_Registro_M_12_6_rt_2824 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_5_rt_2867 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_4_rt_2862 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_7_rt_2853 : STD_LOGIC; 
  signal Registro_inst_Registro_M_16_6_rt_2847 : STD_LOGIC; 
  signal Registro_inst_Registro_M_20_5_rt_2890 : STD_LOGIC; 
  signal Registro_inst_Registro_M_20_4_rt_2885 : STD_LOGIC; 
  signal Registro_inst_Registro_M_20_7_rt_2876 : STD_LOGIC; 
  signal Registro_inst_Registro_M_20_6_rt_2870 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_5_rt_2913 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_4_rt_2908 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_7_rt_2899 : STD_LOGIC; 
  signal Registro_inst_Registro_M_18_6_rt_2893 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_1_rt_2936 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_0_rt_2931 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_3_rt_2922 : STD_LOGIC; 
  signal Registro_inst_Registro_M_8_2_rt_2916 : STD_LOGIC; 
  signal Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_3_Q : STD_LOGIC; 
  signal Registro_inst_mux9_4_2965 : STD_LOGIC; 
  signal Registro_inst_mux9_3_2954 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_1_rt_3043 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_0_rt_3038 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_3_rt_3029 : STD_LOGIC; 
  signal Registro_inst_Registro_M_5_2_rt_3023 : STD_LOGIC; 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_5_Q : STD_LOGIC;
 
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
  signal NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_DCM_gen_inst_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_CE_Mult_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_estado_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_CE_Acum_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_CE_ROM_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_retardo_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_retardo_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_retardo_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_Addr_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Control_inst_estado_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_11_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_24_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_23_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_22_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_25_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_26_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_15_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_14_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_10_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_27_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_2_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_3_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_4_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_0_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_12_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_13_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_16_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_17_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_20_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_21_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_18_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_19_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_8_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_9_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Reg_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_7_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_5_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Registro_inst_Registro_M_6_0_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
  signal Control_inst_Addr_1_5 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Control_inst_retardo : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal douta : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Control_inst_Addr : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Registro_inst_Reg_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Sumando : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal Registro_inst_Registro_M_25 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_27 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_24 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_22 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_21 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_20 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_18 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_19 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_23 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_16 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_17 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_6 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_7 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_4 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_5 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_14 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_12 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_10 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_8 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_9 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_11 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_13 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_15 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_3 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_26 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Registro_inst_Registro_M_1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU0INV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU0_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU1INV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU1_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL0INV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL0_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL1INV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL1_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTAINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTA_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEBREGCEINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEBREGCE_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKBRDCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKBRDCLK_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKAWRCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKAWRCLK_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENAWRENINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_CE_ROM_3099,
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENAWREN_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEAINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEA_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENBRDENINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_CE_ROM_3099,
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENBRDEN_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTBRSTINV : X_BUF
    generic map(
      LOC => "RAMB8_X0Y5",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTBRST_INT
    );
  ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram : X_RAMB8BWER
    generic map(
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 18,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => FALSE,
      EN_RSTRAM_B => FALSE,
      RAM_MODE => "TDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"010B0A06000806000F080A060E0D06030E060F070E05030D0E0709040E0D0000",
      INIT_01 => X"0709060C070F0F0F070F0F0F0709060C060C0E04050B0900040700060301010A",
      INIT_02 => X"0E0D06030F080A0600080600010B0A060301010A04070006050B0900060C0E04",
      INIT_03 => X"000000000000000000000000000000000E0D00000E0709040E05030D0E060F07",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      LOC => "RAMB8_X0Y5"
    )
    port map (
      RSTBRST => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTBRST_INT,
      ENBRDEN => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENBRDEN_INT,
      REGCEA => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEA_INT,
      ENAWREN => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ENAWREN_INT,
      CLKAWRCLK => 
ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKAWRCLK_INT,
      CLKBRDCLK => 
ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_CLKBRDCLK_INT,
      REGCEBREGCE => 
ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_REGCEBREGCE_INT,
      RSTA => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_RSTA_INT,
      WEAWEL(1) => 
ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL1_INT,
      WEAWEL(0) => 
ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEAWEL0_INT,
      WEBWEU(1) => 
ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU1_INT,
      WEBWEU(0) => 
ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_WEBWEU0_INT,
      ADDRAWRADDR(12) => GND,
      ADDRAWRADDR(11) => GND,
      ADDRAWRADDR(10) => GND,
      ADDRAWRADDR(9) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_9_Q
,
      ADDRAWRADDR(8) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_8_Q
,
      ADDRAWRADDR(7) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_7_Q
,
      ADDRAWRADDR(6) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_6_Q
,
      ADDRAWRADDR(5) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_5_Q
,
      ADDRAWRADDR(4) => GND,
      ADDRAWRADDR(3) => GND,
      ADDRAWRADDR(2) => GND,
      ADDRAWRADDR(1) => GND,
      ADDRAWRADDR(0) => GND,
      DIPBDIP(1) => GND,
      DIPBDIP(0) => GND,
      DIBDI(15) => GND,
      DIBDI(14) => GND,
      DIBDI(13) => GND,
      DIBDI(12) => GND,
      DIBDI(11) => GND,
      DIBDI(10) => GND,
      DIBDI(9) => GND,
      DIBDI(8) => GND,
      DIBDI(7) => GND,
      DIBDI(6) => GND,
      DIBDI(5) => GND,
      DIBDI(4) => GND,
      DIBDI(3) => GND,
      DIBDI(2) => GND,
      DIBDI(1) => GND,
      DIBDI(0) => GND,
      DIADI(15) => GND,
      DIADI(14) => GND,
      DIADI(13) => GND,
      DIADI(12) => GND,
      DIADI(11) => GND,
      DIADI(10) => GND,
      DIADI(9) => GND,
      DIADI(8) => GND,
      DIADI(7) => GND,
      DIADI(6) => GND,
      DIADI(5) => GND,
      DIADI(4) => GND,
      DIADI(3) => GND,
      DIADI(2) => GND,
      DIADI(1) => GND,
      DIADI(0) => GND,
      ADDRBRDADDR(12) => GND,
      ADDRBRDADDR(11) => GND,
      ADDRBRDADDR(10) => GND,
      ADDRBRDADDR(9) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_9_Q
,
      ADDRBRDADDR(8) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_8_Q
,
      ADDRBRDADDR(7) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_7_Q
,
      ADDRBRDADDR(6) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_6_Q
,
      ADDRBRDADDR(5) => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_5_Q
,
      ADDRBRDADDR(4) => VCC,
      ADDRBRDADDR(3) => GND,
      ADDRBRDADDR(2) => GND,
      ADDRBRDADDR(1) => GND,
      ADDRBRDADDR(0) => GND,
      DIPADIP(1) => GND,
      DIPADIP(0) => GND,
      DOADO(15) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO15,
      DOADO(14) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO14,
      DOADO(13) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO13,
      DOADO(12) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO12,
      DOADO(11) => douta(7),
      DOADO(10) => douta(6),
      DOADO(9) => douta(5),
      DOADO(8) => douta(4),
      DOADO(7) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO7,
      DOADO(6) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO6,
      DOADO(5) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO5,
      DOADO(4) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOADO4,
      DOADO(3) => douta(3),
      DOADO(2) => douta(2),
      DOADO(1) => douta(1),
      DOADO(0) => douta(0),
      DOPADOP(1) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPADOP1,
      DOPADOP(0) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPADOP0,
      DOPBDOP(1) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPBDOP1,
      DOPBDOP(0) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOPBDOP0,
      DOBDO(15) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO15,
      DOBDO(14) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO14,
      DOBDO(13) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO13,
      DOBDO(12) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO12,
      DOBDO(11) => douta(15),
      DOBDO(10) => douta(14),
      DOBDO(9) => douta(13),
      DOBDO(8) => douta(12),
      DOBDO(7) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO7,
      DOBDO(6) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO6,
      DOBDO(5) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO5,
      DOBDO(4) => ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_DOBDO4,
      DOBDO(3) => douta(11),
      DOBDO(2) => douta(10),
      DOBDO(1) => douta(9),
      DOBDO(0) => douta(8)
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
  ProtoComp4_IMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_clkin1,
      O => DCM_gen_inst_clkin1_0
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_valido_non_inverted,
      I => rst
    );
  ProtoComp5_IMUX : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp5_IINV_OUT,
      O => rst_valido
    );
  ProtoComp5_IINV : X_INV
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_valido_non_inverted,
      O => ProtoComp5_IINV_OUT
    );
  datain_0_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_0_IBUF_98,
      I => datain(0)
    );
  ProtoComp4_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_0_IBUF_98,
      O => datain_0_IBUF_0
    );
  datain_1_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_1_IBUF_101,
      I => datain(1)
    );
  ProtoComp4_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_1_IBUF_101,
      O => datain_1_IBUF_0
    );
  datain_2_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_2_IBUF_104,
      I => datain(2)
    );
  ProtoComp4_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_2_IBUF_104,
      O => datain_2_IBUF_0
    );
  datain_3_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_3_IBUF_107,
      I => datain(3)
    );
  ProtoComp4_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_3_IBUF_107,
      O => datain_3_IBUF_0
    );
  datain_4_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_4_IBUF_110,
      I => datain(4)
    );
  ProtoComp4_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_4_IBUF_110,
      O => datain_4_IBUF_0
    );
  datain_5_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_5_IBUF_113,
      I => datain(5)
    );
  ProtoComp4_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_5_IBUF_113,
      O => datain_5_IBUF_0
    );
  datain_6_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_6_IBUF_116,
      I => datain(6)
    );
  ProtoComp4_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_6_IBUF_116,
      O => datain_6_IBUF_0
    );
  datain_7_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_7_IBUF_119,
      I => datain(7)
    );
  ProtoComp4_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_7_IBUF_119,
      O => datain_7_IBUF_0
    );
  datain_8_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_8_IBUF_122,
      I => datain(8)
    );
  ProtoComp4_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_8_IBUF_122,
      O => datain_8_IBUF_0
    );
  datain_9_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_9_IBUF_125,
      I => datain(9)
    );
  ProtoComp4_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_9_IBUF_125,
      O => datain_9_IBUF_0
    );
  datain_10_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_10_IBUF_128,
      I => datain(10)
    );
  ProtoComp4_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_10_IBUF_128,
      O => datain_10_IBUF_0
    );
  datain_11_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_11_IBUF_131,
      I => datain(11)
    );
  ProtoComp4_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_11_IBUF_131,
      O => datain_11_IBUF_0
    );
  datain_12_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_12_IBUF_134,
      I => datain(12)
    );
  ProtoComp4_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_12_IBUF_134,
      O => datain_12_IBUF_0
    );
  datain_13_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_13_IBUF_137,
      I => datain(13)
    );
  ProtoComp4_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_13_IBUF_137,
      O => datain_13_IBUF_0
    );
  datain_14_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_14_IBUF_140,
      I => datain(14)
    );
  ProtoComp4_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_14_IBUF_140,
      O => datain_14_IBUF_0
    );
  datain_15_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_15_IBUF_143,
      I => datain(15)
    );
  ProtoComp4_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_15_IBUF_143,
      O => datain_15_IBUF_0
    );
  dataout_valid_OBUF : X_OBUF
    generic map(
      LOC => "PAD198"
    )
    port map (
      I => NlwBufferSignal_dataout_valid_OBUF_I,
      O => dataout_valid
    );
  dataout_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => NlwBufferSignal_dataout_0_OBUF_I,
      O => dataout(0)
    );
  dataout_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => NlwBufferSignal_dataout_1_OBUF_I,
      O => dataout(1)
    );
  dataout_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => NlwBufferSignal_dataout_2_OBUF_I,
      O => dataout(2)
    );
  dataout_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => NlwBufferSignal_dataout_3_OBUF_I,
      O => dataout(3)
    );
  dataout_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => NlwBufferSignal_dataout_4_OBUF_I,
      O => dataout(4)
    );
  dataout_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => NlwBufferSignal_dataout_5_OBUF_I,
      O => dataout(5)
    );
  dataout_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => NlwBufferSignal_dataout_6_OBUF_I,
      O => dataout(6)
    );
  dataout_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD182"
    )
    port map (
      I => NlwBufferSignal_dataout_7_OBUF_I,
      O => dataout(7)
    );
  dataout_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => NlwBufferSignal_dataout_8_OBUF_I,
      O => dataout(8)
    );
  dataout_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD184"
    )
    port map (
      I => NlwBufferSignal_dataout_9_OBUF_I,
      O => dataout(9)
    );
  datain_valid_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_valid_IBUF_168,
      I => datain_valid
    );
  ProtoComp4_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_valid_IBUF_168,
      O => datain_valid_IBUF_0
    );
  dataout_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => NlwBufferSignal_dataout_10_OBUF_I,
      O => dataout(10)
    );
  dataout_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => NlwBufferSignal_dataout_11_OBUF_I,
      O => dataout(11)
    );
  dataout_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_dataout_12_OBUF_I,
      O => dataout(12)
    );
  dataout_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_dataout_13_OBUF_I,
      O => dataout(13)
    );
  dataout_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => NlwBufferSignal_dataout_14_OBUF_I,
      O => dataout(14)
    );
  dataout_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => NlwBufferSignal_dataout_15_OBUF_I,
      O => dataout(15)
    );
  Multiplicador_inst_blk00000003_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTP_INT
    );
  Multiplicador_inst_blk00000003_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTA_INT
    );
  Multiplicador_inst_blk00000003_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEA_INT
    );
  Multiplicador_inst_blk00000003_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEP_INT
    );
  Multiplicador_inst_blk00000003_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEB_INT
    );
  Multiplicador_inst_blk00000003_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_CE_Mult_3154,
      O => Multiplicador_inst_blk00000003_CEM_INT
    );
  Multiplicador_inst_blk00000003_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTB_INT
    );
  Multiplicador_inst_blk00000003_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => Multiplicador_inst_blk00000003_CLK_INT
    );
  Multiplicador_inst_blk00000003_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTM_INT
    );
  Multiplicador_inst_blk00000003_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTOPMODE_INT
    );
  Multiplicador_inst_blk00000003_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEC_INT
    );
  Multiplicador_inst_blk00000003_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEOPMODE_INT
    );
  Multiplicador_inst_blk00000003_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTD_INT
    );
  Multiplicador_inst_blk00000003_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CED_INT
    );
  Multiplicador_inst_blk00000003_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTCARRYIN_INT
    );
  Multiplicador_inst_blk00000003_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTC_INT
    );
  Multiplicador_inst_blk00000003_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CECARRYIN_INT
    );
  Multiplicador_inst_blk00000003 : X_DSP48A1
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
      LOC => "DSP48_X0Y2"
    )
    port map (
      CECARRYIN => Multiplicador_inst_blk00000003_CECARRYIN_INT,
      RSTC => Multiplicador_inst_blk00000003_RSTC_INT,
      RSTCARRYIN => Multiplicador_inst_blk00000003_RSTCARRYIN_INT,
      CED => Multiplicador_inst_blk00000003_CED_INT,
      RSTD => Multiplicador_inst_blk00000003_RSTD_INT,
      CEOPMODE => Multiplicador_inst_blk00000003_CEOPMODE_INT,
      CEC => Multiplicador_inst_blk00000003_CEC_INT,
      RSTOPMODE => Multiplicador_inst_blk00000003_RSTOPMODE_INT,
      RSTM => Multiplicador_inst_blk00000003_RSTM_INT,
      CLK => Multiplicador_inst_blk00000003_CLK_INT,
      RSTB => Multiplicador_inst_blk00000003_RSTB_INT,
      CEM => Multiplicador_inst_blk00000003_CEM_INT,
      CEB => Multiplicador_inst_blk00000003_CEB_INT,
      CARRYIN => GND,
      CEP => Multiplicador_inst_blk00000003_CEP_INT,
      CEA => Multiplicador_inst_blk00000003_CEA_INT,
      RSTA => Multiplicador_inst_blk00000003_RSTA_INT,
      RSTP => Multiplicador_inst_blk00000003_RSTP_INT,
      CARRYOUTF => Multiplicador_inst_blk00000003_CARRYOUTF,
      CARRYOUT => Multiplicador_inst_blk00000003_CARRYOUT,
      B(17) => Registro_inst_Reg_out(15),
      B(16) => Registro_inst_Reg_out(15),
      B(15) => Registro_inst_Reg_out(15),
      B(14) => Registro_inst_Reg_out(14),
      B(13) => Registro_inst_Reg_out(13),
      B(12) => Registro_inst_Reg_out(12),
      B(11) => Registro_inst_Reg_out(11),
      B(10) => Registro_inst_Reg_out(10),
      B(9) => Registro_inst_Reg_out(9),
      B(8) => Registro_inst_Reg_out(8),
      B(7) => Registro_inst_Reg_out(7),
      B(6) => Registro_inst_Reg_out(6),
      B(5) => Registro_inst_Reg_out(5),
      B(4) => Registro_inst_Reg_out(4),
      B(3) => Registro_inst_Reg_out(3),
      B(2) => Registro_inst_Reg_out(2),
      B(1) => Registro_inst_Reg_out(1),
      B(0) => Registro_inst_Reg_out(0),
      PCIN(47) => Multiplicador_inst_blk00000003_PCIN47,
      PCIN(46) => Multiplicador_inst_blk00000003_PCIN46,
      PCIN(45) => Multiplicador_inst_blk00000003_PCIN45,
      PCIN(44) => Multiplicador_inst_blk00000003_PCIN44,
      PCIN(43) => Multiplicador_inst_blk00000003_PCIN43,
      PCIN(42) => Multiplicador_inst_blk00000003_PCIN42,
      PCIN(41) => Multiplicador_inst_blk00000003_PCIN41,
      PCIN(40) => Multiplicador_inst_blk00000003_PCIN40,
      PCIN(39) => Multiplicador_inst_blk00000003_PCIN39,
      PCIN(38) => Multiplicador_inst_blk00000003_PCIN38,
      PCIN(37) => Multiplicador_inst_blk00000003_PCIN37,
      PCIN(36) => Multiplicador_inst_blk00000003_PCIN36,
      PCIN(35) => Multiplicador_inst_blk00000003_PCIN35,
      PCIN(34) => Multiplicador_inst_blk00000003_PCIN34,
      PCIN(33) => Multiplicador_inst_blk00000003_PCIN33,
      PCIN(32) => Multiplicador_inst_blk00000003_PCIN32,
      PCIN(31) => Multiplicador_inst_blk00000003_PCIN31,
      PCIN(30) => Multiplicador_inst_blk00000003_PCIN30,
      PCIN(29) => Multiplicador_inst_blk00000003_PCIN29,
      PCIN(28) => Multiplicador_inst_blk00000003_PCIN28,
      PCIN(27) => Multiplicador_inst_blk00000003_PCIN27,
      PCIN(26) => Multiplicador_inst_blk00000003_PCIN26,
      PCIN(25) => Multiplicador_inst_blk00000003_PCIN25,
      PCIN(24) => Multiplicador_inst_blk00000003_PCIN24,
      PCIN(23) => Multiplicador_inst_blk00000003_PCIN23,
      PCIN(22) => Multiplicador_inst_blk00000003_PCIN22,
      PCIN(21) => Multiplicador_inst_blk00000003_PCIN21,
      PCIN(20) => Multiplicador_inst_blk00000003_PCIN20,
      PCIN(19) => Multiplicador_inst_blk00000003_PCIN19,
      PCIN(18) => Multiplicador_inst_blk00000003_PCIN18,
      PCIN(17) => Multiplicador_inst_blk00000003_PCIN17,
      PCIN(16) => Multiplicador_inst_blk00000003_PCIN16,
      PCIN(15) => Multiplicador_inst_blk00000003_PCIN15,
      PCIN(14) => Multiplicador_inst_blk00000003_PCIN14,
      PCIN(13) => Multiplicador_inst_blk00000003_PCIN13,
      PCIN(12) => Multiplicador_inst_blk00000003_PCIN12,
      PCIN(11) => Multiplicador_inst_blk00000003_PCIN11,
      PCIN(10) => Multiplicador_inst_blk00000003_PCIN10,
      PCIN(9) => Multiplicador_inst_blk00000003_PCIN9,
      PCIN(8) => Multiplicador_inst_blk00000003_PCIN8,
      PCIN(7) => Multiplicador_inst_blk00000003_PCIN7,
      PCIN(6) => Multiplicador_inst_blk00000003_PCIN6,
      PCIN(5) => Multiplicador_inst_blk00000003_PCIN5,
      PCIN(4) => Multiplicador_inst_blk00000003_PCIN4,
      PCIN(3) => Multiplicador_inst_blk00000003_PCIN3,
      PCIN(2) => Multiplicador_inst_blk00000003_PCIN2,
      PCIN(1) => Multiplicador_inst_blk00000003_PCIN1,
      PCIN(0) => Multiplicador_inst_blk00000003_PCIN0,
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
      A(17) => douta(15),
      A(16) => douta(15),
      A(15) => douta(15),
      A(14) => douta(14),
      A(13) => douta(13),
      A(12) => douta(12),
      A(11) => douta(11),
      A(10) => douta(10),
      A(9) => douta(9),
      A(8) => douta(8),
      A(7) => douta(7),
      A(6) => douta(6),
      A(5) => douta(5),
      A(4) => douta(4),
      A(3) => douta(3),
      A(2) => douta(2),
      A(1) => douta(1),
      A(0) => douta(0),
      BCIN(17) => Multiplicador_inst_blk00000003_BCIN17,
      BCIN(16) => Multiplicador_inst_blk00000003_BCIN16,
      BCIN(15) => Multiplicador_inst_blk00000003_BCIN15,
      BCIN(14) => Multiplicador_inst_blk00000003_BCIN14,
      BCIN(13) => Multiplicador_inst_blk00000003_BCIN13,
      BCIN(12) => Multiplicador_inst_blk00000003_BCIN12,
      BCIN(11) => Multiplicador_inst_blk00000003_BCIN11,
      BCIN(10) => Multiplicador_inst_blk00000003_BCIN10,
      BCIN(9) => Multiplicador_inst_blk00000003_BCIN9,
      BCIN(8) => Multiplicador_inst_blk00000003_BCIN8,
      BCIN(7) => Multiplicador_inst_blk00000003_BCIN7,
      BCIN(6) => Multiplicador_inst_blk00000003_BCIN6,
      BCIN(5) => Multiplicador_inst_blk00000003_BCIN5,
      BCIN(4) => Multiplicador_inst_blk00000003_BCIN4,
      BCIN(3) => Multiplicador_inst_blk00000003_BCIN3,
      BCIN(2) => Multiplicador_inst_blk00000003_BCIN2,
      BCIN(1) => Multiplicador_inst_blk00000003_BCIN1,
      BCIN(0) => Multiplicador_inst_blk00000003_BCIN0,
      BCOUT(17) => Multiplicador_inst_blk00000003_BCOUT17,
      BCOUT(16) => Multiplicador_inst_blk00000003_BCOUT16,
      BCOUT(15) => Multiplicador_inst_blk00000003_BCOUT15,
      BCOUT(14) => Multiplicador_inst_blk00000003_BCOUT14,
      BCOUT(13) => Multiplicador_inst_blk00000003_BCOUT13,
      BCOUT(12) => Multiplicador_inst_blk00000003_BCOUT12,
      BCOUT(11) => Multiplicador_inst_blk00000003_BCOUT11,
      BCOUT(10) => Multiplicador_inst_blk00000003_BCOUT10,
      BCOUT(9) => Multiplicador_inst_blk00000003_BCOUT9,
      BCOUT(8) => Multiplicador_inst_blk00000003_BCOUT8,
      BCOUT(7) => Multiplicador_inst_blk00000003_BCOUT7,
      BCOUT(6) => Multiplicador_inst_blk00000003_BCOUT6,
      BCOUT(5) => Multiplicador_inst_blk00000003_BCOUT5,
      BCOUT(4) => Multiplicador_inst_blk00000003_BCOUT4,
      BCOUT(3) => Multiplicador_inst_blk00000003_BCOUT3,
      BCOUT(2) => Multiplicador_inst_blk00000003_BCOUT2,
      BCOUT(1) => Multiplicador_inst_blk00000003_BCOUT1,
      BCOUT(0) => Multiplicador_inst_blk00000003_BCOUT0,
      P(47) => Multiplicador_inst_blk00000003_P47,
      P(46) => Multiplicador_inst_blk00000003_P46,
      P(45) => Multiplicador_inst_blk00000003_P45,
      P(44) => Multiplicador_inst_blk00000003_P44,
      P(43) => Multiplicador_inst_blk00000003_P43,
      P(42) => Multiplicador_inst_blk00000003_P42,
      P(41) => Multiplicador_inst_blk00000003_P41,
      P(40) => Multiplicador_inst_blk00000003_P40,
      P(39) => Multiplicador_inst_blk00000003_P39,
      P(38) => Multiplicador_inst_blk00000003_P38,
      P(37) => Multiplicador_inst_blk00000003_P37,
      P(36) => Multiplicador_inst_blk00000003_P36,
      P(35) => Multiplicador_inst_blk00000003_P35,
      P(34) => Multiplicador_inst_blk00000003_P34,
      P(33) => Multiplicador_inst_blk00000003_P33,
      P(32) => Multiplicador_inst_blk00000003_P32,
      P(31) => Multiplicador_inst_blk00000003_P31,
      P(30) => Multiplicador_inst_blk00000003_P30,
      P(29) => Multiplicador_inst_blk00000003_P29,
      P(28) => Multiplicador_inst_blk00000003_P28,
      P(27) => Multiplicador_inst_blk00000003_P27,
      P(26) => Multiplicador_inst_blk00000003_P26,
      P(25) => Multiplicador_inst_blk00000003_P25,
      P(24) => Multiplicador_inst_blk00000003_P24,
      P(23) => Multiplicador_inst_blk00000003_P23,
      P(22) => Multiplicador_inst_blk00000003_P22,
      P(21) => Multiplicador_inst_blk00000003_P21,
      P(20) => Multiplicador_inst_blk00000003_P20,
      P(19) => Multiplicador_inst_blk00000003_P19,
      P(18) => Multiplicador_inst_blk00000003_P18,
      P(17) => Multiplicador_inst_blk00000003_P17,
      P(16) => Multiplicador_inst_blk00000003_P16,
      P(15) => Multiplicador_inst_blk00000003_P15,
      P(14) => Multiplicador_inst_blk00000003_P14,
      P(13) => Multiplicador_inst_blk00000003_P13,
      P(12) => Multiplicador_inst_blk00000003_P12,
      P(11) => Multiplicador_inst_blk00000003_P11,
      P(10) => Multiplicador_inst_blk00000003_P10,
      P(9) => Multiplicador_inst_blk00000003_P9,
      P(8) => Multiplicador_inst_blk00000003_P8,
      P(7) => Multiplicador_inst_blk00000003_P7,
      P(6) => Multiplicador_inst_blk00000003_P6,
      P(5) => Multiplicador_inst_blk00000003_P5,
      P(4) => Multiplicador_inst_blk00000003_P4,
      P(3) => Multiplicador_inst_blk00000003_P3,
      P(2) => Multiplicador_inst_blk00000003_P2,
      P(1) => Multiplicador_inst_blk00000003_P1,
      P(0) => Multiplicador_inst_blk00000003_P0,
      PCOUT(47) => Multiplicador_inst_blk00000003_PCOUT47,
      PCOUT(46) => Multiplicador_inst_blk00000003_PCOUT46,
      PCOUT(45) => Multiplicador_inst_blk00000003_PCOUT45,
      PCOUT(44) => Multiplicador_inst_blk00000003_PCOUT44,
      PCOUT(43) => Multiplicador_inst_blk00000003_PCOUT43,
      PCOUT(42) => Multiplicador_inst_blk00000003_PCOUT42,
      PCOUT(41) => Multiplicador_inst_blk00000003_PCOUT41,
      PCOUT(40) => Multiplicador_inst_blk00000003_PCOUT40,
      PCOUT(39) => Multiplicador_inst_blk00000003_PCOUT39,
      PCOUT(38) => Multiplicador_inst_blk00000003_PCOUT38,
      PCOUT(37) => Multiplicador_inst_blk00000003_PCOUT37,
      PCOUT(36) => Multiplicador_inst_blk00000003_PCOUT36,
      PCOUT(35) => Multiplicador_inst_blk00000003_PCOUT35,
      PCOUT(34) => Multiplicador_inst_blk00000003_PCOUT34,
      PCOUT(33) => Multiplicador_inst_blk00000003_PCOUT33,
      PCOUT(32) => Multiplicador_inst_blk00000003_PCOUT32,
      PCOUT(31) => Multiplicador_inst_blk00000003_PCOUT31,
      PCOUT(30) => Multiplicador_inst_blk00000003_PCOUT30,
      PCOUT(29) => Multiplicador_inst_blk00000003_PCOUT29,
      PCOUT(28) => Multiplicador_inst_blk00000003_PCOUT28,
      PCOUT(27) => Multiplicador_inst_blk00000003_PCOUT27,
      PCOUT(26) => Multiplicador_inst_blk00000003_PCOUT26,
      PCOUT(25) => Multiplicador_inst_blk00000003_PCOUT25,
      PCOUT(24) => Multiplicador_inst_blk00000003_PCOUT24,
      PCOUT(23) => Multiplicador_inst_blk00000003_PCOUT23,
      PCOUT(22) => Multiplicador_inst_blk00000003_PCOUT22,
      PCOUT(21) => Multiplicador_inst_blk00000003_PCOUT21,
      PCOUT(20) => Multiplicador_inst_blk00000003_PCOUT20,
      PCOUT(19) => Multiplicador_inst_blk00000003_PCOUT19,
      PCOUT(18) => Multiplicador_inst_blk00000003_PCOUT18,
      PCOUT(17) => Multiplicador_inst_blk00000003_PCOUT17,
      PCOUT(16) => Multiplicador_inst_blk00000003_PCOUT16,
      PCOUT(15) => Multiplicador_inst_blk00000003_PCOUT15,
      PCOUT(14) => Multiplicador_inst_blk00000003_PCOUT14,
      PCOUT(13) => Multiplicador_inst_blk00000003_PCOUT13,
      PCOUT(12) => Multiplicador_inst_blk00000003_PCOUT12,
      PCOUT(11) => Multiplicador_inst_blk00000003_PCOUT11,
      PCOUT(10) => Multiplicador_inst_blk00000003_PCOUT10,
      PCOUT(9) => Multiplicador_inst_blk00000003_PCOUT9,
      PCOUT(8) => Multiplicador_inst_blk00000003_PCOUT8,
      PCOUT(7) => Multiplicador_inst_blk00000003_PCOUT7,
      PCOUT(6) => Multiplicador_inst_blk00000003_PCOUT6,
      PCOUT(5) => Multiplicador_inst_blk00000003_PCOUT5,
      PCOUT(4) => Multiplicador_inst_blk00000003_PCOUT4,
      PCOUT(3) => Multiplicador_inst_blk00000003_PCOUT3,
      PCOUT(2) => Multiplicador_inst_blk00000003_PCOUT2,
      PCOUT(1) => Multiplicador_inst_blk00000003_PCOUT1,
      PCOUT(0) => Multiplicador_inst_blk00000003_PCOUT0,
      M(35) => Sumando(35),
      M(34) => Sumando(34),
      M(33) => Sumando(33),
      M(32) => Sumando(32),
      M(31) => Sumando(31),
      M(30) => Sumando(30),
      M(29) => Sumando(29),
      M(28) => Sumando(28),
      M(27) => Sumando(27),
      M(26) => Sumando(26),
      M(25) => Sumando(25),
      M(24) => Sumando(24),
      M(23) => Sumando(23),
      M(22) => Sumando(22),
      M(21) => Sumando(21),
      M(20) => Sumando(20),
      M(19) => Sumando(19),
      M(18) => Sumando(18),
      M(17) => Sumando(17),
      M(16) => Sumando(16),
      M(15) => Sumando(15),
      M(14) => Sumando(14),
      M(13) => Sumando(13),
      M(12) => Sumando(12),
      M(11) => Sumando(11),
      M(10) => Sumando(10),
      M(9) => Sumando(9),
      M(8) => Sumando(8),
      M(7) => Sumando(7),
      M(6) => Sumando(6),
      M(5) => Sumando(5),
      M(4) => Sumando(4),
      M(3) => Sumando(3),
      M(2) => Sumando(2),
      M(1) => Sumando(1),
      M(0) => Sumando(0)
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
  DCM_gen_inst_dcm_sp_inst_RSTINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_valido,
      O => DCM_gen_inst_dcm_sp_inst_RST_INT
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
      RST => DCM_gen_inst_dcm_sp_inst_RST_INT,
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
  SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X1Y15"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I,
      O => DCM_gen_inst_dcm_sp_inst_ML_NEW_O
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
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => Acumulador_inst_Clear,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_CE_Acum_3213,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLKINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT

    );
  Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive : 
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
      LOC => "DSP48_X0Y1"
    )
    port map (
      CECARRYIN => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT
,
      RSTC => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT
,
      RSTCARRYIN => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT
,
      CED => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT
,
      RSTD => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT
,
      CEOPMODE => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT
,
      CEC => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT
,
      RSTOPMODE => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT
,
      RSTM => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT
,
      CLK => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT
,
      RSTB => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT
,
      CEM => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT
,
      CEB => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT
,
      CARRYIN => GND,
      CEP => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT
,
      CEA => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT
,
      RSTA => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT
,
      RSTP => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT
,
      CARRYOUTF => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF
,
      CARRYOUT => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT
,
      B(17) => dataout_2_OBUF_3140,
      B(16) => dataout_1_OBUF_3139,
      B(15) => dataout_0_OBUF_3138,
      B(14) => Acumulador_inst_Resultado_D1_14_Q,
      B(13) => Acumulador_inst_Resultado_D1_13_Q,
      B(12) => Acumulador_inst_Resultado_D1_12_Q,
      B(11) => Acumulador_inst_Resultado_D1_11_Q,
      B(10) => Acumulador_inst_Resultado_D1_10_Q,
      B(9) => Acumulador_inst_Resultado_D1_9_Q,
      B(8) => Acumulador_inst_Resultado_D1_8_Q,
      B(7) => Acumulador_inst_Resultado_D1_7_Q,
      B(6) => Acumulador_inst_Resultado_D1_6_Q,
      B(5) => Acumulador_inst_Resultado_D1_5_Q,
      B(4) => Acumulador_inst_Resultado_D1_4_Q,
      B(3) => Acumulador_inst_Resultado_D1_3_Q,
      B(2) => Acumulador_inst_Resultado_D1_2_Q,
      B(1) => Acumulador_inst_Resultado_D1_1_Q,
      B(0) => Acumulador_inst_Resultado_D1_0_Q,
      PCIN(47) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47
,
      PCIN(46) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46
,
      PCIN(45) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45
,
      PCIN(44) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44
,
      PCIN(43) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43
,
      PCIN(42) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42
,
      PCIN(41) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41
,
      PCIN(40) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40
,
      PCIN(39) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39
,
      PCIN(38) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38
,
      PCIN(37) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37
,
      PCIN(36) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36
,
      PCIN(35) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35
,
      PCIN(34) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34
,
      PCIN(33) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33
,
      PCIN(32) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32
,
      PCIN(31) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31
,
      PCIN(30) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30
,
      PCIN(29) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29
,
      PCIN(28) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28
,
      PCIN(27) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27
,
      PCIN(26) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26
,
      PCIN(25) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25
,
      PCIN(24) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24
,
      PCIN(23) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23
,
      PCIN(22) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22
,
      PCIN(21) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21
,
      PCIN(20) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20
,
      PCIN(19) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19
,
      PCIN(18) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18
,
      PCIN(17) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17
,
      PCIN(16) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16
,
      PCIN(15) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15
,
      PCIN(14) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14
,
      PCIN(13) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13
,
      PCIN(12) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12
,
      PCIN(11) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11
,
      PCIN(10) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10
,
      PCIN(9) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9
,
      PCIN(8) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8
,
      PCIN(7) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7
,
      PCIN(6) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6
,
      PCIN(5) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5
,
      PCIN(4) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4
,
      PCIN(3) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3
,
      PCIN(2) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2
,
      PCIN(1) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1
,
      PCIN(0) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0
,
      C(47) => Sumando(35),
      C(46) => Sumando(35),
      C(45) => Sumando(35),
      C(44) => Sumando(35),
      C(43) => Sumando(35),
      C(42) => Sumando(35),
      C(41) => Sumando(35),
      C(40) => Sumando(35),
      C(39) => Sumando(35),
      C(38) => Sumando(35),
      C(37) => Sumando(35),
      C(36) => Sumando(35),
      C(35) => Sumando(35),
      C(34) => Sumando(34),
      C(33) => Sumando(33),
      C(32) => Sumando(32),
      C(31) => Sumando(31),
      C(30) => Sumando(30),
      C(29) => Sumando(29),
      C(28) => Sumando(28),
      C(27) => Sumando(27),
      C(26) => Sumando(26),
      C(25) => Sumando(25),
      C(24) => Sumando(24),
      C(23) => Sumando(23),
      C(22) => Sumando(22),
      C(21) => Sumando(21),
      C(20) => Sumando(20),
      C(19) => Sumando(19),
      C(18) => Sumando(18),
      C(17) => Sumando(17),
      C(16) => Sumando(16),
      C(15) => Sumando(15),
      C(14) => Sumando(14),
      C(13) => Sumando(13),
      C(12) => Sumando(12),
      C(11) => Sumando(11),
      C(10) => Sumando(10),
      C(9) => Sumando(9),
      C(8) => Sumando(8),
      C(7) => Sumando(7),
      C(6) => Sumando(6),
      C(5) => Sumando(5),
      C(4) => Sumando(4),
      C(3) => Sumando(3),
      C(2) => Sumando(2),
      C(1) => Sumando(1),
      C(0) => Sumando(0),
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => VCC,
      OPMODE(0) => VCC,
      D(17) => Acumulador_inst_Resultado_D1_37_Q,
      D(16) => Acumulador_inst_Resultado_D1_37_Q,
      D(15) => Acumulador_inst_Resultado_D1_37_Q,
      D(14) => Acumulador_inst_Resultado_D1_37_Q,
      D(13) => Acumulador_inst_Resultado_D1_37_Q,
      D(12) => Acumulador_inst_Resultado_D1_37_Q,
      D(11) => Acumulador_inst_Resultado_D1_37_Q,
      D(10) => Acumulador_inst_Resultado_D1_37_Q,
      D(9) => Acumulador_inst_Resultado_D1_37_Q,
      D(8) => Acumulador_inst_Resultado_D1_37_Q,
      D(7) => Acumulador_inst_Resultado_D1_37_Q,
      D(6) => Acumulador_inst_Resultado_D1_37_Q,
      D(5) => Acumulador_inst_Resultado_D1_37_Q,
      D(4) => Acumulador_inst_Resultado_D1_37_Q,
      D(3) => Acumulador_inst_Resultado_D1_37_Q,
      D(2) => Acumulador_inst_Resultado_D1_37_Q,
      D(1) => Acumulador_inst_Resultado_D1_37_Q,
      D(0) => Acumulador_inst_Resultado_D1_36_Q,
      A(17) => Acumulador_inst_Resultado_D1_35_Q,
      A(16) => Acumulador_inst_Resultado_D1_34_Q,
      A(15) => Acumulador_inst_Resultado_D1_33_Q,
      A(14) => Acumulador_inst_Resultado_D1_32_Q,
      A(13) => Acumulador_inst_Resultado_D1_31_Q,
      A(12) => dataout_15_OBUF_3153,
      A(11) => dataout_14_OBUF_3152,
      A(10) => dataout_13_OBUF_3151,
      A(9) => dataout_12_OBUF_3150,
      A(8) => dataout_11_OBUF_3149,
      A(7) => dataout_10_OBUF_3148,
      A(6) => dataout_9_OBUF_3147,
      A(5) => dataout_8_OBUF_3146,
      A(4) => dataout_7_OBUF_3145,
      A(3) => dataout_6_OBUF_3144,
      A(2) => dataout_5_OBUF_3143,
      A(1) => dataout_4_OBUF_3142,
      A(0) => dataout_3_OBUF_3141,
      BCIN(17) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17
,
      BCIN(16) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16
,
      BCIN(15) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15
,
      BCIN(14) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14
,
      BCIN(13) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13
,
      BCIN(12) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12
,
      BCIN(11) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11
,
      BCIN(10) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10
,
      BCIN(9) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9
,
      BCIN(8) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8
,
      BCIN(7) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7
,
      BCIN(6) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6
,
      BCIN(5) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5
,
      BCIN(4) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4
,
      BCIN(3) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3
,
      BCIN(2) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2
,
      BCIN(1) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1
,
      BCIN(0) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0
,
      BCOUT(17) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17
,
      BCOUT(16) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16
,
      BCOUT(15) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15
,
      BCOUT(14) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14
,
      BCOUT(13) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13
,
      BCOUT(12) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12
,
      BCOUT(11) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11
,
      BCOUT(10) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10
,
      BCOUT(9) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9
,
      BCOUT(8) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8
,
      BCOUT(7) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7
,
      BCOUT(6) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6
,
      BCOUT(5) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5
,
      BCOUT(4) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4
,
      BCOUT(3) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3
,
      BCOUT(2) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2
,
      BCOUT(1) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1
,
      BCOUT(0) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0
,
      P(47) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47
,
      P(46) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46
,
      P(45) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45
,
      P(44) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44
,
      P(43) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43
,
      P(42) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42
,
      P(41) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41
,
      P(40) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40
,
      P(39) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39
,
      P(38) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38
,
      P(37) => Acumulador_inst_Resultado_D1_37_Q,
      P(36) => Acumulador_inst_Resultado_D1_36_Q,
      P(35) => Acumulador_inst_Resultado_D1_35_Q,
      P(34) => Acumulador_inst_Resultado_D1_34_Q,
      P(33) => Acumulador_inst_Resultado_D1_33_Q,
      P(32) => Acumulador_inst_Resultado_D1_32_Q,
      P(31) => Acumulador_inst_Resultado_D1_31_Q,
      P(30) => dataout_15_OBUF_3153,
      P(29) => dataout_14_OBUF_3152,
      P(28) => dataout_13_OBUF_3151,
      P(27) => dataout_12_OBUF_3150,
      P(26) => dataout_11_OBUF_3149,
      P(25) => dataout_10_OBUF_3148,
      P(24) => dataout_9_OBUF_3147,
      P(23) => dataout_8_OBUF_3146,
      P(22) => dataout_7_OBUF_3145,
      P(21) => dataout_6_OBUF_3144,
      P(20) => dataout_5_OBUF_3143,
      P(19) => dataout_4_OBUF_3142,
      P(18) => dataout_3_OBUF_3141,
      P(17) => dataout_2_OBUF_3140,
      P(16) => dataout_1_OBUF_3139,
      P(15) => dataout_0_OBUF_3138,
      P(14) => Acumulador_inst_Resultado_D1_14_Q,
      P(13) => Acumulador_inst_Resultado_D1_13_Q,
      P(12) => Acumulador_inst_Resultado_D1_12_Q,
      P(11) => Acumulador_inst_Resultado_D1_11_Q,
      P(10) => Acumulador_inst_Resultado_D1_10_Q,
      P(9) => Acumulador_inst_Resultado_D1_9_Q,
      P(8) => Acumulador_inst_Resultado_D1_8_Q,
      P(7) => Acumulador_inst_Resultado_D1_7_Q,
      P(6) => Acumulador_inst_Resultado_D1_6_Q,
      P(5) => Acumulador_inst_Resultado_D1_5_Q,
      P(4) => Acumulador_inst_Resultado_D1_4_Q,
      P(3) => Acumulador_inst_Resultado_D1_3_Q,
      P(2) => Acumulador_inst_Resultado_D1_2_Q,
      P(1) => Acumulador_inst_Resultado_D1_1_Q,
      P(0) => Acumulador_inst_Resultado_D1_0_Q,
      PCOUT(47) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47
,
      PCOUT(46) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46
,
      PCOUT(45) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45
,
      PCOUT(44) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44
,
      PCOUT(43) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43
,
      PCOUT(42) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42
,
      PCOUT(41) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41
,
      PCOUT(40) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40
,
      PCOUT(39) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39
,
      PCOUT(38) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38
,
      PCOUT(37) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37
,
      PCOUT(36) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36
,
      PCOUT(35) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35
,
      PCOUT(34) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34
,
      PCOUT(33) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33
,
      PCOUT(32) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32
,
      PCOUT(31) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31
,
      PCOUT(30) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30
,
      PCOUT(29) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29
,
      PCOUT(28) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28
,
      PCOUT(27) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27
,
      PCOUT(26) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26
,
      PCOUT(25) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25
,
      PCOUT(24) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24
,
      PCOUT(23) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23
,
      PCOUT(22) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22
,
      PCOUT(21) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21
,
      PCOUT(20) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20
,
      PCOUT(19) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19
,
      PCOUT(18) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18
,
      PCOUT(17) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17
,
      PCOUT(16) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16
,
      PCOUT(15) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15
,
      PCOUT(14) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14
,
      PCOUT(13) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13
,
      PCOUT(12) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12
,
      PCOUT(11) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11
,
      PCOUT(10) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10
,
      PCOUT(9) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9
,
      PCOUT(8) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8
,
      PCOUT(7) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7
,
      PCOUT(6) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6
,
      PCOUT(5) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5
,
      PCOUT(4) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4
,
      PCOUT(3) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3
,
      PCOUT(2) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2
,
      PCOUT(1) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1
,
      PCOUT(0) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0
,
      M(35) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35
,
      M(34) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34
,
      M(33) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33
,
      M(32) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32
,
      M(31) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31
,
      M(30) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30
,
      M(29) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29
,
      M(28) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28
,
      M(27) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27
,
      M(26) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26
,
      M(25) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25
,
      M(24) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24
,
      M(23) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23
,
      M(22) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22
,
      M(21) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21
,
      M(20) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20
,
      M(19) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19
,
      M(18) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18
,
      M(17) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17
,
      M(16) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16
,
      M(15) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15
,
      M(14) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14
,
      M(13) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13
,
      M(12) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12
,
      M(11) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11
,
      M(10) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10
,
      M(9) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9
,
      M(8) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8
,
      M(7) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7
,
      M(6) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6
,
      M(5) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5
,
      M(4) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4
,
      M(3) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3
,
      M(2) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2
,
      M(1) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1
,
      M(0) => 
Acumulador_inst_Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0

    );
  Registro_inst_mux1_6_f7_Registro_inst_mux1_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux1_6_f7_525,
      O => Registro_inst_mux1_6_f7_0
    );
  Registro_inst_mux1_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      IA => Registro_inst_mux1_8_524,
      IB => Registro_inst_mux1_7_532,
      O => Registro_inst_mux1_6_f7_525,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux1_8 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"CCAAF0FFCCAAF000"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_18(10),
      ADR1 => Registro_inst_Registro_M_19(10),
      ADR2 => Registro_inst_Registro_M_17_10_0,
      ADR5 => Registro_inst_Registro_M_16_10_0,
      O => Registro_inst_mux1_8_524
    );
  Registro_inst_mux1_7 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"FFCAF0CA0FCA00CA"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_22(10),
      ADR5 => Registro_inst_Registro_M_23_10_0,
      ADR1 => Registro_inst_Registro_M_21(10),
      ADR0 => Registro_inst_Registro_M_20(10),
      O => Registro_inst_mux1_7_532
    );
  Registro_inst_mux14_6_f7_Registro_inst_mux14_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux14_6_f7_541,
      O => Registro_inst_mux14_6_f7_0
    );
  Registro_inst_mux14_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      IA => Registro_inst_mux14_8_540,
      IB => Registro_inst_mux14_7_548,
      O => Registro_inst_mux14_6_f7_541,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux14_8 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"F0FFCCAAF000CCAA"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_18(8),
      ADR2 => Registro_inst_Registro_M_19(8),
      ADR5 => Registro_inst_Registro_M_17_8_0,
      ADR0 => Registro_inst_Registro_M_16_8_0,
      O => Registro_inst_mux14_8_540
    );
  Registro_inst_mux14_7 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"FA0AFCFCFA0A0C0C"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_22(8),
      ADR3 => Registro_inst_Registro_M_23_8_0,
      ADR0 => Registro_inst_Registro_M_21(8),
      ADR1 => Registro_inst_Registro_M_20(8),
      O => Registro_inst_mux14_7_548
    );
  Registro_inst_Registro_M_14_15_Registro_inst_Registro_M_14_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(15),
      O => Registro_inst_Registro_M_15_15_0
    );
  Registro_inst_Registro_M_14_15_Registro_inst_Registro_M_14_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(14),
      O => Registro_inst_Registro_M_15_14_0
    );
  Registro_inst_Registro_M_14_15_Registro_inst_Registro_M_14_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(13),
      O => Registro_inst_Registro_M_15_13_0
    );
  Registro_inst_Registro_M_14_15_Registro_inst_Registro_M_14_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(12),
      O => Registro_inst_Registro_M_15_12_0
    );
  Registro_inst_Registro_M_14_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_15_IN,
      O => Registro_inst_Registro_M_14(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_14(15),
      ADR3 => '1',
      O => Registro_inst_Registro_M_14_15_rt_563
    );
  Registro_inst_Registro_M_15_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_15_CLK,
      I => Registro_inst_Registro_M_14_15_rt_563,
      O => Registro_inst_Registro_M_15(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_14_IN,
      O => Registro_inst_Registro_M_14(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_14(14),
      ADR3 => '1',
      O => Registro_inst_Registro_M_14_14_rt_557
    );
  Registro_inst_Registro_M_15_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_14_CLK,
      I => Registro_inst_Registro_M_14_14_rt_557,
      O => Registro_inst_Registro_M_15(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_13_IN,
      O => Registro_inst_Registro_M_14(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_14(13),
      ADR3 => '1',
      O => Registro_inst_Registro_M_14_13_rt_577
    );
  Registro_inst_Registro_M_15_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_13_CLK,
      I => Registro_inst_Registro_M_14_13_rt_577,
      O => Registro_inst_Registro_M_15(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_12_IN,
      O => Registro_inst_Registro_M_14(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_14(12),
      ADR4 => '1',
      O => Registro_inst_Registro_M_14_12_rt_572
    );
  Registro_inst_Registro_M_15_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_12_CLK,
      I => Registro_inst_Registro_M_14_12_rt_572,
      O => Registro_inst_Registro_M_15(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_15_Registro_inst_Registro_M_4_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(15),
      O => Registro_inst_Registro_M_5_15_0
    );
  Registro_inst_Registro_M_4_15_Registro_inst_Registro_M_4_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(14),
      O => Registro_inst_Registro_M_5_14_0
    );
  Registro_inst_Registro_M_4_15_Registro_inst_Registro_M_4_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(13),
      O => Registro_inst_Registro_M_5_13_0
    );
  Registro_inst_Registro_M_4_15_Registro_inst_Registro_M_4_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(12),
      O => Registro_inst_Registro_M_5_12_0
    );
  Registro_inst_Registro_M_4_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_15_IN,
      O => Registro_inst_Registro_M_4(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(15),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_15_rt_586
    );
  Registro_inst_Registro_M_5_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_15_CLK,
      I => Registro_inst_Registro_M_4_15_rt_586,
      O => Registro_inst_Registro_M_5(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_14_IN,
      O => Registro_inst_Registro_M_4(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(14),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_14_rt_580
    );
  Registro_inst_Registro_M_5_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_14_CLK,
      I => Registro_inst_Registro_M_4_14_rt_580,
      O => Registro_inst_Registro_M_5(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_13_IN,
      O => Registro_inst_Registro_M_4(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(13),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_13_rt_600
    );
  Registro_inst_Registro_M_5_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_13_CLK,
      I => Registro_inst_Registro_M_4_13_rt_600,
      O => Registro_inst_Registro_M_5(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_12_IN,
      O => Registro_inst_Registro_M_4(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Registro_inst_Registro_M_4(12),
      ADR4 => '1',
      O => Registro_inst_Registro_M_4_12_rt_595
    );
  Registro_inst_Registro_M_5_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_12_CLK,
      I => Registro_inst_Registro_M_4_12_rt_595,
      O => Registro_inst_Registro_M_5(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_15_IN,
      O => Registro_inst_Registro_M_9(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_14_IN,
      O => Registro_inst_Registro_M_9(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_13_IN,
      O => Registro_inst_Registro_M_9(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_12_IN,
      O => Registro_inst_Registro_M_9(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_11_IN,
      O => Registro_inst_Registro_M_20(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_10_IN,
      O => Registro_inst_Registro_M_20(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_9_IN,
      O => Registro_inst_Registro_M_20(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_8_IN,
      O => Registro_inst_Registro_M_20(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_19_11_Registro_inst_Registro_M_19_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18_11_pack_4,
      O => Registro_inst_Registro_M_18(11)
    );
  Registro_inst_Registro_M_19_11_Registro_inst_Registro_M_19_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18_10_pack_3,
      O => Registro_inst_Registro_M_18(10)
    );
  Registro_inst_Registro_M_19_11_Registro_inst_Registro_M_19_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18_9_pack_2,
      O => Registro_inst_Registro_M_18(9)
    );
  Registro_inst_Registro_M_19_11_Registro_inst_Registro_M_19_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18_8_pack_1,
      O => Registro_inst_Registro_M_18(8)
    );
  Registro_inst_Registro_M_19_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_19_11_IN,
      O => Registro_inst_Registro_M_19(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_17_11_0,
      O => Registro_inst_Registro_M_17_11_rt_642
    );
  Registro_inst_Registro_M_18_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_11_CLK,
      I => Registro_inst_Registro_M_17_11_rt_642,
      O => Registro_inst_Registro_M_18_11_pack_4,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_19_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_19_10_IN,
      O => Registro_inst_Registro_M_19(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Registro_inst_Registro_M_17_10_0,
      O => Registro_inst_Registro_M_17_10_rt_635
    );
  Registro_inst_Registro_M_18_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_10_CLK,
      I => Registro_inst_Registro_M_17_10_rt_635,
      O => Registro_inst_Registro_M_18_10_pack_3,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_19_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_19_9_IN,
      O => Registro_inst_Registro_M_19(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_17_9_0,
      O => Registro_inst_Registro_M_17_9_rt_631
    );
  Registro_inst_Registro_M_18_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_9_CLK,
      I => Registro_inst_Registro_M_17_9_rt_631,
      O => Registro_inst_Registro_M_18_9_pack_2,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_19_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_19_8_IN,
      O => Registro_inst_Registro_M_19(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_17_8_0,
      O => Registro_inst_Registro_M_17_8_rt_626
    );
  Registro_inst_Registro_M_18_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_8_CLK,
      I => Registro_inst_Registro_M_17_8_rt_626,
      O => Registro_inst_Registro_M_18_8_pack_1,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_15_Registro_inst_Registro_M_2_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(15),
      O => Registro_inst_Registro_M_3_15_0
    );
  Registro_inst_Registro_M_2_15_Registro_inst_Registro_M_2_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(14),
      O => Registro_inst_Registro_M_3_14_0
    );
  Registro_inst_Registro_M_2_15_Registro_inst_Registro_M_2_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(13),
      O => Registro_inst_Registro_M_3_13_0
    );
  Registro_inst_Registro_M_2_15_Registro_inst_Registro_M_2_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(12),
      O => Registro_inst_Registro_M_3_12_0
    );
  Registro_inst_Registro_M_2_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_15_IN,
      O => Registro_inst_Registro_M_2(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(15),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_15_rt_654
    );
  Registro_inst_Registro_M_3_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_15_CLK,
      I => Registro_inst_Registro_M_2_15_rt_654,
      O => Registro_inst_Registro_M_3(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_14_IN,
      O => Registro_inst_Registro_M_2(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(14),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_14_rt_648
    );
  Registro_inst_Registro_M_3_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_14_CLK,
      I => Registro_inst_Registro_M_2_14_rt_648,
      O => Registro_inst_Registro_M_3(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_13_IN,
      O => Registro_inst_Registro_M_2(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(13),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_13_rt_668
    );
  Registro_inst_Registro_M_3_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_13_CLK,
      I => Registro_inst_Registro_M_2_13_rt_668,
      O => Registro_inst_Registro_M_3(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_12_IN,
      O => Registro_inst_Registro_M_2(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(12),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_12_rt_663
    );
  Registro_inst_Registro_M_3_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_12_CLK,
      I => Registro_inst_Registro_M_2_12_rt_663,
      O => Registro_inst_Registro_M_3(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux4_10 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => X"CAFFCA0FCAF0CA00"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_14(13),
      ADR1 => Registro_inst_Registro_M_15_13_0,
      ADR0 => Registro_inst_Registro_M_13(13),
      ADR5 => Registro_inst_Registro_M_12(13),
      O => Registro_inst_mux4_10_3304
    );
  Registro_inst_Registro_M_8_15_Registro_inst_Registro_M_8_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7_15_pack_4,
      O => Registro_inst_Registro_M_7(15)
    );
  Registro_inst_Registro_M_8_15_Registro_inst_Registro_M_8_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7_14_pack_3,
      O => Registro_inst_Registro_M_7(14)
    );
  Registro_inst_Registro_M_8_15_Registro_inst_Registro_M_8_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7_13_pack_2,
      O => Registro_inst_Registro_M_7(13)
    );
  Registro_inst_Registro_M_8_15_Registro_inst_Registro_M_8_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7_12_pack_1,
      O => Registro_inst_Registro_M_7(12)
    );
  Registro_inst_Registro_M_8_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_15_IN,
      O => Registro_inst_Registro_M_8(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_6_15_0,
      O => Registro_inst_Registro_M_6_15_rt_695
    );
  Registro_inst_Registro_M_7_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_15_CLK,
      I => Registro_inst_Registro_M_6_15_rt_695,
      O => Registro_inst_Registro_M_7_15_pack_4,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_14_IN,
      O => Registro_inst_Registro_M_8(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_6_14_0,
      O => Registro_inst_Registro_M_6_14_rt_688
    );
  Registro_inst_Registro_M_7_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_14_CLK,
      I => Registro_inst_Registro_M_6_14_rt_688,
      O => Registro_inst_Registro_M_7_14_pack_3,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_13_IN,
      O => Registro_inst_Registro_M_8(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_6_13_0,
      O => Registro_inst_Registro_M_6_13_rt_684
    );
  Registro_inst_Registro_M_7_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_13_CLK,
      I => Registro_inst_Registro_M_6_13_rt_684,
      O => Registro_inst_Registro_M_7_13_pack_2,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_12_IN,
      O => Registro_inst_Registro_M_8(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_6_12_0,
      O => Registro_inst_Registro_M_6_12_rt_679
    );
  Registro_inst_Registro_M_7_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_12_CLK,
      I => Registro_inst_Registro_M_6_12_rt_679,
      O => Registro_inst_Registro_M_7_12_pack_1,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux2_6_f7_Registro_inst_mux2_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux2_6_f7_701,
      O => Registro_inst_mux2_6_f7_0
    );
  Registro_inst_mux2_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y2"
    )
    port map (
      IA => Registro_inst_mux2_8_700,
      IB => Registro_inst_mux2_7_708,
      O => Registro_inst_mux2_6_f7_701,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux2_8 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"F3C0F3C0BBBB8888"
    )
    port map (
      ADR5 => Control_inst_Addr(1),
      ADR1 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_18(11),
      ADR2 => Registro_inst_Registro_M_19(11),
      ADR0 => Registro_inst_Registro_M_17_11_0,
      ADR4 => Registro_inst_Registro_M_16_11_0,
      O => Registro_inst_mux2_8_700
    );
  Registro_inst_mux2_7 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"AACCFFF0AACC00F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_22(11),
      ADR0 => Registro_inst_Registro_M_23_11_0,
      ADR5 => Registro_inst_Registro_M_21(11),
      ADR2 => Registro_inst_Registro_M_20(11),
      O => Registro_inst_mux2_7_708
    );
  Registro_inst_mux1_10_Registro_inst_mux1_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux15_6_f7_737,
      O => Registro_inst_mux15_6_f7_0
    );
  Registro_inst_mux15_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y3"
    )
    port map (
      IA => Registro_inst_mux15_8_736,
      IB => Registro_inst_mux15_7_728,
      O => Registro_inst_mux15_6_f7_737,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux15_8 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"F0CCFFAAF0CC00AA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_18(9),
      ADR2 => Registro_inst_Registro_M_19(9),
      ADR5 => Registro_inst_Registro_M_17_9_0,
      ADR0 => Registro_inst_Registro_M_16_9_0,
      O => Registro_inst_mux15_8_736
    );
  Registro_inst_mux15_7 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"FFACF0AC0FAC00AC"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_22(9),
      ADR5 => Registro_inst_Registro_M_23_9_0,
      ADR0 => Registro_inst_Registro_M_21(9),
      ADR1 => Registro_inst_Registro_M_20(9),
      O => Registro_inst_mux15_7_728
    );
  Registro_inst_mux1_10 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"CCCCAAAAFF00F0F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_14(10),
      ADR1 => Registro_inst_Registro_M_15_10_0,
      ADR0 => Registro_inst_Registro_M_13_10_0,
      ADR2 => Registro_inst_Registro_M_12(10),
      O => Registro_inst_mux1_10_3244
    );
  Registro_inst_mux1_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y4"
    )
    port map (
      IA => Registro_inst_mux1_4_766,
      IB => Registro_inst_mux1_3_755,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_10_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux1_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"F3F3C0C0EE22EE22"
    )
    port map (
      ADR5 => Control_inst_Addr(3),
      ADR1 => Control_inst_Addr(2),
      ADR4 => Registro_inst_mux1_91_3243,
      ADR2 => Registro_inst_mux1_10_3244,
      ADR3 => Registro_inst_mux1_9_3245,
      ADR0 => Registro_inst_mux1_81_3748,
      O => Registro_inst_mux1_4_766
    );
  Registro_inst_Reg_out_10 : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_10_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_10_Q,
      O => Registro_inst_Reg_out(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux1_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"AAAAFFFFAAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Control_inst_Addr(3),
      ADR5 => Registro_inst_mux1_6_f7_0,
      ADR0 => Registro_inst_addr_1_11_3747,
      O => Registro_inst_mux1_3_755
    );
  Registro_inst_mux1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"FEAE5E0EF4A45404"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_2(10),
      ADR4 => Registro_inst_Registro_M_3_10_0,
      ADR5 => Registro_inst_Registro_M_1_10_0,
      ADR1 => Registro_inst_Registro_M_0(10),
      O => Registro_inst_mux1_81_3748
    );
  Registro_inst_addr_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"FCFAFC0A0CFA0C0A"
    )
    port map (
      ADR2 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR4 => Registro_inst_Registro_M_25(10),
      ADR5 => Registro_inst_Registro_M_27(10),
      ADR1 => Registro_inst_Registro_M_26_10_0,
      ADR0 => Registro_inst_Registro_M_24(10),
      O => Registro_inst_addr_1_11_3747
    );
  Registro_inst_mux4_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y5"
    )
    port map (
      IA => Registro_inst_mux4_4_797,
      IB => Registro_inst_mux4_3_786,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_13_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux4_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FFF00F00CACACACA"
    )
    port map (
      ADR2 => Control_inst_Addr(3),
      ADR5 => Control_inst_Addr(2),
      ADR1 => Registro_inst_mux4_91_3303,
      ADR4 => Registro_inst_mux4_10_3304,
      ADR3 => Registro_inst_mux4_9_3305,
      ADR0 => Registro_inst_mux4_81_3750,
      O => Registro_inst_mux4_4_797
    );
  Registro_inst_Reg_out_13 : X_FF
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_13_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_13_Q,
      O => Registro_inst_Reg_out(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux4_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux4_6_f7_0,
      ADR0 => Registro_inst_addr_1_14,
      O => Registro_inst_mux4_3_786
    );
  Registro_inst_mux4_81 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"DFD58F85DAD08A80"
    )
    port map (
      ADR0 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_2(13),
      ADR1 => Registro_inst_Registro_M_3_13_0,
      ADR4 => Registro_inst_Registro_M_1_13_0,
      ADR5 => Registro_inst_Registro_M_0(13),
      O => Registro_inst_mux4_81_3750
    );
  Registro_inst_addr_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"CFAFC0AFCFA0C0A0"
    )
    port map (
      ADR3 => Control_inst_Addr(0),
      ADR2 => Control_inst_Addr(1),
      ADR4 => Registro_inst_Registro_M_25(13),
      ADR1 => Registro_inst_Registro_M_27(13),
      ADR0 => Registro_inst_Registro_M_26_13_0,
      ADR5 => Registro_inst_Registro_M_24(13),
      O => Registro_inst_addr_1_14
    );
  Registro_inst_mux3_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y6"
    )
    port map (
      IA => Registro_inst_mux3_4_828,
      IB => Registro_inst_mux3_3_817,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_12_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux3_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"CFCFC0C0FA0AFA0A"
    )
    port map (
      ADR5 => Control_inst_Addr(3),
      ADR2 => Control_inst_Addr(2),
      ADR4 => Registro_inst_mux3_91_3283,
      ADR1 => Registro_inst_mux3_10_3284,
      ADR3 => Registro_inst_mux3_9_3285,
      ADR0 => Registro_inst_mux3_81_3752,
      O => Registro_inst_mux3_4_828
    );
  Registro_inst_Reg_out_12 : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_12_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_12_Q,
      O => Registro_inst_Reg_out(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux3_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"BBBB8888BBBB8888"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Control_inst_Addr(3),
      ADR4 => Registro_inst_mux3_6_f7_0,
      ADR0 => Registro_inst_addr_1_13,
      O => Registro_inst_mux3_3_817
    );
  Registro_inst_mux3_81 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"AFCFAFC0A0CFA0C0"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_2(12),
      ADR0 => Registro_inst_Registro_M_3_12_0,
      ADR5 => Registro_inst_Registro_M_1_12_0,
      ADR4 => Registro_inst_Registro_M_0(12),
      O => Registro_inst_mux3_81_3752
    );
  Registro_inst_addr_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"F0FFCCAAF000CCAA"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR5 => Registro_inst_Registro_M_25(12),
      ADR2 => Registro_inst_Registro_M_27(12),
      ADR1 => Registro_inst_Registro_M_26_12_0,
      ADR0 => Registro_inst_Registro_M_24(12),
      O => Registro_inst_addr_1_13
    );
  Registro_inst_mux6_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y7"
    )
    port map (
      IA => Registro_inst_mux6_4_859,
      IB => Registro_inst_mux6_3_848,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_15_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux6_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"FECEF2C23E0E3202"
    )
    port map (
      ADR2 => Control_inst_Addr(3),
      ADR1 => Control_inst_Addr(2),
      ADR3 => Registro_inst_mux6_91_3343,
      ADR5 => Registro_inst_mux6_10_3344,
      ADR4 => Registro_inst_mux6_9_3345,
      ADR0 => Registro_inst_mux6_81_3754,
      O => Registro_inst_mux6_4_859
    );
  Registro_inst_Reg_out_15 : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_15_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_15_Q,
      O => Registro_inst_Reg_out(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux6_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux6_6_f7_0,
      ADR0 => Registro_inst_addr_1_16,
      O => Registro_inst_mux6_3_848
    );
  Registro_inst_mux6_81 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"CCFFF0AACC00F0AA"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_2(15),
      ADR1 => Registro_inst_Registro_M_3_15_0,
      ADR5 => Registro_inst_Registro_M_1_15_0,
      ADR0 => Registro_inst_Registro_M_0(15),
      O => Registro_inst_mux6_81_3754
    );
  Registro_inst_addr_1_61 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"F0F0AAAACCCCFF00"
    )
    port map (
      ADR5 => Control_inst_Addr(0),
      ADR4 => Control_inst_Addr(1),
      ADR0 => Registro_inst_Registro_M_25(15),
      ADR2 => Registro_inst_Registro_M_27(15),
      ADR1 => Registro_inst_Registro_M_26_15_0,
      ADR3 => Registro_inst_Registro_M_24(15),
      O => Registro_inst_addr_1_16
    );
  Registro_inst_Registro_M_12_15 : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_15_IN,
      O => Registro_inst_Registro_M_12(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux3_91 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"CCAAF0FFCCAAF000"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_10(12),
      ADR1 => Registro_inst_Registro_M_11(12),
      ADR2 => Registro_inst_Registro_M_9(12),
      ADR5 => Registro_inst_Registro_M_8(12),
      O => Registro_inst_mux3_91_3283
    );
  Registro_inst_Registro_M_12_14 : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_14_IN,
      O => Registro_inst_Registro_M_12(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux6_9 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"CFAFC0AFCFA0C0A0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_6_15_0,
      ADR1 => Registro_inst_Registro_M_7(15),
      ADR0 => Registro_inst_Registro_M_5_15_0,
      ADR5 => Registro_inst_Registro_M_4(15),
      O => Registro_inst_mux6_9_3345
    );
  Registro_inst_Registro_M_12_13 : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_13_IN,
      O => Registro_inst_Registro_M_12(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux5_9 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"AACCFFF0AACC00F0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_6_14_0,
      ADR0 => Registro_inst_Registro_M_7(14),
      ADR1 => Registro_inst_Registro_M_5_14_0,
      ADR2 => Registro_inst_Registro_M_4(14),
      O => Registro_inst_mux5_9_3325
    );
  Registro_inst_Registro_M_12_12 : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_12_IN,
      O => Registro_inst_Registro_M_12(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux4_91 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"AAAAF0F0CCCCFF00"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_10(13),
      ADR0 => Registro_inst_Registro_M_11(13),
      ADR2 => Registro_inst_Registro_M_9(13),
      ADR3 => Registro_inst_Registro_M_8(13),
      O => Registro_inst_mux4_91_3303
    );
  Registro_inst_Registro_M_10_15_Registro_inst_Registro_M_10_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(15),
      O => Registro_inst_Registro_M_6_15_0
    );
  Registro_inst_Registro_M_10_15_Registro_inst_Registro_M_10_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(14),
      O => Registro_inst_Registro_M_6_14_0
    );
  Registro_inst_Registro_M_10_15_Registro_inst_Registro_M_10_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(13),
      O => Registro_inst_Registro_M_6_13_0
    );
  Registro_inst_Registro_M_10_15_Registro_inst_Registro_M_10_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(12),
      O => Registro_inst_Registro_M_6_12_0
    );
  Registro_inst_Registro_M_10_15 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_15_IN,
      O => Registro_inst_Registro_M_10(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_5_15_0,
      O => Registro_inst_Registro_M_5_15_rt_920
    );
  Registro_inst_Registro_M_6_15 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_15_CLK,
      I => Registro_inst_Registro_M_5_15_rt_920,
      O => Registro_inst_Registro_M_6(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_14 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_14_IN,
      O => Registro_inst_Registro_M_10(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_5_14_0,
      O => Registro_inst_Registro_M_5_14_rt_913
    );
  Registro_inst_Registro_M_6_14 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_14_CLK,
      I => Registro_inst_Registro_M_5_14_rt_913,
      O => Registro_inst_Registro_M_6(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_13 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_13_IN,
      O => Registro_inst_Registro_M_10(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Registro_inst_Registro_M_5_13_0,
      O => Registro_inst_Registro_M_5_13_rt_909
    );
  Registro_inst_Registro_M_6_13 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_13_CLK,
      I => Registro_inst_Registro_M_5_13_rt_909,
      O => Registro_inst_Registro_M_6(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_12 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_12_IN,
      O => Registro_inst_Registro_M_10(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Registro_inst_Registro_M_5_12_0,
      O => Registro_inst_Registro_M_5_12_rt_904
    );
  Registro_inst_Registro_M_6_12 : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_12_CLK,
      I => Registro_inst_Registro_M_5_12_rt_904,
      O => Registro_inst_Registro_M_6(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_11_Registro_inst_Registro_M_21_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(11),
      O => Registro_inst_Registro_M_23_11_0
    );
  Registro_inst_Registro_M_21_11_Registro_inst_Registro_M_21_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(10),
      O => Registro_inst_Registro_M_23_10_0
    );
  Registro_inst_Registro_M_21_11_Registro_inst_Registro_M_21_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(9),
      O => Registro_inst_Registro_M_23_9_0
    );
  Registro_inst_Registro_M_21_11_Registro_inst_Registro_M_21_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(8),
      O => Registro_inst_Registro_M_23_8_0
    );
  Registro_inst_Registro_M_21_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_11_IN,
      O => Registro_inst_Registro_M_21(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Registro_inst_Registro_M_22(11),
      O => Registro_inst_Registro_M_22_11_rt_943
    );
  Registro_inst_Registro_M_23_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_11_CLK,
      I => Registro_inst_Registro_M_22_11_rt_943,
      O => Registro_inst_Registro_M_23(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_10_IN,
      O => Registro_inst_Registro_M_21(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Registro_inst_Registro_M_22(10),
      O => Registro_inst_Registro_M_22_10_rt_936
    );
  Registro_inst_Registro_M_23_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_10_CLK,
      I => Registro_inst_Registro_M_22_10_rt_936,
      O => Registro_inst_Registro_M_23(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_9 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_9_IN,
      O => Registro_inst_Registro_M_21(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_22(9),
      O => Registro_inst_Registro_M_22_9_rt_932
    );
  Registro_inst_Registro_M_23_9 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_9_CLK,
      I => Registro_inst_Registro_M_22_9_rt_932,
      O => Registro_inst_Registro_M_23(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_8 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_8_IN,
      O => Registro_inst_Registro_M_21(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Registro_inst_Registro_M_22(8),
      O => Registro_inst_Registro_M_22_8_rt_927
    );
  Registro_inst_Registro_M_23_8 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_8_CLK,
      I => Registro_inst_Registro_M_22_8_rt_927,
      O => Registro_inst_Registro_M_23(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_11_Registro_inst_Registro_M_22_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(11),
      O => Registro_inst_Registro_M_17_11_0
    );
  Registro_inst_Registro_M_22_11_Registro_inst_Registro_M_22_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(10),
      O => Registro_inst_Registro_M_17_10_0
    );
  Registro_inst_Registro_M_22_11_Registro_inst_Registro_M_22_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(9),
      O => Registro_inst_Registro_M_17_9_0
    );
  Registro_inst_Registro_M_22_11_Registro_inst_Registro_M_22_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(8),
      O => Registro_inst_Registro_M_17_8_0
    );
  Registro_inst_Registro_M_22_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_11_IN,
      O => Registro_inst_Registro_M_22(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_16_11_0,
      O => Registro_inst_Registro_M_16_11_rt_966
    );
  Registro_inst_Registro_M_17_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_11_CLK,
      I => Registro_inst_Registro_M_16_11_rt_966,
      O => Registro_inst_Registro_M_17(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_10_IN,
      O => Registro_inst_Registro_M_22(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_16_10_0,
      O => Registro_inst_Registro_M_16_10_rt_959
    );
  Registro_inst_Registro_M_17_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_10_CLK,
      I => Registro_inst_Registro_M_16_10_rt_959,
      O => Registro_inst_Registro_M_17(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_9 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_9_IN,
      O => Registro_inst_Registro_M_22(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Registro_inst_Registro_M_16_9_0,
      O => Registro_inst_Registro_M_16_9_rt_955
    );
  Registro_inst_Registro_M_17_9 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_9_CLK,
      I => Registro_inst_Registro_M_16_9_rt_955,
      O => Registro_inst_Registro_M_17(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_8 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_8_IN,
      O => Registro_inst_Registro_M_22(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_16_8_0,
      O => Registro_inst_Registro_M_16_8_rt_950
    );
  Registro_inst_Registro_M_17_8 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_8_CLK,
      I => Registro_inst_Registro_M_16_8_rt_950,
      O => Registro_inst_Registro_M_17(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_11_IN,
      O => Registro_inst_Registro_M_24(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_10_IN,
      O => Registro_inst_Registro_M_24(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_9 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_9_IN,
      O => Registro_inst_Registro_M_24(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_8 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_8_IN,
      O => Registro_inst_Registro_M_24(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_15_Registro_inst_Registro_M_25_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(15),
      O => Registro_inst_Registro_M_26_15_0
    );
  Registro_inst_Registro_M_25_15_Registro_inst_Registro_M_25_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(14),
      O => Registro_inst_Registro_M_26_14_0
    );
  Registro_inst_Registro_M_25_15_Registro_inst_Registro_M_25_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(13),
      O => Registro_inst_Registro_M_26_13_0
    );
  Registro_inst_Registro_M_25_15_Registro_inst_Registro_M_25_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(12),
      O => Registro_inst_Registro_M_26_12_0
    );
  Registro_inst_Registro_M_25_15 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_15_IN,
      O => Registro_inst_Registro_M_25(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_25(15),
      ADR4 => '1',
      O => Registro_inst_Registro_M_25_15_rt_989
    );
  Registro_inst_Registro_M_26_15 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_15_CLK,
      I => Registro_inst_Registro_M_25_15_rt_989,
      O => Registro_inst_Registro_M_26(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_14 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_14_IN,
      O => Registro_inst_Registro_M_25(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(14),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_14_rt_983
    );
  Registro_inst_Registro_M_26_14 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_14_CLK,
      I => Registro_inst_Registro_M_25_14_rt_983,
      O => Registro_inst_Registro_M_26(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_13 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_13_IN,
      O => Registro_inst_Registro_M_25(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(13),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_13_rt_1003
    );
  Registro_inst_Registro_M_26_13 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_13_CLK,
      I => Registro_inst_Registro_M_25_13_rt_1003,
      O => Registro_inst_Registro_M_26(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_12 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_12_IN,
      O => Registro_inst_Registro_M_25(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(12),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_12_rt_998
    );
  Registro_inst_Registro_M_26_12 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_12_CLK,
      I => Registro_inst_Registro_M_25_12_rt_998,
      O => Registro_inst_Registro_M_26(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_15 : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_15_IN,
      O => Registro_inst_Registro_M_27(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_14 : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_14_IN,
      O => Registro_inst_Registro_M_27(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_13 : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_13_IN,
      O => Registro_inst_Registro_M_27(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_12 : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_12_IN,
      O => Registro_inst_Registro_M_27(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_13_15 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_13_15_IN,
      O => Registro_inst_Registro_M_13(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux6_10 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"AFFCA0FCAF0CA00C"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_14(15),
      ADR5 => Registro_inst_Registro_M_13(15),
      ADR0 => Registro_inst_Registro_M_15_15_0,
      ADR1 => Registro_inst_Registro_M_12(15),
      O => Registro_inst_mux6_10_3344
    );
  Registro_inst_Registro_M_13_14 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_13_14_IN,
      O => Registro_inst_Registro_M_13(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux3_10 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"CCFFF0AACC00F0AA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_14(12),
      ADR1 => Registro_inst_Registro_M_15_12_0,
      ADR2 => Registro_inst_Registro_M_13(12),
      ADR0 => Registro_inst_Registro_M_12(12),
      O => Registro_inst_mux3_10_3284
    );
  Registro_inst_Registro_M_13_13 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_13_13_IN,
      O => Registro_inst_Registro_M_13(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_13_12 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_13_12_IN,
      O => Registro_inst_Registro_M_13(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux5_10 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"AAFFF0CCAA00F0CC"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_14(14),
      ADR0 => Registro_inst_Registro_M_15_14_0,
      ADR5 => Registro_inst_Registro_M_13(14),
      ADR1 => Registro_inst_Registro_M_12(14),
      O => Registro_inst_mux5_10_3324
    );
  Registro_inst_Registro_M_11_15 : X_FF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_15_IN,
      O => Registro_inst_Registro_M_11(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_11_14 : X_FF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_14_IN,
      O => Registro_inst_Registro_M_11(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux4_9 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"FFF0CCAA00F0CCAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_6_13_0,
      ADR5 => Registro_inst_Registro_M_7(13),
      ADR1 => Registro_inst_Registro_M_5_13_0,
      ADR0 => Registro_inst_Registro_M_4(13),
      O => Registro_inst_mux4_9_3305
    );
  Registro_inst_Registro_M_11_13 : X_FF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_13_IN,
      O => Registro_inst_Registro_M_11(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux5_91 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"AAAAFF00CCCCF0F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_10(14),
      ADR0 => Registro_inst_Registro_M_11(14),
      ADR3 => Registro_inst_Registro_M_9(14),
      ADR2 => Registro_inst_Registro_M_8(14),
      O => Registro_inst_mux5_91_3323
    );
  Registro_inst_Registro_M_11_12 : X_FF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_12_IN,
      O => Registro_inst_Registro_M_11(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux3_9 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"F0AACCFFF0AACC00"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_6_12_0,
      ADR2 => Registro_inst_Registro_M_7(12),
      ADR0 => Registro_inst_Registro_M_5_12_0,
      ADR5 => Registro_inst_Registro_M_4(12),
      O => Registro_inst_mux3_9_3285
    );
  Registro_inst_mux6_91 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"CCFFF0AACC00F0AA"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_10(15),
      ADR1 => Registro_inst_Registro_M_11(15),
      ADR5 => Registro_inst_Registro_M_9(15),
      ADR0 => Registro_inst_Registro_M_8(15),
      O => Registro_inst_mux6_91_3343
    );
  Registro_inst_mux2_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y2"
    )
    port map (
      IA => Registro_inst_mux2_4_1114,
      IB => Registro_inst_mux2_3_1103,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_11_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux2_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"CFCFFA0AC0C0FA0A"
    )
    port map (
      ADR2 => Control_inst_Addr(3),
      ADR4 => Control_inst_Addr(2),
      ADR3 => Registro_inst_mux2_91_3263,
      ADR1 => Registro_inst_mux2_10_3264,
      ADR5 => Registro_inst_mux2_9_3265,
      ADR0 => Registro_inst_mux2_81_3756,
      O => Registro_inst_mux2_4_1114
    );
  Registro_inst_Reg_out_11 : X_FF
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_11_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_11_Q,
      O => Registro_inst_Reg_out(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux2_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux2_6_f7_0,
      ADR0 => Registro_inst_addr_1_12,
      O => Registro_inst_mux2_3_1103
    );
  Registro_inst_mux2_81 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"B8FFB833B8CCB800"
    )
    port map (
      ADR1 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_2(11),
      ADR0 => Registro_inst_Registro_M_3_11_0,
      ADR2 => Registro_inst_Registro_M_1_11_0,
      ADR5 => Registro_inst_Registro_M_0(11),
      O => Registro_inst_mux2_81_3756
    );
  Registro_inst_addr_1_21 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"FFCCB8B83300B8B8"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR1 => Control_inst_Addr(1),
      ADR3 => Registro_inst_Registro_M_25(11),
      ADR5 => Registro_inst_Registro_M_27(11),
      ADR0 => Registro_inst_Registro_M_26_11_0,
      ADR2 => Registro_inst_Registro_M_24(11),
      O => Registro_inst_addr_1_12
    );
  Registro_inst_Registro_M_11_11_Registro_inst_Registro_M_11_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(11),
      O => Registro_inst_Registro_M_13_11_0
    );
  Registro_inst_Registro_M_11_11_Registro_inst_Registro_M_11_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(10),
      O => Registro_inst_Registro_M_13_10_0
    );
  Registro_inst_Registro_M_11_11_Registro_inst_Registro_M_11_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(9),
      O => Registro_inst_Registro_M_13_9_0
    );
  Registro_inst_Registro_M_11_11_Registro_inst_Registro_M_11_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(8),
      O => Registro_inst_Registro_M_13_8_0
    );
  Registro_inst_Registro_M_11_11 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_11_IN,
      O => Registro_inst_Registro_M_11(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_12(11),
      O => Registro_inst_Registro_M_12_11_rt_1136
    );
  Registro_inst_Registro_M_13_11 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_11_CLK,
      I => Registro_inst_Registro_M_12_11_rt_1136,
      O => Registro_inst_Registro_M_13(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_11_10 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_10_IN,
      O => Registro_inst_Registro_M_11(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Registro_inst_Registro_M_12(10),
      O => Registro_inst_Registro_M_12_10_rt_1129
    );
  Registro_inst_Registro_M_13_10 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_10_CLK,
      I => Registro_inst_Registro_M_12_10_rt_1129,
      O => Registro_inst_Registro_M_13(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_11_9 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_9_IN,
      O => Registro_inst_Registro_M_11(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_12(9),
      O => Registro_inst_Registro_M_12_9_rt_1125
    );
  Registro_inst_Registro_M_13_9 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_9_CLK,
      I => Registro_inst_Registro_M_12_9_rt_1125,
      O => Registro_inst_Registro_M_13(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_11_8 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_11_8_IN,
      O => Registro_inst_Registro_M_11(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_12(8),
      O => Registro_inst_Registro_M_12_8_rt_1120
    );
  Registro_inst_Registro_M_13_8 : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_8_CLK,
      I => Registro_inst_Registro_M_12_8_rt_1120,
      O => Registro_inst_Registro_M_13(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_11 : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_11_IN,
      O => Registro_inst_Registro_M_10(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux15_10 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"FF00CCCCF0F0AAAA"
    )
    port map (
      ADR5 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_14(9),
      ADR3 => Registro_inst_Registro_M_15_9_0,
      ADR2 => Registro_inst_Registro_M_13_9_0,
      ADR0 => Registro_inst_Registro_M_12(9),
      O => Registro_inst_mux15_10_3524
    );
  Registro_inst_Registro_M_10_10 : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_10_IN,
      O => Registro_inst_Registro_M_10(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_9 : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_9_IN,
      O => Registro_inst_Registro_M_10(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux14_91 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"FFCAF0CA0FCA00CA"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_10(8),
      ADR5 => Registro_inst_Registro_M_11(8),
      ADR4 => Registro_inst_Registro_M_9_8_0,
      ADR0 => Registro_inst_Registro_M_8(8),
      O => Registro_inst_mux14_91_3503
    );
  Registro_inst_Registro_M_10_8 : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_8_IN,
      O => Registro_inst_Registro_M_10(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux14_10 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"AACCF0FFAACCF000"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_14(8),
      ADR0 => Registro_inst_Registro_M_15_8_0,
      ADR1 => Registro_inst_Registro_M_13_8_0,
      ADR5 => Registro_inst_Registro_M_12(8),
      O => Registro_inst_mux14_10_3504
    );
  Registro_inst_mux5_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y6"
    )
    port map (
      IA => Registro_inst_mux5_4_1200,
      IB => Registro_inst_mux5_3_1189,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_14_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux5_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"BB88BB88FCFC3030"
    )
    port map (
      ADR5 => Control_inst_Addr(3),
      ADR1 => Control_inst_Addr(2),
      ADR3 => Registro_inst_mux5_91_3323,
      ADR0 => Registro_inst_mux5_10_3324,
      ADR4 => Registro_inst_mux5_9_3325,
      ADR2 => Registro_inst_mux5_81_3758,
      O => Registro_inst_mux5_4_1200
    );
  Registro_inst_Reg_out_14 : X_FF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_14_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_14_Q,
      O => Registro_inst_Reg_out(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux5_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux5_6_f7_0,
      ADR0 => Registro_inst_addr_1_15,
      O => Registro_inst_mux5_3_1189
    );
  Registro_inst_mux5_81 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"AFFCAF0CA0FCA00C"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_2(14),
      ADR0 => Registro_inst_Registro_M_3_14_0,
      ADR5 => Registro_inst_Registro_M_1_14_0,
      ADR1 => Registro_inst_Registro_M_0(14),
      O => Registro_inst_mux5_81_3758
    );
  Registro_inst_addr_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"CCFFF0AACC00F0AA"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR5 => Registro_inst_Registro_M_25(14),
      ADR1 => Registro_inst_Registro_M_27(14),
      ADR2 => Registro_inst_Registro_M_26_14_0,
      ADR0 => Registro_inst_Registro_M_24(14),
      O => Registro_inst_addr_1_15
    );
  Registro_inst_mux4_6_f7_Registro_inst_mux4_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux4_6_f7_1205,
      O => Registro_inst_mux4_6_f7_0
    );
  Registro_inst_mux4_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y7"
    )
    port map (
      IA => Registro_inst_mux4_8_1204,
      IB => Registro_inst_mux4_7_1212,
      O => Registro_inst_mux4_6_f7_1205,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux4_8 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"F0AAFFCCF0AA00CC"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_18(13),
      ADR2 => Registro_inst_Registro_M_19_13_0,
      ADR5 => Registro_inst_Registro_M_17_13_0,
      ADR1 => Registro_inst_Registro_M_16(13),
      O => Registro_inst_mux4_8_1204
    );
  Registro_inst_mux4_7 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"CFFACF0AC0FAC00A"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_22_13_0,
      ADR1 => Registro_inst_Registro_M_23(13),
      ADR4 => Registro_inst_Registro_M_21(13),
      ADR0 => Registro_inst_Registro_M_20(13),
      O => Registro_inst_mux4_7_1212
    );
  Registro_inst_Registro_M_21_15_Registro_inst_Registro_M_21_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(15),
      O => Registro_inst_Registro_M_22_15_0
    );
  Registro_inst_Registro_M_21_15_Registro_inst_Registro_M_21_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(14),
      O => Registro_inst_Registro_M_22_14_0
    );
  Registro_inst_Registro_M_21_15_Registro_inst_Registro_M_21_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(13),
      O => Registro_inst_Registro_M_22_13_0
    );
  Registro_inst_Registro_M_21_15_Registro_inst_Registro_M_21_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(12),
      O => Registro_inst_Registro_M_22_12_0
    );
  Registro_inst_Registro_M_21_15 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_15_IN,
      O => Registro_inst_Registro_M_21(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_21(15),
      ADR3 => '1',
      O => Registro_inst_Registro_M_21_15_rt_1227
    );
  Registro_inst_Registro_M_22_15 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_15_CLK,
      I => Registro_inst_Registro_M_21_15_rt_1227,
      O => Registro_inst_Registro_M_22(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_14 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_14_IN,
      O => Registro_inst_Registro_M_21(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_21(14),
      ADR3 => '1',
      O => Registro_inst_Registro_M_21_14_rt_1221
    );
  Registro_inst_Registro_M_22_14 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_14_CLK,
      I => Registro_inst_Registro_M_21_14_rt_1221,
      O => Registro_inst_Registro_M_22(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_13 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_13_IN,
      O => Registro_inst_Registro_M_21(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_21(13),
      ADR3 => '1',
      O => Registro_inst_Registro_M_21_13_rt_1241
    );
  Registro_inst_Registro_M_22_13 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_13_CLK,
      I => Registro_inst_Registro_M_21_13_rt_1241,
      O => Registro_inst_Registro_M_22(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_12 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_12_IN,
      O => Registro_inst_Registro_M_21(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_21(12),
      ADR3 => '1',
      O => Registro_inst_Registro_M_21_12_rt_1236
    );
  Registro_inst_Registro_M_22_12 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_12_CLK,
      I => Registro_inst_Registro_M_21_12_rt_1236,
      O => Registro_inst_Registro_M_22(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux5_6_f7_Registro_inst_mux5_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux5_6_f7_1244,
      O => Registro_inst_mux5_6_f7_0
    );
  Registro_inst_mux5_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y9"
    )
    port map (
      IA => Registro_inst_mux5_8_1243,
      IB => Registro_inst_mux5_7_1251,
      O => Registro_inst_mux5_6_f7_1244,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux5_8 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"F0CCFFAAF0CC00AA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_18(14),
      ADR2 => Registro_inst_Registro_M_19_14_0,
      ADR5 => Registro_inst_Registro_M_17_14_0,
      ADR0 => Registro_inst_Registro_M_16(14),
      O => Registro_inst_mux5_8_1243
    );
  Registro_inst_mux5_7 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FACF0ACFFAC00AC0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_22_14_0,
      ADR4 => Registro_inst_Registro_M_23(14),
      ADR1 => Registro_inst_Registro_M_21(14),
      ADR5 => Registro_inst_Registro_M_20(14),
      O => Registro_inst_mux5_7_1251
    );
  Registro_inst_mux2_10 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"FFCC00CCAAF0AAF0"
    )
    port map (
      ADR5 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_14(11),
      ADR4 => Registro_inst_Registro_M_15_11_0,
      ADR0 => Registro_inst_Registro_M_13_11_0,
      ADR2 => Registro_inst_Registro_M_12(11),
      O => Registro_inst_mux2_10_3264
    );
  Registro_inst_Registro_M_14_11_Registro_inst_Registro_M_14_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(11),
      O => Registro_inst_Registro_M_16_11_0
    );
  Registro_inst_Registro_M_14_11_Registro_inst_Registro_M_14_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(10),
      O => Registro_inst_Registro_M_16_10_0
    );
  Registro_inst_Registro_M_14_11_Registro_inst_Registro_M_14_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(9),
      O => Registro_inst_Registro_M_16_9_0
    );
  Registro_inst_Registro_M_14_11_Registro_inst_Registro_M_14_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(8),
      O => Registro_inst_Registro_M_16_8_0
    );
  Registro_inst_Registro_M_14_11 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_11_IN,
      O => Registro_inst_Registro_M_14(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_15_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_15_11_0,
      O => Registro_inst_Registro_M_15_11_rt_1284
    );
  Registro_inst_Registro_M_16_11 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_11_CLK,
      I => Registro_inst_Registro_M_15_11_rt_1284,
      O => Registro_inst_Registro_M_16(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_10 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_10_IN,
      O => Registro_inst_Registro_M_14(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_15_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_15_10_0,
      O => Registro_inst_Registro_M_15_10_rt_1277
    );
  Registro_inst_Registro_M_16_10 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_10_CLK,
      I => Registro_inst_Registro_M_15_10_rt_1277,
      O => Registro_inst_Registro_M_16(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_9 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_9_IN,
      O => Registro_inst_Registro_M_14(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_15_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_15_9_0,
      O => Registro_inst_Registro_M_15_9_rt_1273
    );
  Registro_inst_Registro_M_16_9 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_9_CLK,
      I => Registro_inst_Registro_M_15_9_rt_1273,
      O => Registro_inst_Registro_M_16(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_8 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_8_IN,
      O => Registro_inst_Registro_M_14(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_15_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_15_8_0,
      O => Registro_inst_Registro_M_15_8_rt_1268
    );
  Registro_inst_Registro_M_16_8 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_8_CLK,
      I => Registro_inst_Registro_M_15_8_rt_1268,
      O => Registro_inst_Registro_M_16(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_11 : X_FF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_11_IN,
      O => Registro_inst_Registro_M_12(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_10 : X_FF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_10_IN,
      O => Registro_inst_Registro_M_12(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_9 : X_FF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_9_IN,
      O => Registro_inst_Registro_M_12(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux15_91 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"AACCF0FFAACCF000"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_10(9),
      ADR0 => Registro_inst_Registro_M_11(9),
      ADR1 => Registro_inst_Registro_M_9_9_0,
      ADR5 => Registro_inst_Registro_M_8(9),
      O => Registro_inst_mux15_91_3523
    );
  Registro_inst_Registro_M_12_8 : X_FF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_8_IN,
      O => Registro_inst_Registro_M_12(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux2_91 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"BBF388F3BBC088C0"
    )
    port map (
      ADR1 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_10(11),
      ADR0 => Registro_inst_Registro_M_11(11),
      ADR4 => Registro_inst_Registro_M_9_11_0,
      ADR5 => Registro_inst_Registro_M_8(11),
      O => Registro_inst_mux2_91_3263
    );
  Registro_inst_Registro_M_0_15_Registro_inst_Registro_M_0_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(15),
      O => Registro_inst_Registro_M_1_15_0
    );
  Registro_inst_Registro_M_0_15_Registro_inst_Registro_M_0_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(14),
      O => Registro_inst_Registro_M_1_14_0
    );
  Registro_inst_Registro_M_0_15_Registro_inst_Registro_M_0_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(13),
      O => Registro_inst_Registro_M_1_13_0
    );
  Registro_inst_Registro_M_0_15_Registro_inst_Registro_M_0_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(12),
      O => Registro_inst_Registro_M_1_12_0
    );
  Registro_inst_Registro_M_0_15 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_15_IN,
      O => Registro_inst_Registro_M_0(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(15),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_15_rt_1321
    );
  Registro_inst_Registro_M_1_15 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_15_CLK,
      I => Registro_inst_Registro_M_0_15_rt_1321,
      O => Registro_inst_Registro_M_1(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_14 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_14_IN,
      O => Registro_inst_Registro_M_0(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(14),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_14_rt_1315
    );
  Registro_inst_Registro_M_1_14 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_14_CLK,
      I => Registro_inst_Registro_M_0_14_rt_1315,
      O => Registro_inst_Registro_M_1(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_13 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_13_IN,
      O => Registro_inst_Registro_M_0(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(13),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_13_rt_1335
    );
  Registro_inst_Registro_M_1_13 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_13_CLK,
      I => Registro_inst_Registro_M_0_13_rt_1335,
      O => Registro_inst_Registro_M_1(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_12 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_12_IN,
      O => Registro_inst_Registro_M_0(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(12),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_12_rt_1330
    );
  Registro_inst_Registro_M_1_12 : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_12_CLK,
      I => Registro_inst_Registro_M_0_12_rt_1330,
      O => Registro_inst_Registro_M_1(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_15 : X_FF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_15_IN,
      O => Registro_inst_Registro_M_24(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_14 : X_FF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_14_IN,
      O => Registro_inst_Registro_M_24(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_13 : X_FF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_13_IN,
      O => Registro_inst_Registro_M_24(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_12 : X_FF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_12_IN,
      O => Registro_inst_Registro_M_24(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_15 : X_FF
    generic map(
      LOC => "SLICE_X5Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_15_IN,
      O => Registro_inst_Registro_M_16(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_14 : X_FF
    generic map(
      LOC => "SLICE_X5Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_14_IN,
      O => Registro_inst_Registro_M_16(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_13 : X_FF
    generic map(
      LOC => "SLICE_X5Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_13_IN,
      O => Registro_inst_Registro_M_16(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_12 : X_FF
    generic map(
      LOC => "SLICE_X5Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_12_IN,
      O => Registro_inst_Registro_M_16(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_23_15 : X_FF
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_23_15_IN,
      O => Registro_inst_Registro_M_23(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_23_14 : X_FF
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_23_14_IN,
      O => Registro_inst_Registro_M_23(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_23_13 : X_FF
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_23_13_IN,
      O => Registro_inst_Registro_M_23(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_23_12 : X_FF
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_23_12_IN,
      O => Registro_inst_Registro_M_23(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_11_Registro_inst_Registro_M_2_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(11),
      O => Registro_inst_Registro_M_3_11_0
    );
  Registro_inst_Registro_M_2_11_Registro_inst_Registro_M_2_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(10),
      O => Registro_inst_Registro_M_3_10_0
    );
  Registro_inst_Registro_M_2_11_Registro_inst_Registro_M_2_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(9),
      O => Registro_inst_Registro_M_3_9_0
    );
  Registro_inst_Registro_M_2_11_Registro_inst_Registro_M_2_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(8),
      O => Registro_inst_Registro_M_3_8_0
    );
  Registro_inst_Registro_M_2_11 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_11_IN,
      O => Registro_inst_Registro_M_2(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(11),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_11_rt_1377
    );
  Registro_inst_Registro_M_3_11 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_11_CLK,
      I => Registro_inst_Registro_M_2_11_rt_1377,
      O => Registro_inst_Registro_M_3(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_10 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_10_IN,
      O => Registro_inst_Registro_M_2(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(10),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_10_rt_1371
    );
  Registro_inst_Registro_M_3_10 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_10_CLK,
      I => Registro_inst_Registro_M_2_10_rt_1371,
      O => Registro_inst_Registro_M_3(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_9 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_9_IN,
      O => Registro_inst_Registro_M_2(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(9),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_9_rt_1391
    );
  Registro_inst_Registro_M_3_9 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_9_CLK,
      I => Registro_inst_Registro_M_2_9_rt_1391,
      O => Registro_inst_Registro_M_3(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_8 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_8_IN,
      O => Registro_inst_Registro_M_2(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(8),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_8_rt_1386
    );
  Registro_inst_Registro_M_3_8 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_8_CLK,
      I => Registro_inst_Registro_M_2_8_rt_1386,
      O => Registro_inst_Registro_M_3(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_11 : X_FF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_11_IN,
      O => Registro_inst_Registro_M_6(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_10 : X_FF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_10_IN,
      O => Registro_inst_Registro_M_6(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux2_9 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"F0CCAAFFF0CCAA00"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_6(11),
      ADR2 => Registro_inst_Registro_M_7(11),
      ADR0 => Registro_inst_Registro_M_5_11_0,
      ADR5 => Registro_inst_Registro_M_4(11),
      O => Registro_inst_mux2_9_3265
    );
  Registro_inst_Registro_M_6_9 : X_FF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_9_IN,
      O => Registro_inst_Registro_M_6(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_8 : X_FF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_8_IN,
      O => Registro_inst_Registro_M_6(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux14_9 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"AACCFFF0AACC00F0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_7(8),
      ADR5 => Registro_inst_Registro_M_6(8),
      ADR1 => Registro_inst_Registro_M_5_8_0,
      ADR2 => Registro_inst_Registro_M_4(8),
      O => Registro_inst_mux14_9_3505
    );
  Registro_inst_Registro_M_8_11 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_11_IN,
      O => Registro_inst_Registro_M_8(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux15_9 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"FFCCAAF000CCAAF0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_6(9),
      ADR5 => Registro_inst_Registro_M_7(9),
      ADR0 => Registro_inst_Registro_M_5_9_0,
      ADR2 => Registro_inst_Registro_M_4(9),
      O => Registro_inst_mux15_9_3525
    );
  Registro_inst_Registro_M_8_10 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_10_IN,
      O => Registro_inst_Registro_M_8(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_9 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_9_IN,
      O => Registro_inst_Registro_M_8(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux1_9 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"FF0FACACF000ACAC"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_6(10),
      ADR3 => Registro_inst_Registro_M_7(10),
      ADR5 => Registro_inst_Registro_M_5_10_0,
      ADR1 => Registro_inst_Registro_M_4(10),
      O => Registro_inst_mux1_9_3245
    );
  Registro_inst_Registro_M_8_8 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_8_IN,
      O => Registro_inst_Registro_M_8(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"B8B8FFCCB8B83300"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR1 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_10(10),
      ADR0 => Registro_inst_Registro_M_11(10),
      ADR5 => Registro_inst_Registro_M_9_10_0,
      ADR3 => Registro_inst_Registro_M_8(10),
      O => Registro_inst_mux1_91_3243
    );
  Registro_inst_mux3_6_f7_Registro_inst_mux3_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux3_6_f7_1451,
      O => Registro_inst_mux3_6_f7_0
    );
  Registro_inst_mux3_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y6"
    )
    port map (
      IA => Registro_inst_mux3_8_1450,
      IB => Registro_inst_mux3_7_1458,
      O => Registro_inst_mux3_6_f7_1451,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux3_8 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"CCAAFFF0CCAA00F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_18(12),
      ADR1 => Registro_inst_Registro_M_19_12_0,
      ADR5 => Registro_inst_Registro_M_17_12_0,
      ADR2 => Registro_inst_Registro_M_16(12),
      O => Registro_inst_mux3_8_1450
    );
  Registro_inst_mux3_7 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"CFAFCFA0C0AFC0A0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_22_12_0,
      ADR1 => Registro_inst_Registro_M_23(12),
      ADR0 => Registro_inst_Registro_M_21(12),
      ADR4 => Registro_inst_Registro_M_20(12),
      O => Registro_inst_mux3_7_1458
    );
  Registro_inst_Registro_M_18_15_Registro_inst_Registro_M_18_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(15),
      O => Registro_inst_Registro_M_19_15_0
    );
  Registro_inst_Registro_M_18_15_Registro_inst_Registro_M_18_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(14),
      O => Registro_inst_Registro_M_19_14_0
    );
  Registro_inst_Registro_M_18_15_Registro_inst_Registro_M_18_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(13),
      O => Registro_inst_Registro_M_19_13_0
    );
  Registro_inst_Registro_M_18_15_Registro_inst_Registro_M_18_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(12),
      O => Registro_inst_Registro_M_19_12_0
    );
  Registro_inst_Registro_M_18_15 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_15_IN,
      O => Registro_inst_Registro_M_18(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(15),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_15_rt_1473
    );
  Registro_inst_Registro_M_19_15 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_15_CLK,
      I => Registro_inst_Registro_M_18_15_rt_1473,
      O => Registro_inst_Registro_M_19(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_14 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_14_IN,
      O => Registro_inst_Registro_M_18(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(14),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_14_rt_1467
    );
  Registro_inst_Registro_M_19_14 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_14_CLK,
      I => Registro_inst_Registro_M_18_14_rt_1467,
      O => Registro_inst_Registro_M_19(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_13 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_13_IN,
      O => Registro_inst_Registro_M_18(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(13),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_13_rt_1487
    );
  Registro_inst_Registro_M_19_13 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_13_CLK,
      I => Registro_inst_Registro_M_18_13_rt_1487,
      O => Registro_inst_Registro_M_19(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_12 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_12_IN,
      O => Registro_inst_Registro_M_18(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(12),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_12_rt_1482
    );
  Registro_inst_Registro_M_19_12 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_12_CLK,
      I => Registro_inst_Registro_M_18_12_rt_1482,
      O => Registro_inst_Registro_M_19(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux6_6_f7_Registro_inst_mux6_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux6_6_f7_1490,
      O => Registro_inst_mux6_6_f7_0
    );
  Registro_inst_mux6_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y8"
    )
    port map (
      IA => Registro_inst_mux6_8_1489,
      IB => Registro_inst_mux6_7_1497,
      O => Registro_inst_mux6_6_f7_1490,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux6_8 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"F0FFAACCF000AACC"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_18(15),
      ADR2 => Registro_inst_Registro_M_19_15_0,
      ADR0 => Registro_inst_Registro_M_17_15_0,
      ADR1 => Registro_inst_Registro_M_16(15),
      O => Registro_inst_mux6_8_1489
    );
  Registro_inst_mux6_7 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"BBFC88FCBB308830"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR1 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_22_15_0,
      ADR0 => Registro_inst_Registro_M_23(15),
      ADR5 => Registro_inst_Registro_M_21(15),
      ADR2 => Registro_inst_Registro_M_20(15),
      O => Registro_inst_mux6_7_1497
    );
  Registro_inst_Registro_M_4_11_Registro_inst_Registro_M_4_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(11),
      O => Registro_inst_Registro_M_5_11_0
    );
  Registro_inst_Registro_M_4_11_Registro_inst_Registro_M_4_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(10),
      O => Registro_inst_Registro_M_5_10_0
    );
  Registro_inst_Registro_M_4_11_Registro_inst_Registro_M_4_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(9),
      O => Registro_inst_Registro_M_5_9_0
    );
  Registro_inst_Registro_M_4_11_Registro_inst_Registro_M_4_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(8),
      O => Registro_inst_Registro_M_5_8_0
    );
  Registro_inst_Registro_M_4_11 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_11_IN,
      O => Registro_inst_Registro_M_4(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(11),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_11_rt_1512
    );
  Registro_inst_Registro_M_5_11 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_11_CLK,
      I => Registro_inst_Registro_M_4_11_rt_1512,
      O => Registro_inst_Registro_M_5(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_10 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_10_IN,
      O => Registro_inst_Registro_M_4(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(10),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_10_rt_1506
    );
  Registro_inst_Registro_M_5_10 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_10_CLK,
      I => Registro_inst_Registro_M_4_10_rt_1506,
      O => Registro_inst_Registro_M_5(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_9_IN,
      O => Registro_inst_Registro_M_4(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(9),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_9_rt_1526
    );
  Registro_inst_Registro_M_5_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_9_CLK,
      I => Registro_inst_Registro_M_4_9_rt_1526,
      O => Registro_inst_Registro_M_5(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_8_IN,
      O => Registro_inst_Registro_M_4(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(8),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_8_rt_1521
    );
  Registro_inst_Registro_M_5_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_8_CLK,
      I => Registro_inst_Registro_M_4_8_rt_1521,
      O => Registro_inst_Registro_M_5(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_7_11_Registro_inst_Registro_M_7_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(11),
      O => Registro_inst_Registro_M_9_11_0
    );
  Registro_inst_Registro_M_7_11_Registro_inst_Registro_M_7_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(10),
      O => Registro_inst_Registro_M_9_10_0
    );
  Registro_inst_Registro_M_7_11_Registro_inst_Registro_M_7_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(9),
      O => Registro_inst_Registro_M_9_9_0
    );
  Registro_inst_Registro_M_7_11_Registro_inst_Registro_M_7_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(8),
      O => Registro_inst_Registro_M_9_8_0
    );
  Registro_inst_Registro_M_7_11 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_11_IN,
      O => Registro_inst_Registro_M_7(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Registro_inst_Registro_M_8(11),
      O => Registro_inst_Registro_M_8_11_rt_1546
    );
  Registro_inst_Registro_M_9_11 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_11_CLK,
      I => Registro_inst_Registro_M_8_11_rt_1546,
      O => Registro_inst_Registro_M_9(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_7_10 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_10_IN,
      O => Registro_inst_Registro_M_7(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_8(10),
      O => Registro_inst_Registro_M_8_10_rt_1539
    );
  Registro_inst_Registro_M_9_10 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_10_CLK,
      I => Registro_inst_Registro_M_8_10_rt_1539,
      O => Registro_inst_Registro_M_9(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_7_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_9_IN,
      O => Registro_inst_Registro_M_7(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_8(9),
      O => Registro_inst_Registro_M_8_9_rt_1535
    );
  Registro_inst_Registro_M_9_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_9_CLK,
      I => Registro_inst_Registro_M_8_9_rt_1535,
      O => Registro_inst_Registro_M_9(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_7_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_8_IN,
      O => Registro_inst_Registro_M_7(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_8(8),
      O => Registro_inst_Registro_M_8_8_rt_1530
    );
  Registro_inst_Registro_M_9_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_8_CLK,
      I => Registro_inst_Registro_M_8_8_rt_1530,
      O => Registro_inst_Registro_M_9(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_15_Registro_inst_Registro_M_20_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(15),
      O => Registro_inst_Registro_M_17_15_0
    );
  Registro_inst_Registro_M_20_15_Registro_inst_Registro_M_20_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(14),
      O => Registro_inst_Registro_M_17_14_0
    );
  Registro_inst_Registro_M_20_15_Registro_inst_Registro_M_20_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(13),
      O => Registro_inst_Registro_M_17_13_0
    );
  Registro_inst_Registro_M_20_15_Registro_inst_Registro_M_20_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(12),
      O => Registro_inst_Registro_M_17_12_0
    );
  Registro_inst_Registro_M_20_15 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_15_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_15_IN,
      O => Registro_inst_Registro_M_20(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_16(15),
      O => Registro_inst_Registro_M_16_15_rt_1569
    );
  Registro_inst_Registro_M_17_15 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_15_CLK,
      I => Registro_inst_Registro_M_16_15_rt_1569,
      O => Registro_inst_Registro_M_17(15),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_14 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_14_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_14_IN,
      O => Registro_inst_Registro_M_20(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Registro_inst_Registro_M_16(14),
      O => Registro_inst_Registro_M_16_14_rt_1562
    );
  Registro_inst_Registro_M_17_14 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_14_CLK,
      I => Registro_inst_Registro_M_16_14_rt_1562,
      O => Registro_inst_Registro_M_17(14),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_13 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_13_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_13_IN,
      O => Registro_inst_Registro_M_20(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_16(13),
      O => Registro_inst_Registro_M_16_13_rt_1558
    );
  Registro_inst_Registro_M_17_13 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_13_CLK,
      I => Registro_inst_Registro_M_16_13_rt_1558,
      O => Registro_inst_Registro_M_17(13),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_12 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_12_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_12_IN,
      O => Registro_inst_Registro_M_20(12),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_16(12),
      O => Registro_inst_Registro_M_16_12_rt_1553
    );
  Registro_inst_Registro_M_17_12 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_12_CLK,
      I => Registro_inst_Registro_M_16_12_rt_1553,
      O => Registro_inst_Registro_M_17(12),
      RST => rst_valido,
      SET => GND
    );
  Acumulador_inst_Clear_Acumulador_inst_Clear_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_CE_Mult_pack_4,
      O => Control_inst_CE_Mult_3154
    );
  Acumulador_inst_Clear1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => datain_valid_IBUF_0,
      ADR0 => rst_valido,
      ADR5 => '1',
      O => Acumulador_inst_Clear
    );
  Control_inst_CE_Mult_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"0F0FCCCC"
    )
    port map (
      ADR4 => Control_inst_n0179_inv,
      ADR2 => Control_inst_estado_FSM_FFd1_3081,
      ADR1 => Control_inst_CE_Mult_3154,
      ADR3 => '1',
      ADR0 => '1',
      O => Control_inst_CE_Mult_rstpot_1575
    );
  Control_inst_CE_Mult : X_FF
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_CE_Mult_CLK,
      I => Control_inst_CE_Mult_rstpot_1575,
      O => Control_inst_CE_Mult_pack_4,
      RST => rst_valido,
      SET => GND
    );
  Control_inst_n0179_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"00000C0000000C02"
    )
    port map (
      ADR4 => Control_inst_retardo(1),
      ADR2 => Control_inst_retardo(2),
      ADR1 => Control_inst_estado_FSM_FFd1_3081,
      ADR3 => Control_inst_retardo(0),
      ADR5 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      ADR0 => Control_inst_estado_FSM_FFd2_3082,
      O => Control_inst_n0179_inv
    );
  Control_inst_estado_FSM_FFd1_Control_inst_estado_FSM_FFd1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_CE_ROM_pack_15,
      O => Control_inst_CE_ROM_3099
    );
  Control_inst_estado_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_estado_FSM_FFd1_CLK,
      I => Control_inst_estado_FSM_FFd1_In,
      O => Control_inst_estado_FSM_FFd1_3081,
      RST => rst_valido,
      SET => GND
    );
  Control_inst_estado_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"FEFCFFFFAA00AA00"
    )
    port map (
      ADR1 => Control_inst_retardo(0),
      ADR2 => Control_inst_retardo(1),
      ADR4 => Control_inst_retardo(2),
      ADR5 => Control_inst_estado_FSM_FFd1_3081,
      ADR0 => Control_inst_estado_FSM_FFd2_3082,
      ADR3 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      O => Control_inst_estado_FSM_FFd1_In
    );
  Control_inst_CE_Acum : X_FF
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_CE_Acum_CLK,
      I => Control_inst_CE_Acum_rstpot_1612,
      O => Control_inst_CE_Acum_3213,
      RST => rst_valido,
      SET => GND
    );
  Control_inst_CE_Acum_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"55FF550055FF5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => Control_inst_n0208_inv,
      ADR4 => Control_inst_CE_Acum_3213,
      ADR0 => Control_inst_estado_FSM_FFd1_3081,
      ADR5 => '1',
      O => Control_inst_CE_Acum_rstpot_1612
    );
  Control_inst_CE_ROM_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"5C5C5C5C"
    )
    port map (
      ADR2 => Control_inst_n0145_inv,
      ADR1 => Control_inst_CE_ROM_3099,
      ADR4 => '1',
      ADR3 => '1',
      ADR0 => Control_inst_estado_FSM_FFd1_3081,
      O => Control_inst_CE_ROM_rstpot_1611
    );
  Control_inst_CE_ROM : X_FF
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_CE_ROM_CLK,
      I => Control_inst_CE_ROM_rstpot_1611,
      O => Control_inst_CE_ROM_pack_15,
      RST => rst_valido,
      SET => GND
    );
  Control_inst_n0208_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"0000010020202020"
    )
    port map (
      ADR1 => Control_inst_retardo(2),
      ADR2 => Control_inst_estado_FSM_FFd1_3081,
      ADR5 => Control_inst_retardo(0),
      ADR0 => Control_inst_retardo(1),
      ADR4 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      ADR3 => Control_inst_estado_FSM_FFd2_3082,
      O => Control_inst_n0208_inv
    );
  Control_inst_n0145_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"0505052700000022"
    )
    port map (
      ADR0 => Control_inst_estado_FSM_FFd1_3081,
      ADR2 => Control_inst_estado_FSM_FFd2_3082,
      ADR5 => datain_valid_IBUF_0,
      ADR3 => Control_inst_retardo(1),
      ADR4 => Control_inst_retardo(0),
      ADR1 => Control_inst_retardo(2),
      O => Control_inst_n0145_inv
    );
  Registro_inst_Registro_M_0_11_Registro_inst_Registro_M_0_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(11),
      O => Registro_inst_Registro_M_1_11_0
    );
  Registro_inst_Registro_M_0_11_Registro_inst_Registro_M_0_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(10),
      O => Registro_inst_Registro_M_1_10_0
    );
  Registro_inst_Registro_M_0_11_Registro_inst_Registro_M_0_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(9),
      O => Registro_inst_Registro_M_1_9_0
    );
  Registro_inst_Registro_M_0_11_Registro_inst_Registro_M_0_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(8),
      O => Registro_inst_Registro_M_1_8_0
    );
  Registro_inst_Registro_M_0_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_11_IN,
      O => Registro_inst_Registro_M_0(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(11),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_11_rt_1633
    );
  Registro_inst_Registro_M_1_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_11_CLK,
      I => Registro_inst_Registro_M_0_11_rt_1633,
      O => Registro_inst_Registro_M_1(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_10_IN,
      O => Registro_inst_Registro_M_0(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(10),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_10_rt_1627
    );
  Registro_inst_Registro_M_1_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_10_CLK,
      I => Registro_inst_Registro_M_0_10_rt_1627,
      O => Registro_inst_Registro_M_1(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_9_IN,
      O => Registro_inst_Registro_M_0(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(9),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_9_rt_1647
    );
  Registro_inst_Registro_M_1_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_9_CLK,
      I => Registro_inst_Registro_M_0_9_rt_1647,
      O => Registro_inst_Registro_M_1(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_8_IN,
      O => Registro_inst_Registro_M_0(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_0(8),
      ADR4 => '1',
      O => Registro_inst_Registro_M_0_8_rt_1642
    );
  Registro_inst_Registro_M_1_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_8_CLK,
      I => Registro_inst_Registro_M_0_8_rt_1642,
      O => Registro_inst_Registro_M_1(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux14_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y3"
    )
    port map (
      IA => Registro_inst_mux14_4_1676,
      IB => Registro_inst_mux14_3_1665,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_8_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux14_4 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR5 => Control_inst_Addr(3),
      ADR4 => Control_inst_Addr(2),
      ADR3 => Registro_inst_mux14_91_3503,
      ADR2 => Registro_inst_mux14_10_3504,
      ADR1 => Registro_inst_mux14_9_3505,
      ADR0 => Registro_inst_mux14_81_3763,
      O => Registro_inst_mux14_4_1676
    );
  Registro_inst_Reg_out_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_8_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_8_Q,
      O => Registro_inst_Reg_out(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux14_3 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux14_6_f7_0,
      ADR0 => Registro_inst_addr_1_114,
      O => Registro_inst_mux14_3_1665
    );
  Registro_inst_mux14_81 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"AFCFA0CFAFC0A0C0"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_2(8),
      ADR0 => Registro_inst_Registro_M_3_8_0,
      ADR4 => Registro_inst_Registro_M_1_8_0,
      ADR5 => Registro_inst_Registro_M_0(8),
      O => Registro_inst_mux14_81_3763
    );
  Registro_inst_addr_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FFCCF0AA00CCF0AA"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR1 => Registro_inst_Registro_M_25(8),
      ADR5 => Registro_inst_Registro_M_27(8),
      ADR2 => Registro_inst_Registro_M_26_8_0,
      ADR0 => Registro_inst_Registro_M_24(8),
      O => Registro_inst_addr_1_114
    );
  Registro_inst_Registro_M_25_11_Registro_inst_Registro_M_25_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(11),
      O => Registro_inst_Registro_M_26_11_0
    );
  Registro_inst_Registro_M_25_11_Registro_inst_Registro_M_25_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(10),
      O => Registro_inst_Registro_M_26_10_0
    );
  Registro_inst_Registro_M_25_11_Registro_inst_Registro_M_25_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(9),
      O => Registro_inst_Registro_M_26_9_0
    );
  Registro_inst_Registro_M_25_11_Registro_inst_Registro_M_25_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(8),
      O => Registro_inst_Registro_M_26_8_0
    );
  Registro_inst_Registro_M_25_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_11_IN,
      O => Registro_inst_Registro_M_25(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Registro_inst_Registro_M_25(11),
      ADR4 => '1',
      O => Registro_inst_Registro_M_25_11_rt_1687
    );
  Registro_inst_Registro_M_26_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_11_CLK,
      I => Registro_inst_Registro_M_25_11_rt_1687,
      O => Registro_inst_Registro_M_26(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_10_IN,
      O => Registro_inst_Registro_M_25(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(10),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_10_rt_1681
    );
  Registro_inst_Registro_M_26_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_10_CLK,
      I => Registro_inst_Registro_M_25_10_rt_1681,
      O => Registro_inst_Registro_M_26(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_9_IN,
      O => Registro_inst_Registro_M_25(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(9),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_9_rt_1701
    );
  Registro_inst_Registro_M_26_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_9_CLK,
      I => Registro_inst_Registro_M_25_9_rt_1701,
      O => Registro_inst_Registro_M_26(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_8_IN,
      O => Registro_inst_Registro_M_25(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_25(8),
      ADR4 => '1',
      O => Registro_inst_Registro_M_25_8_rt_1696
    );
  Registro_inst_Registro_M_26_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_8_CLK,
      I => Registro_inst_Registro_M_25_8_rt_1696,
      O => Registro_inst_Registro_M_26(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux12_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y6"
    )
    port map (
      IA => Registro_inst_mux12_4_1730,
      IB => Registro_inst_mux12_3_1719,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_6_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux12_4 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"FCFC3030EE22EE22"
    )
    port map (
      ADR1 => Control_inst_Addr(3),
      ADR5 => Control_inst_Addr(2),
      ADR3 => Registro_inst_mux12_91_3463,
      ADR4 => Registro_inst_mux12_10_3464,
      ADR2 => Registro_inst_mux12_9_3465,
      ADR0 => Registro_inst_mux12_81_3765,
      O => Registro_inst_mux12_4_1730
    );
  Registro_inst_Reg_out_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_6_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_6_Q,
      O => Registro_inst_Reg_out(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux12_3 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"AAAAAAAAF0F0F0F0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux12_6_f7_0,
      ADR0 => Registro_inst_addr_1_112,
      O => Registro_inst_mux12_3_1719
    );
  Registro_inst_mux12_81 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"BB88FCFCBB883030"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR1 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_2(6),
      ADR0 => Registro_inst_Registro_M_3_6_0,
      ADR5 => Registro_inst_Registro_M_1_6_0,
      ADR2 => Registro_inst_Registro_M_0(6),
      O => Registro_inst_mux12_81_3765
    );
  Registro_inst_addr_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"FDEC7564B9A83120"
    )
    port map (
      ADR1 => Control_inst_Addr(0),
      ADR0 => Control_inst_Addr(1),
      ADR5 => Registro_inst_Registro_M_25(6),
      ADR4 => Registro_inst_Registro_M_27(6),
      ADR2 => Registro_inst_Registro_M_26_6_0,
      ADR3 => Registro_inst_Registro_M_24(6),
      O => Registro_inst_addr_1_112
    );
  Control_inst_retardo_1_Control_inst_retardo_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  Control_inst_retardo_1_Control_inst_retardo_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_retardo_2_pack_10,
      O => Control_inst_retardo(2)
    );
  Control_inst_n0132_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => X"774444447F4C5D4C"
    )
    port map (
      ADR3 => Control_inst_estado_FSM_FFd2_3082,
      ADR5 => Control_inst_retardo(1),
      ADR0 => Control_inst_retardo(2),
      ADR4 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      ADR1 => Control_inst_estado_FSM_FFd1_3081,
      ADR2 => Control_inst_retardo(0),
      O => Control_inst_n0132_inv
    );
  Control_inst_retardo_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => '0'
    )
    port map (
      CE => Control_inst_n0132_inv,
      CLK => NlwBufferSignal_Control_inst_retardo_1_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_39_OUT_1_Q,
      O => Control_inst_retardo(1),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_39_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => X"23238C8C23238C8C"
    )
    port map (
      ADR3 => '1',
      ADR1 => Control_inst_retardo(0),
      ADR0 => Control_inst_estado_FSM_FFd1_3081,
      ADR4 => Control_inst_retardo(1),
      ADR2 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      ADR5 => '1',
      O => Control_inst_estado_1_X_12_o_wide_mux_39_OUT_1_Q
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => X"FFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => Control_inst_retardo(0),
      ADR2 => '1',
      ADR4 => Control_inst_retardo(1),
      ADR3 => '1',
      O => N2
    );
  Control_inst_retardo_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => '0'
    )
    port map (
      CE => Control_inst_n0132_inv,
      CLK => NlwBufferSignal_Control_inst_retardo_0_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_39_OUT_0_Q,
      O => Control_inst_retardo(0),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_39_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => X"0000D0DF0000D0DF"
    )
    port map (
      ADR2 => Control_inst_estado_FSM_FFd1_3081,
      ADR1 => Control_inst_retardo(1),
      ADR0 => Control_inst_retardo(2),
      ADR4 => Control_inst_retardo(0),
      ADR3 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      ADR5 => '1',
      O => Control_inst_estado_1_X_12_o_wide_mux_39_OUT_0_Q
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_39_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => X"6066808A"
    )
    port map (
      ADR2 => Control_inst_estado_FSM_FFd1_3081,
      ADR1 => Control_inst_retardo(1),
      ADR0 => Control_inst_retardo(2),
      ADR4 => Control_inst_retardo(0),
      ADR3 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      O => Control_inst_estado_1_X_12_o_wide_mux_39_OUT_2_Q
    );
  Control_inst_retardo_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y8",
      INIT => '0'
    )
    port map (
      CE => Control_inst_n0132_inv,
      CLK => NlwBufferSignal_Control_inst_retardo_2_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_39_OUT_2_Q,
      O => Control_inst_retardo_2_pack_10,
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Addr_1_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_1_3_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_3_Q,
      O => Control_inst_Addr_1_5(3),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"CCCCCCFF00005500"
    )
    port map (
      ADR2 => '1',
      ADR4 => Control_inst_estado_FSM_FFd1_3081,
      ADR3 => Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_Q,
      ADR5 => Control_inst_Addr_1_5(3),
      ADR1 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251_3554,
      ADR0 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21_3080,
      O => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_3_Q
    );
  Control_inst_Addr_1_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_1_2_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_2_Q,
      O => Control_inst_Addr_1_5(2),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"ABAB0030BBBB0000"
    )
    port map (
      ADR1 => Control_inst_estado_FSM_FFd1_3081,
      ADR2 => Control_inst_Addr_1_5(0),
      ADR5 => Control_inst_Addr_1_5(1),
      ADR4 => Control_inst_Addr_1_5(2),
      ADR0 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251_3554,
      ADR3 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21_3080,
      O => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_2_Q
    );
  Control_inst_Addr_1_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_1_1_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_1_Q,
      O => Control_inst_Addr_1_5(1),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"FFFF040403030404"
    )
    port map (
      ADR3 => '1',
      ADR2 => Control_inst_estado_FSM_FFd1_3081,
      ADR1 => Control_inst_Addr_1_5(0),
      ADR4 => Control_inst_Addr_1_5(1),
      ADR5 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251_3554,
      ADR0 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21_3080,
      O => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_1_Q
    );
  Control_inst_Addr_1_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_1_0_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_0_Q,
      O => Control_inst_Addr_1_5(0),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"FFEFF0E000000F0F"
    )
    port map (
      ADR2 => Control_inst_estado_FSM_FFd1_3081,
      ADR0 => Control_inst_retardo(2),
      ADR3 => Control_inst_retardo(0),
      ADR5 => Control_inst_Addr_1_5(0),
      ADR1 => Control_inst_retardo(1),
      ADR4 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21_3080,
      O => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_0_Q
    );
  Registro_inst_Registro_M_18_3_Registro_inst_Registro_M_18_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(3),
      O => Registro_inst_Registro_M_19_3_0
    );
  Registro_inst_Registro_M_18_3_Registro_inst_Registro_M_18_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(2),
      O => Registro_inst_Registro_M_19_2_0
    );
  Registro_inst_Registro_M_18_3_Registro_inst_Registro_M_18_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(1),
      O => Registro_inst_Registro_M_19_1_0
    );
  Registro_inst_Registro_M_18_3_Registro_inst_Registro_M_18_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(0),
      O => Registro_inst_Registro_M_19_0_0
    );
  Registro_inst_Registro_M_18_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_3_IN,
      O => Registro_inst_Registro_M_18(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_3_rt_1801
    );
  Registro_inst_Registro_M_19_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_3_CLK,
      I => Registro_inst_Registro_M_18_3_rt_1801,
      O => Registro_inst_Registro_M_19(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_2_IN,
      O => Registro_inst_Registro_M_18(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_2_rt_1795
    );
  Registro_inst_Registro_M_19_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_2_CLK,
      I => Registro_inst_Registro_M_18_2_rt_1795,
      O => Registro_inst_Registro_M_19(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_1_IN,
      O => Registro_inst_Registro_M_18(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_1_rt_1815
    );
  Registro_inst_Registro_M_19_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_1_CLK,
      I => Registro_inst_Registro_M_18_1_rt_1815,
      O => Registro_inst_Registro_M_19(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_0_IN,
      O => Registro_inst_Registro_M_18(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(0),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_0_rt_1810
    );
  Registro_inst_Registro_M_19_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_0_CLK,
      I => Registro_inst_Registro_M_18_0_rt_1810,
      O => Registro_inst_Registro_M_19(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_3_Registro_inst_Registro_M_20_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(11),
      O => Registro_inst_Registro_M_15_11_0
    );
  Registro_inst_Registro_M_20_3_Registro_inst_Registro_M_20_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(10),
      O => Registro_inst_Registro_M_15_10_0
    );
  Registro_inst_Registro_M_20_3_Registro_inst_Registro_M_20_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(9),
      O => Registro_inst_Registro_M_15_9_0
    );
  Registro_inst_Registro_M_20_3_Registro_inst_Registro_M_20_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(8),
      O => Registro_inst_Registro_M_15_8_0
    );
  Registro_inst_Registro_M_20_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_3_IN,
      O => Registro_inst_Registro_M_20(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_14(11),
      O => Registro_inst_Registro_M_14_11_rt_1835
    );
  Registro_inst_Registro_M_15_11 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_11_CLK,
      I => Registro_inst_Registro_M_14_11_rt_1835,
      O => Registro_inst_Registro_M_15(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_2_IN,
      O => Registro_inst_Registro_M_20(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Registro_inst_Registro_M_14(10),
      O => Registro_inst_Registro_M_14_10_rt_1828
    );
  Registro_inst_Registro_M_15_10 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_10_CLK,
      I => Registro_inst_Registro_M_14_10_rt_1828,
      O => Registro_inst_Registro_M_15(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_1_IN,
      O => Registro_inst_Registro_M_20(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_14(9),
      O => Registro_inst_Registro_M_14_9_rt_1824
    );
  Registro_inst_Registro_M_15_9 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_9_CLK,
      I => Registro_inst_Registro_M_14_9_rt_1824,
      O => Registro_inst_Registro_M_15(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_0_IN,
      O => Registro_inst_Registro_M_20(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_14(8),
      O => Registro_inst_Registro_M_14_8_rt_1819
    );
  Registro_inst_Registro_M_15_8 : X_FF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_8_CLK,
      I => Registro_inst_Registro_M_14_8_rt_1819,
      O => Registro_inst_Registro_M_15(8),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_11 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_11_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_11_IN,
      O => Registro_inst_Registro_M_27(11),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_10 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_10_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_10_IN,
      O => Registro_inst_Registro_M_27(10),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_9 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_9_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_9_IN,
      O => Registro_inst_Registro_M_27(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_8 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_8_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_8_IN,
      O => Registro_inst_Registro_M_27(8),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Addr_3_Control_inst_Addr_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(4),
      O => Control_inst_Addr_4_0
    );
  Control_inst_Addr_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_3_CLK,
      I => NlwBufferSignal_Control_inst_Addr_3_IN,
      O => Control_inst_Addr(3),
      RST => GND,
      SET => GND
    );
  Control_inst_Addr_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_2_CLK,
      I => NlwBufferSignal_Control_inst_Addr_2_IN,
      O => Control_inst_Addr(2),
      RST => GND,
      SET => GND
    );
  Control_inst_Addr_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_1_CLK,
      I => NlwBufferSignal_Control_inst_Addr_1_IN,
      O => Control_inst_Addr(1),
      RST => GND,
      SET => GND
    );
  Control_inst_Addr_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_0_CLK,
      I => NlwBufferSignal_Control_inst_Addr_0_IN,
      O => Control_inst_Addr(0),
      RST => GND,
      SET => GND
    );
  Control_inst_Addr_1_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Control_inst_Addr_1_5(4),
      O => Control_inst_Addr_1_4_rt_1860
    );
  Control_inst_Addr_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_4_CLK,
      I => Control_inst_Addr_1_4_rt_1860,
      O => Control_inst_Addr(4),
      RST => GND,
      SET => GND
    );
  Control_inst_Addr_1_4_Control_inst_Addr_1_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_pack_10,
      O => Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_Q
    );
  Control_inst_Addr_1_4_Control_inst_Addr_1_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_estado_FSM_FFd2_pack_8,
      O => Control_inst_estado_FSM_FFd2_3082
    );
  Control_inst_Addr_1_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_Addr_1_4_CLK,
      I => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_4_Q,
      O => Control_inst_Addr_1_5(4),
      RST => rst_valido,
      SET => GND
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => X"FFFF005F00200020"
    )
    port map (
      ADR3 => Control_inst_estado_FSM_FFd1_3081,
      ADR2 => Control_inst_Addr_1_5(3),
      ADR0 => Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_Q,
      ADR5 => Control_inst_Addr_1_5(4),
      ADR4 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251_3554,
      ADR1 => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21_3080,
      O => Control_inst_estado_1_X_12_o_wide_mux_35_OUT_4_Q
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => X"FFFFAAAACF03CF03"
    )
    port map (
      ADR5 => Control_inst_estado_FSM_FFd1_3081,
      ADR0 => N2_0,
      ADR4 => Control_inst_retardo(2),
      ADR3 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      ADR1 => Control_inst_estado_FSM_FFd2_3082,
      ADR2 => datain_valid_IBUF_0,
      O => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT251_3554
    );
  Control_inst_Addr_1_4_PWR_12_o_equal_5_o_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => X"0080000000800000"
    )
    port map (
      ADR2 => Control_inst_Addr_1_5(4),
      ADR1 => Control_inst_Addr_1_5(3),
      ADR3 => Control_inst_Addr_1_5(2),
      ADR0 => Control_inst_Addr_1_5(1),
      ADR4 => Control_inst_Addr_1_5(0),
      ADR5 => '1',
      O => Control_inst_Addr_1_4_PWR_12_o_equal_5_o
    );
  Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => X"AA000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => Control_inst_Addr_1_5(2),
      ADR0 => Control_inst_Addr_1_5(1),
      ADR4 => Control_inst_Addr_1_5(0),
      O => Control_inst_Madd_Addr_1_4_GND_12_o_add_5_OUT_cy_2_pack_10
    );
  Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT211 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => X"CCFF0033CCFF0033"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => Control_inst_estado_FSM_FFd2_3082,
      ADR3 => datain_valid_IBUF_0,
      ADR4 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      ADR5 => '1',
      O => Control_inst_Mmux_estado_1_X_12_o_wide_mux_35_OUT21_3080
    );
  Control_inst_estado_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => X"0300CFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => Control_inst_estado_FSM_FFd1_3081,
      ADR1 => Control_inst_estado_FSM_FFd2_3082,
      ADR3 => datain_valid_IBUF_0,
      ADR4 => Control_inst_Addr_1_4_PWR_12_o_equal_5_o,
      O => Control_inst_estado_FSM_FFd2_In
    );
  Control_inst_estado_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Control_inst_estado_FSM_FFd2_CLK,
      I => Control_inst_estado_FSM_FFd2_In,
      O => Control_inst_estado_FSM_FFd2_pack_8,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux_91_Registro_inst_mux_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux8_6_f7_1900,
      O => Registro_inst_mux8_6_f7_0
    );
  Registro_inst_mux8_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      IA => Registro_inst_mux8_8_1901,
      IB => Registro_inst_mux8_7_1918,
      O => Registro_inst_mux8_6_f7_1900,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux8_8 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"FCFAFC0A0CFA0C0A"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_18(2),
      ADR5 => Registro_inst_Registro_M_19_2_0,
      ADR4 => Registro_inst_Registro_M_17(2),
      ADR0 => Registro_inst_Registro_M_16(2),
      O => Registro_inst_mux8_8_1901
    );
  Registro_inst_mux8_7 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"E4FFE4AAE455E400"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_22(2),
      ADR2 => Registro_inst_Registro_M_23_2_0,
      ADR5 => Registro_inst_Registro_M_21(2),
      ADR4 => Registro_inst_Registro_M_20(2),
      O => Registro_inst_mux8_7_1918
    );
  Registro_inst_mux_91 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_10(0),
      ADR2 => Registro_inst_Registro_M_11_0_0,
      ADR3 => Registro_inst_Registro_M_9_0_0,
      ADR0 => Registro_inst_Registro_M_8(0),
      O => Registro_inst_mux_91_3543
    );
  Registro_inst_mux7_9 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"AAAACCCCFF00F0F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_6_1_0,
      ADR0 => Registro_inst_Registro_M_7(1),
      ADR1 => Registro_inst_Registro_M_5(1),
      ADR2 => Registro_inst_Registro_M_4(1),
      O => Registro_inst_mux7_9_3365
    );
  Registro_inst_mux_6_f7_Registro_inst_mux_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux_6_f7_1927,
      O => Registro_inst_mux_6_f7_0
    );
  Registro_inst_mux_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      IA => Registro_inst_mux_8_1926,
      IB => Registro_inst_mux_7_1934,
      O => Registro_inst_mux_6_f7_1927,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux_8 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"FEF45E54AEA40E04"
    )
    port map (
      ADR0 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_18(0),
      ADR4 => Registro_inst_Registro_M_19_0_0,
      ADR5 => Registro_inst_Registro_M_17(0),
      ADR1 => Registro_inst_Registro_M_16(0),
      O => Registro_inst_mux_8_1926
    );
  Registro_inst_mux_7 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"FFACF0AC0FAC00AC"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_22(0),
      ADR5 => Registro_inst_Registro_M_23_0_0,
      ADR0 => Registro_inst_Registro_M_21(0),
      ADR1 => Registro_inst_Registro_M_20(0),
      O => Registro_inst_mux_7_1934
    );
  Registro_inst_mux15_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      IA => Registro_inst_mux15_4_1969,
      IB => Registro_inst_mux15_3_1958,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_9_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux15_4 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FCFCEE223030EE22"
    )
    port map (
      ADR1 => Control_inst_Addr(3),
      ADR4 => Control_inst_Addr(2),
      ADR3 => Registro_inst_mux15_91_3523,
      ADR5 => Registro_inst_mux15_10_3524,
      ADR2 => Registro_inst_mux15_9_3525,
      ADR0 => Registro_inst_mux15_81_3768,
      O => Registro_inst_mux15_4_1969
    );
  Registro_inst_Reg_out_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_9_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_9_Q,
      O => Registro_inst_Reg_out(9),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux15_3 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"AFAFAFAFA0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Control_inst_Addr(3),
      ADR5 => Registro_inst_mux15_6_f7_0,
      ADR0 => Registro_inst_addr_1_115,
      O => Registro_inst_mux15_3_1958
    );
  Registro_inst_mux15_81 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"AAF0FFCCAAF000CC"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_2(9),
      ADR0 => Registro_inst_Registro_M_3_9_0,
      ADR2 => Registro_inst_Registro_M_1_9_0,
      ADR1 => Registro_inst_Registro_M_0(9),
      O => Registro_inst_mux15_81_3768
    );
  Registro_inst_addr_1_151 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FFAACCF000AACCF0"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR0 => Registro_inst_Registro_M_25(9),
      ADR5 => Registro_inst_Registro_M_27(9),
      ADR1 => Registro_inst_Registro_M_26_9_0,
      ADR2 => Registro_inst_Registro_M_24(9),
      O => Registro_inst_addr_1_115
    );
  Registro_inst_Registro_M_2_7_Registro_inst_Registro_M_2_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(7),
      O => Registro_inst_Registro_M_3_7_0
    );
  Registro_inst_Registro_M_2_7_Registro_inst_Registro_M_2_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(6),
      O => Registro_inst_Registro_M_3_6_0
    );
  Registro_inst_Registro_M_2_7_Registro_inst_Registro_M_2_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(5),
      O => Registro_inst_Registro_M_3_5_0
    );
  Registro_inst_Registro_M_2_7_Registro_inst_Registro_M_2_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(4),
      O => Registro_inst_Registro_M_3_4_0
    );
  Registro_inst_Registro_M_2_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_7_IN,
      O => Registro_inst_Registro_M_2(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(7),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_7_rt_1980
    );
  Registro_inst_Registro_M_3_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_7_CLK,
      I => Registro_inst_Registro_M_2_7_rt_1980,
      O => Registro_inst_Registro_M_3(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_6_IN,
      O => Registro_inst_Registro_M_2(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_6_rt_1974
    );
  Registro_inst_Registro_M_3_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_6_CLK,
      I => Registro_inst_Registro_M_2_6_rt_1974,
      O => Registro_inst_Registro_M_3(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_5_IN,
      O => Registro_inst_Registro_M_2(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_5_rt_1994
    );
  Registro_inst_Registro_M_3_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_5_CLK,
      I => Registro_inst_Registro_M_2_5_rt_1994,
      O => Registro_inst_Registro_M_3(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_4_IN,
      O => Registro_inst_Registro_M_2(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_2(4),
      ADR4 => '1',
      O => Registro_inst_Registro_M_2_4_rt_1989
    );
  Registro_inst_Registro_M_3_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_4_CLK,
      I => Registro_inst_Registro_M_2_4_rt_1989,
      O => Registro_inst_Registro_M_3(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux10_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      IA => Registro_inst_mux10_4_2023,
      IB => Registro_inst_mux10_3_2012,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_4_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux10_4 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"F0FFCCAAF000CCAA"
    )
    port map (
      ADR3 => Control_inst_Addr(3),
      ADR4 => Control_inst_Addr(2),
      ADR1 => Registro_inst_mux10_91_3423,
      ADR2 => Registro_inst_mux10_10_3424,
      ADR5 => Registro_inst_mux10_9_3425,
      ADR0 => Registro_inst_mux10_81_3770,
      O => Registro_inst_mux10_4_2023
    );
  Registro_inst_Reg_out_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_4_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_4_Q,
      O => Registro_inst_Reg_out(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux10_3 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => Control_inst_Addr(3),
      ADR3 => Registro_inst_mux10_6_f7_0,
      ADR0 => Registro_inst_addr_1_110,
      O => Registro_inst_mux10_3_2012
    );
  Registro_inst_mux10_81 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"CCF0FFAACCF000AA"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_2(4),
      ADR1 => Registro_inst_Registro_M_3_4_0,
      ADR2 => Registro_inst_Registro_M_1_4_0,
      ADR0 => Registro_inst_Registro_M_0(4),
      O => Registro_inst_mux10_81_3770
    );
  Registro_inst_addr_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"CCF0AAFFCCF0AA00"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR2 => Registro_inst_Registro_M_25(4),
      ADR1 => Registro_inst_Registro_M_27(4),
      ADR0 => Registro_inst_Registro_M_26_4_0,
      ADR5 => Registro_inst_Registro_M_24(4),
      O => Registro_inst_addr_1_110
    );
  Registro_inst_Registro_M_10_7_Registro_inst_Registro_M_10_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(7),
      O => Registro_inst_Registro_M_11_7_0
    );
  Registro_inst_Registro_M_10_7_Registro_inst_Registro_M_10_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(6),
      O => Registro_inst_Registro_M_11_6_0
    );
  Registro_inst_Registro_M_10_7_Registro_inst_Registro_M_10_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(5),
      O => Registro_inst_Registro_M_11_5_0
    );
  Registro_inst_Registro_M_10_7_Registro_inst_Registro_M_10_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(4),
      O => Registro_inst_Registro_M_11_4_0
    );
  Registro_inst_Registro_M_10_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_7_IN,
      O => Registro_inst_Registro_M_10(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_10(7),
      ADR3 => '1',
      O => Registro_inst_Registro_M_10_7_rt_2034
    );
  Registro_inst_Registro_M_11_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_7_CLK,
      I => Registro_inst_Registro_M_10_7_rt_2034,
      O => Registro_inst_Registro_M_11(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_6_IN,
      O => Registro_inst_Registro_M_10(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_10(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_10_6_rt_2028
    );
  Registro_inst_Registro_M_11_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_6_CLK,
      I => Registro_inst_Registro_M_10_6_rt_2028,
      O => Registro_inst_Registro_M_11(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_5_IN,
      O => Registro_inst_Registro_M_10(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_10(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_10_5_rt_2048
    );
  Registro_inst_Registro_M_11_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_5_CLK,
      I => Registro_inst_Registro_M_10_5_rt_2048,
      O => Registro_inst_Registro_M_11(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_4_IN,
      O => Registro_inst_Registro_M_10(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Registro_inst_Registro_M_10(4),
      ADR4 => '1',
      O => Registro_inst_Registro_M_10_4_rt_2043
    );
  Registro_inst_Registro_M_11_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_4_CLK,
      I => Registro_inst_Registro_M_10_4_rt_2043,
      O => Registro_inst_Registro_M_11(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_17_3_IN,
      O => Registro_inst_Registro_M_17(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_17_2_IN,
      O => Registro_inst_Registro_M_17(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_17_1_IN,
      O => Registro_inst_Registro_M_17(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_17_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_17_0_IN,
      O => Registro_inst_Registro_M_17(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux7_10 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"FF00F0F0AAAACCCC"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_14(1),
      ADR3 => Registro_inst_Registro_M_15_1_0,
      ADR2 => Registro_inst_Registro_M_13_1_0,
      ADR1 => Registro_inst_Registro_M_12(1),
      O => Registro_inst_mux7_10_3364
    );
  Registro_inst_Registro_M_21_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_3_IN,
      O => Registro_inst_Registro_M_21(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_2_IN,
      O => Registro_inst_Registro_M_21(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_1_IN,
      O => Registro_inst_Registro_M_21(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux8_10 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_14(2),
      ADR2 => Registro_inst_Registro_M_15_2_0,
      ADR1 => Registro_inst_Registro_M_13_2_0,
      ADR0 => Registro_inst_Registro_M_12(2),
      O => Registro_inst_mux8_10_3384
    );
  Registro_inst_Registro_M_21_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_21_0_IN,
      O => Registro_inst_Registro_M_21(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux9_10 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"AAAACCCCFF00F0F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_14(3),
      ADR0 => Registro_inst_Registro_M_15_3_0,
      ADR1 => Registro_inst_Registro_M_13_3_0,
      ADR2 => Registro_inst_Registro_M_12(3),
      O => Registro_inst_mux9_10_3404
    );
  Registro_inst_Registro_M_22_3_Registro_inst_Registro_M_22_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(3),
      O => Registro_inst_Registro_M_23_3_0
    );
  Registro_inst_Registro_M_22_3_Registro_inst_Registro_M_22_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(2),
      O => Registro_inst_Registro_M_23_2_0
    );
  Registro_inst_Registro_M_22_3_Registro_inst_Registro_M_22_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(1),
      O => Registro_inst_Registro_M_23_1_0
    );
  Registro_inst_Registro_M_22_3_Registro_inst_Registro_M_22_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(0),
      O => Registro_inst_Registro_M_23_0_0
    );
  Registro_inst_Registro_M_22_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_3_IN,
      O => Registro_inst_Registro_M_22(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_22(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_22_3_rt_2100
    );
  Registro_inst_Registro_M_23_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_3_CLK,
      I => Registro_inst_Registro_M_22_3_rt_2100,
      O => Registro_inst_Registro_M_23(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_2_IN,
      O => Registro_inst_Registro_M_22(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_22(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_22_2_rt_2094
    );
  Registro_inst_Registro_M_23_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_2_CLK,
      I => Registro_inst_Registro_M_22_2_rt_2094,
      O => Registro_inst_Registro_M_23(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_1_IN,
      O => Registro_inst_Registro_M_22(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_22(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_22_1_rt_2114
    );
  Registro_inst_Registro_M_23_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_1_CLK,
      I => Registro_inst_Registro_M_22_1_rt_2114,
      O => Registro_inst_Registro_M_23(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_22_0_IN,
      O => Registro_inst_Registro_M_22(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Registro_inst_Registro_M_22(0),
      ADR4 => '1',
      O => Registro_inst_Registro_M_22_0_rt_2109
    );
  Registro_inst_Registro_M_23_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_0_CLK,
      I => Registro_inst_Registro_M_22_0_rt_2109,
      O => Registro_inst_Registro_M_23(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_7_IN,
      O => Registro_inst_Registro_M_27(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_6_IN,
      O => Registro_inst_Registro_M_27(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_5_IN,
      O => Registro_inst_Registro_M_27(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_27_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_27_4_IN,
      O => Registro_inst_Registro_M_27(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux10_91 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"BFB38F83BCB08C80"
    )
    port map (
      ADR1 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_10(4),
      ADR0 => Registro_inst_Registro_M_11_4_0,
      ADR4 => Registro_inst_Registro_M_9(4),
      ADR5 => Registro_inst_Registro_M_8(4),
      O => Registro_inst_mux10_91_3423
    );
  Registro_inst_mux12_10 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"F5F5EE44A0A0EE44"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_14(6),
      ADR2 => Registro_inst_Registro_M_15(6),
      ADR3 => Registro_inst_Registro_M_13_6_0,
      ADR1 => Registro_inst_Registro_M_12(6),
      O => Registro_inst_mux12_10_3464
    );
  Registro_inst_mux12_91 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"FAFADD885050DD88"
    )
    port map (
      ADR0 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_10(6),
      ADR5 => Registro_inst_Registro_M_11_6_0,
      ADR2 => Registro_inst_Registro_M_9(6),
      ADR3 => Registro_inst_Registro_M_8(6),
      O => Registro_inst_mux12_91_3463
    );
  Registro_inst_mux7_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y1"
    )
    port map (
      IA => Registro_inst_mux7_4_2175,
      IB => Registro_inst_mux7_3_2164,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_1_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux7_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"F0CCFFAAF0CC00AA"
    )
    port map (
      ADR3 => Control_inst_Addr(3),
      ADR4 => Control_inst_Addr(2),
      ADR5 => Registro_inst_mux7_91_3363,
      ADR2 => Registro_inst_mux7_10_3364,
      ADR1 => Registro_inst_mux7_9_3365,
      ADR0 => Registro_inst_mux7_81_3772,
      O => Registro_inst_mux7_4_2175
    );
  Registro_inst_Reg_out_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_1_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_1_Q,
      O => Registro_inst_Reg_out(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux7_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => Control_inst_Addr(3),
      ADR3 => Registro_inst_mux7_6_f7_0,
      ADR0 => Registro_inst_addr_1_17,
      O => Registro_inst_mux7_3_2164
    );
  Registro_inst_mux7_81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_2(1),
      ADR3 => Registro_inst_Registro_M_3_1_0,
      ADR2 => Registro_inst_Registro_M_1_1_0,
      ADR0 => Registro_inst_Registro_M_0(1),
      O => Registro_inst_mux7_81_3772
    );
  Registro_inst_addr_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"CCCCAAAAF0F0FF00"
    )
    port map (
      ADR5 => Control_inst_Addr(0),
      ADR4 => Control_inst_Addr(1),
      ADR0 => Registro_inst_Registro_M_25(1),
      ADR1 => Registro_inst_Registro_M_27_1_0,
      ADR2 => Registro_inst_Registro_M_26_1_0,
      ADR3 => Registro_inst_Registro_M_24(1),
      O => Registro_inst_addr_1_17
    );
  Registro_inst_mux8_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y2"
    )
    port map (
      IA => Registro_inst_mux8_4_2206,
      IB => Registro_inst_mux8_3_2195,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_2_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux8_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"FCFC0C0CFA0AFA0A"
    )
    port map (
      ADR5 => Control_inst_Addr(3),
      ADR2 => Control_inst_Addr(2),
      ADR1 => Registro_inst_mux8_91_3383,
      ADR4 => Registro_inst_mux8_10_3384,
      ADR3 => Registro_inst_mux8_9_3385,
      ADR0 => Registro_inst_mux8_81_3774,
      O => Registro_inst_mux8_4_2206
    );
  Registro_inst_Reg_out_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_2_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_2_Q,
      O => Registro_inst_Reg_out(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux8_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => Control_inst_Addr(3),
      ADR3 => Registro_inst_mux8_6_f7_0,
      ADR0 => Registro_inst_addr_1_18,
      O => Registro_inst_mux8_3_2195
    );
  Registro_inst_mux8_81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"EEEEF3C02222F3C0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR1 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_2(2),
      ADR5 => Registro_inst_Registro_M_3_2_0,
      ADR2 => Registro_inst_Registro_M_1_2_0,
      ADR3 => Registro_inst_Registro_M_0(2),
      O => Registro_inst_mux8_81_3774
    );
  Registro_inst_addr_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"CCCCFF00F0F0AAAA"
    )
    port map (
      ADR5 => Control_inst_Addr(0),
      ADR4 => Control_inst_Addr(1),
      ADR3 => Registro_inst_Registro_M_25(2),
      ADR1 => Registro_inst_Registro_M_27_2_0,
      ADR2 => Registro_inst_Registro_M_26_2_0,
      ADR0 => Registro_inst_Registro_M_24(2),
      O => Registro_inst_addr_1_18
    );
  Registro_inst_Registro_M_12_3_Registro_inst_Registro_M_12_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(3),
      O => Registro_inst_Registro_M_13_3_0
    );
  Registro_inst_Registro_M_12_3_Registro_inst_Registro_M_12_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(2),
      O => Registro_inst_Registro_M_13_2_0
    );
  Registro_inst_Registro_M_12_3_Registro_inst_Registro_M_12_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(1),
      O => Registro_inst_Registro_M_13_1_0
    );
  Registro_inst_Registro_M_12_3_Registro_inst_Registro_M_12_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(0),
      O => Registro_inst_Registro_M_13_0_0
    );
  Registro_inst_Registro_M_12_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_3_IN,
      O => Registro_inst_Registro_M_12(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_12(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_12_3_rt_2217
    );
  Registro_inst_Registro_M_13_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_3_CLK,
      I => Registro_inst_Registro_M_12_3_rt_2217,
      O => Registro_inst_Registro_M_13(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_2_IN,
      O => Registro_inst_Registro_M_12(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_12(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_12_2_rt_2211
    );
  Registro_inst_Registro_M_13_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_2_CLK,
      I => Registro_inst_Registro_M_12_2_rt_2211,
      O => Registro_inst_Registro_M_13(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_1_IN,
      O => Registro_inst_Registro_M_12(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_12(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_12_1_rt_2231
    );
  Registro_inst_Registro_M_13_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_1_CLK,
      I => Registro_inst_Registro_M_12_1_rt_2231,
      O => Registro_inst_Registro_M_13(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_0_IN,
      O => Registro_inst_Registro_M_12(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Registro_inst_Registro_M_12(0),
      ADR4 => '1',
      O => Registro_inst_Registro_M_12_0_rt_2226
    );
  Registro_inst_Registro_M_13_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_0_CLK,
      I => Registro_inst_Registro_M_12_0_rt_2226,
      O => Registro_inst_Registro_M_13(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux_10_Registro_inst_mux_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux7_6_f7_2254,
      O => Registro_inst_mux7_6_f7_0
    );
  Registro_inst_mux7_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y4"
    )
    port map (
      IA => Registro_inst_mux7_8_2253,
      IB => Registro_inst_mux7_7_2245,
      O => Registro_inst_mux7_6_f7_2254,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux7_8 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"FFAAF0CC00AAF0CC"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_18(1),
      ADR5 => Registro_inst_Registro_M_19_1_0,
      ADR2 => Registro_inst_Registro_M_17(1),
      ADR1 => Registro_inst_Registro_M_16(1),
      O => Registro_inst_mux7_8_2253
    );
  Registro_inst_mux7_7 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"AFAFA0A0FC0CFC0C"
    )
    port map (
      ADR5 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_22(1),
      ADR0 => Registro_inst_Registro_M_23_1_0,
      ADR3 => Registro_inst_Registro_M_21(1),
      ADR1 => Registro_inst_Registro_M_20(1),
      O => Registro_inst_mux7_7_2245
    );
  Registro_inst_mux_10 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"CCCCFF00AAAAF0F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_14(0),
      ADR1 => Registro_inst_Registro_M_15_0_0,
      ADR3 => Registro_inst_Registro_M_13_0_0,
      ADR2 => Registro_inst_Registro_M_12(0),
      O => Registro_inst_mux_10_3544
    );
  Registro_inst_Registro_M_4_7_Registro_inst_Registro_M_4_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(7),
      O => Registro_inst_Registro_M_5_7_0
    );
  Registro_inst_Registro_M_4_7_Registro_inst_Registro_M_4_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(6),
      O => Registro_inst_Registro_M_5_6_0
    );
  Registro_inst_Registro_M_4_7_Registro_inst_Registro_M_4_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(5),
      O => Registro_inst_Registro_M_5_5_0
    );
  Registro_inst_Registro_M_4_7_Registro_inst_Registro_M_4_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5(4),
      O => Registro_inst_Registro_M_5_4_0
    );
  Registro_inst_Registro_M_4_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_7_IN,
      O => Registro_inst_Registro_M_4(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_4(7),
      ADR4 => '1',
      O => Registro_inst_Registro_M_4_7_rt_2263
    );
  Registro_inst_Registro_M_5_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_7_CLK,
      I => Registro_inst_Registro_M_4_7_rt_2263,
      O => Registro_inst_Registro_M_5(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_6_IN,
      O => Registro_inst_Registro_M_4(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_6_rt_2257
    );
  Registro_inst_Registro_M_5_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_6_CLK,
      I => Registro_inst_Registro_M_4_6_rt_2257,
      O => Registro_inst_Registro_M_5(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_5_IN,
      O => Registro_inst_Registro_M_4(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_4(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_4_5_rt_2277
    );
  Registro_inst_Registro_M_5_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_5_CLK,
      I => Registro_inst_Registro_M_4_5_rt_2277,
      O => Registro_inst_Registro_M_5(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_4_IN,
      O => Registro_inst_Registro_M_4(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Registro_inst_Registro_M_4(4),
      ADR4 => '1',
      O => Registro_inst_Registro_M_4_4_rt_2272
    );
  Registro_inst_Registro_M_5_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_4_CLK,
      I => Registro_inst_Registro_M_4_4_rt_2272,
      O => Registro_inst_Registro_M_5(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux13_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y6"
    )
    port map (
      IA => Registro_inst_mux13_4_2306,
      IB => Registro_inst_mux13_3_2295,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_7_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux13_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FFCCE2E23300E2E2"
    )
    port map (
      ADR1 => Control_inst_Addr(3),
      ADR4 => Control_inst_Addr(2),
      ADR2 => Registro_inst_mux13_91_3483,
      ADR5 => Registro_inst_mux13_10_3484,
      ADR3 => Registro_inst_mux13_9_3485,
      ADR0 => Registro_inst_mux13_81_3776,
      O => Registro_inst_mux13_4_2306
    );
  Registro_inst_Reg_out_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_7_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_7_Q,
      O => Registro_inst_Reg_out(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux13_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"AAAAAAAAFF00FF00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Control_inst_Addr(3),
      ADR3 => Registro_inst_mux13_6_f7_0,
      ADR0 => Registro_inst_addr_1_113,
      O => Registro_inst_mux13_3_2295
    );
  Registro_inst_mux13_81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"CCCCFF00F0F0AAAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_2(7),
      ADR1 => Registro_inst_Registro_M_3_7_0,
      ADR3 => Registro_inst_Registro_M_1_7_0,
      ADR0 => Registro_inst_Registro_M_0(7),
      O => Registro_inst_mux13_81_3776
    );
  Registro_inst_addr_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FFF00F00CACACACA"
    )
    port map (
      ADR5 => Control_inst_Addr(0),
      ADR2 => Control_inst_Addr(1),
      ADR3 => Registro_inst_Registro_M_25(7),
      ADR4 => Registro_inst_Registro_M_27(7),
      ADR1 => Registro_inst_Registro_M_26_7_0,
      ADR0 => Registro_inst_Registro_M_24(7),
      O => Registro_inst_addr_1_113
    );
  Registro_inst_Registro_M_24_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_7_IN,
      O => Registro_inst_Registro_M_24(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_6_IN,
      O => Registro_inst_Registro_M_24(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux11_91 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"E4E4FF55E4E4AA00"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_10(5),
      ADR2 => Registro_inst_Registro_M_11_5_0,
      ADR3 => Registro_inst_Registro_M_9(5),
      ADR5 => Registro_inst_Registro_M_8(5),
      O => Registro_inst_mux11_91_3443
    );
  Registro_inst_Registro_M_24_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_5_IN,
      O => Registro_inst_Registro_M_24(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux13_10 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"F3C0EEEEF3C02222"
    )
    port map (
      ADR1 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_14(7),
      ADR2 => Registro_inst_Registro_M_15(7),
      ADR3 => Registro_inst_Registro_M_13_7_0,
      ADR0 => Registro_inst_Registro_M_12(7),
      O => Registro_inst_mux13_10_3484
    );
  Registro_inst_Registro_M_24_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_4_IN,
      O => Registro_inst_Registro_M_24(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux13_91 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"FFE4AAE455E400E4"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_10(7),
      ADR5 => Registro_inst_Registro_M_11_7_0,
      ADR2 => Registro_inst_Registro_M_9(7),
      ADR1 => Registro_inst_Registro_M_8(7),
      O => Registro_inst_mux13_91_3483
    );
  Registro_inst_mux10_6_f7_Registro_inst_mux10_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux10_6_f7_2343,
      O => Registro_inst_mux10_6_f7_0
    );
  Registro_inst_mux10_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y8"
    )
    port map (
      IA => Registro_inst_mux10_8_2342,
      IB => Registro_inst_mux10_7_2350,
      O => Registro_inst_mux10_6_f7_2343,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux10_8 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"FACF0ACFFAC00AC0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_18(4),
      ADR4 => Registro_inst_Registro_M_19_4_0,
      ADR1 => Registro_inst_Registro_M_17_4_0,
      ADR5 => Registro_inst_Registro_M_16(4),
      O => Registro_inst_mux10_8_2342
    );
  Registro_inst_mux10_7 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"FCFAFC0A0CFA0C0A"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_22_4_0,
      ADR5 => Registro_inst_Registro_M_23_4_0,
      ADR4 => Registro_inst_Registro_M_21_4_0,
      ADR0 => Registro_inst_Registro_M_20(4),
      O => Registro_inst_mux10_7_2350
    );
  Registro_inst_Registro_M_0_3_Registro_inst_Registro_M_0_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(3),
      O => Registro_inst_Registro_M_1_3_0
    );
  Registro_inst_Registro_M_0_3_Registro_inst_Registro_M_0_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(2),
      O => Registro_inst_Registro_M_1_2_0
    );
  Registro_inst_Registro_M_0_3_Registro_inst_Registro_M_0_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(1),
      O => Registro_inst_Registro_M_1_1_0
    );
  Registro_inst_Registro_M_0_3_Registro_inst_Registro_M_0_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(0),
      O => Registro_inst_Registro_M_1_0_0
    );
  Registro_inst_Registro_M_0_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_3_IN,
      O => Registro_inst_Registro_M_0(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_3_rt_2365
    );
  Registro_inst_Registro_M_1_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_3_CLK,
      I => Registro_inst_Registro_M_0_3_rt_2365,
      O => Registro_inst_Registro_M_1(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_2_IN,
      O => Registro_inst_Registro_M_0(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_2_rt_2359
    );
  Registro_inst_Registro_M_1_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_2_CLK,
      I => Registro_inst_Registro_M_0_2_rt_2359,
      O => Registro_inst_Registro_M_1(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_1_IN,
      O => Registro_inst_Registro_M_0(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_1_rt_2379
    );
  Registro_inst_Registro_M_1_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_1_CLK,
      I => Registro_inst_Registro_M_0_1_rt_2379,
      O => Registro_inst_Registro_M_1(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_0_IN,
      O => Registro_inst_Registro_M_0(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(0),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_0_rt_2374
    );
  Registro_inst_Registro_M_1_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_0_CLK,
      I => Registro_inst_Registro_M_0_0_rt_2374,
      O => Registro_inst_Registro_M_1(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_3_Registro_inst_Registro_M_16_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(3),
      O => Registro_inst_Registro_M_11_3_0
    );
  Registro_inst_Registro_M_16_3_Registro_inst_Registro_M_16_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(2),
      O => Registro_inst_Registro_M_11_2_0
    );
  Registro_inst_Registro_M_16_3_Registro_inst_Registro_M_16_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(1),
      O => Registro_inst_Registro_M_11_1_0
    );
  Registro_inst_Registro_M_16_3_Registro_inst_Registro_M_16_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(0),
      O => Registro_inst_Registro_M_11_0_0
    );
  Registro_inst_Registro_M_16_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_3_IN,
      O => Registro_inst_Registro_M_16(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_10(3),
      O => Registro_inst_Registro_M_10_3_rt_2399
    );
  Registro_inst_Registro_M_11_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_3_CLK,
      I => Registro_inst_Registro_M_10_3_rt_2399,
      O => Registro_inst_Registro_M_11(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_2_IN,
      O => Registro_inst_Registro_M_16(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_10(2),
      O => Registro_inst_Registro_M_10_2_rt_2392
    );
  Registro_inst_Registro_M_11_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_2_CLK,
      I => Registro_inst_Registro_M_10_2_rt_2392,
      O => Registro_inst_Registro_M_11(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_1_IN,
      O => Registro_inst_Registro_M_16(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_10(1),
      O => Registro_inst_Registro_M_10_1_rt_2388
    );
  Registro_inst_Registro_M_11_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_1_CLK,
      I => Registro_inst_Registro_M_10_1_rt_2388,
      O => Registro_inst_Registro_M_11(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_0_IN,
      O => Registro_inst_Registro_M_16(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_10(0),
      O => Registro_inst_Registro_M_10_0_rt_2383
    );
  Registro_inst_Registro_M_11_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_11_0_CLK,
      I => Registro_inst_Registro_M_10_0_rt_2383,
      O => Registro_inst_Registro_M_11(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_3_Registro_inst_Registro_M_14_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(3),
      O => Registro_inst_Registro_M_15_3_0
    );
  Registro_inst_Registro_M_14_3_Registro_inst_Registro_M_14_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(2),
      O => Registro_inst_Registro_M_15_2_0
    );
  Registro_inst_Registro_M_14_3_Registro_inst_Registro_M_14_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(1),
      O => Registro_inst_Registro_M_15_1_0
    );
  Registro_inst_Registro_M_14_3_Registro_inst_Registro_M_14_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(0),
      O => Registro_inst_Registro_M_15_0_0
    );
  Registro_inst_Registro_M_14_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_3_IN,
      O => Registro_inst_Registro_M_14(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_14(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_14_3_rt_2411
    );
  Registro_inst_Registro_M_15_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_3_CLK,
      I => Registro_inst_Registro_M_14_3_rt_2411,
      O => Registro_inst_Registro_M_15(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_2_IN,
      O => Registro_inst_Registro_M_14(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_14(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_14_2_rt_2405
    );
  Registro_inst_Registro_M_15_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_2_CLK,
      I => Registro_inst_Registro_M_14_2_rt_2405,
      O => Registro_inst_Registro_M_15(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_1_IN,
      O => Registro_inst_Registro_M_14(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_14(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_14_1_rt_2425
    );
  Registro_inst_Registro_M_15_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_1_CLK,
      I => Registro_inst_Registro_M_14_1_rt_2425,
      O => Registro_inst_Registro_M_15(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_14_0_IN,
      O => Registro_inst_Registro_M_14(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_14_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_14(0),
      ADR3 => '1',
      O => Registro_inst_Registro_M_14_0_rt_2420
    );
  Registro_inst_Registro_M_15_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_0_CLK,
      I => Registro_inst_Registro_M_14_0_rt_2420,
      O => Registro_inst_Registro_M_15(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_3_IN,
      O => Registro_inst_Registro_M_24(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_2_IN,
      O => Registro_inst_Registro_M_24(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_1_IN,
      O => Registro_inst_Registro_M_24(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_24_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_24_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_24_0_IN,
      O => Registro_inst_Registro_M_24(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_7_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_7_IN,
      O => Registro_inst_Registro_M_7(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux10_9 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"FFCCB8B83300B8B8"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR1 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_6(4),
      ADR5 => Registro_inst_Registro_M_7(4),
      ADR0 => Registro_inst_Registro_M_5_4_0,
      ADR2 => Registro_inst_Registro_M_4(4),
      O => Registro_inst_mux10_9_3425
    );
  Registro_inst_Registro_M_7_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_6_IN,
      O => Registro_inst_Registro_M_7(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux11_9 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"FBF8CBC83B380B08"
    )
    port map (
      ADR2 => Control_inst_Addr(1),
      ADR1 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_6(5),
      ADR5 => Registro_inst_Registro_M_7(5),
      ADR0 => Registro_inst_Registro_M_5_5_0,
      ADR3 => Registro_inst_Registro_M_4(5),
      O => Registro_inst_mux11_9_3445
    );
  Registro_inst_Registro_M_7_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_5_IN,
      O => Registro_inst_Registro_M_7(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux13_9 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"FF55AA00E4E4E4E4"
    )
    port map (
      ADR0 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_6(7),
      ADR3 => Registro_inst_Registro_M_7(7),
      ADR4 => Registro_inst_Registro_M_5_7_0,
      ADR1 => Registro_inst_Registro_M_4(7),
      O => Registro_inst_mux13_9_3485
    );
  Registro_inst_Registro_M_7_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_4_IN,
      O => Registro_inst_Registro_M_7(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux12_9 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"FA50EEEEFA504444"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_6(6),
      ADR3 => Registro_inst_Registro_M_7(6),
      ADR5 => Registro_inst_Registro_M_5_6_0,
      ADR1 => Registro_inst_Registro_M_4(6),
      O => Registro_inst_mux12_9_3465
    );
  Registro_inst_Registro_M_25_7_Registro_inst_Registro_M_25_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(7),
      O => Registro_inst_Registro_M_26_7_0
    );
  Registro_inst_Registro_M_25_7_Registro_inst_Registro_M_25_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(6),
      O => Registro_inst_Registro_M_26_6_0
    );
  Registro_inst_Registro_M_25_7_Registro_inst_Registro_M_25_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(5),
      O => Registro_inst_Registro_M_26_5_0
    );
  Registro_inst_Registro_M_25_7_Registro_inst_Registro_M_25_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(4),
      O => Registro_inst_Registro_M_26_4_0
    );
  Registro_inst_Registro_M_25_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_7_IN,
      O => Registro_inst_Registro_M_25(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(7),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_7_rt_2484
    );
  Registro_inst_Registro_M_26_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_7_CLK,
      I => Registro_inst_Registro_M_25_7_rt_2484,
      O => Registro_inst_Registro_M_26(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_6_IN,
      O => Registro_inst_Registro_M_25(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_6_rt_2478
    );
  Registro_inst_Registro_M_26_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_6_CLK,
      I => Registro_inst_Registro_M_25_6_rt_2478,
      O => Registro_inst_Registro_M_26(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_5_IN,
      O => Registro_inst_Registro_M_25(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_5_rt_2498
    );
  Registro_inst_Registro_M_26_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_5_CLK,
      I => Registro_inst_Registro_M_25_5_rt_2498,
      O => Registro_inst_Registro_M_26(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_4_IN,
      O => Registro_inst_Registro_M_25(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(4),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_4_rt_2493
    );
  Registro_inst_Registro_M_26_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_4_CLK,
      I => Registro_inst_Registro_M_25_4_rt_2493,
      O => Registro_inst_Registro_M_26(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_7_Registro_inst_Registro_M_9_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(7),
      O => Registro_inst_Registro_M_23_7_0
    );
  Registro_inst_Registro_M_9_7_Registro_inst_Registro_M_9_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(6),
      O => Registro_inst_Registro_M_23_6_0
    );
  Registro_inst_Registro_M_9_7_Registro_inst_Registro_M_9_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(5),
      O => Registro_inst_Registro_M_23_5_0
    );
  Registro_inst_Registro_M_9_7_Registro_inst_Registro_M_9_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(4),
      O => Registro_inst_Registro_M_23_4_0
    );
  Registro_inst_Registro_M_9_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_7_IN,
      O => Registro_inst_Registro_M_9(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_22_7_0,
      O => Registro_inst_Registro_M_22_7_rt_2518
    );
  Registro_inst_Registro_M_23_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_7_CLK,
      I => Registro_inst_Registro_M_22_7_rt_2518,
      O => Registro_inst_Registro_M_23(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_6_IN,
      O => Registro_inst_Registro_M_9(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Registro_inst_Registro_M_22_6_0,
      O => Registro_inst_Registro_M_22_6_rt_2511
    );
  Registro_inst_Registro_M_23_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_6_CLK,
      I => Registro_inst_Registro_M_22_6_rt_2511,
      O => Registro_inst_Registro_M_23(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_5_IN,
      O => Registro_inst_Registro_M_9(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Registro_inst_Registro_M_22_5_0,
      O => Registro_inst_Registro_M_22_5_rt_2507
    );
  Registro_inst_Registro_M_23_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_5_CLK,
      I => Registro_inst_Registro_M_22_5_rt_2507,
      O => Registro_inst_Registro_M_23(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_9_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_9_4_IN,
      O => Registro_inst_Registro_M_9(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_22_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_22_4_0,
      O => Registro_inst_Registro_M_22_4_rt_2502
    );
  Registro_inst_Registro_M_23_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_23_4_CLK,
      I => Registro_inst_Registro_M_22_4_rt_2502,
      O => Registro_inst_Registro_M_23(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_7_Registro_inst_Registro_M_8_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(7),
      O => Registro_inst_Registro_M_22_7_0
    );
  Registro_inst_Registro_M_8_7_Registro_inst_Registro_M_8_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(6),
      O => Registro_inst_Registro_M_22_6_0
    );
  Registro_inst_Registro_M_8_7_Registro_inst_Registro_M_8_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(5),
      O => Registro_inst_Registro_M_22_5_0
    );
  Registro_inst_Registro_M_8_7_Registro_inst_Registro_M_8_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22(4),
      O => Registro_inst_Registro_M_22_4_0
    );
  Registro_inst_Registro_M_8_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_7_IN,
      O => Registro_inst_Registro_M_8(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_21_7_0,
      O => Registro_inst_Registro_M_21_7_rt_2541
    );
  Registro_inst_Registro_M_22_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_7_CLK,
      I => Registro_inst_Registro_M_21_7_rt_2541,
      O => Registro_inst_Registro_M_22(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_6_IN,
      O => Registro_inst_Registro_M_8(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_21_6_0,
      O => Registro_inst_Registro_M_21_6_rt_2534
    );
  Registro_inst_Registro_M_22_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_6_CLK,
      I => Registro_inst_Registro_M_21_6_rt_2534,
      O => Registro_inst_Registro_M_22(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_5_IN,
      O => Registro_inst_Registro_M_8(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_21_5_0,
      O => Registro_inst_Registro_M_21_5_rt_2530
    );
  Registro_inst_Registro_M_22_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_5_CLK,
      I => Registro_inst_Registro_M_21_5_rt_2530,
      O => Registro_inst_Registro_M_22(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_4_IN,
      O => Registro_inst_Registro_M_8(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_21_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_21_4_0,
      O => Registro_inst_Registro_M_21_4_rt_2525
    );
  Registro_inst_Registro_M_22_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_22_4_CLK,
      I => Registro_inst_Registro_M_21_4_rt_2525,
      O => Registro_inst_Registro_M_22(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_3_Registro_inst_Registro_M_25_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(3),
      O => Registro_inst_Registro_M_26_3_0
    );
  Registro_inst_Registro_M_25_3_Registro_inst_Registro_M_25_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(2),
      O => Registro_inst_Registro_M_26_2_0
    );
  Registro_inst_Registro_M_25_3_Registro_inst_Registro_M_25_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(1),
      O => Registro_inst_Registro_M_26_1_0
    );
  Registro_inst_Registro_M_25_3_Registro_inst_Registro_M_25_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26(0),
      O => Registro_inst_Registro_M_26_0_0
    );
  Registro_inst_Registro_M_25_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_3_IN,
      O => Registro_inst_Registro_M_25(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_3_rt_2553
    );
  Registro_inst_Registro_M_26_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_3_CLK,
      I => Registro_inst_Registro_M_25_3_rt_2553,
      O => Registro_inst_Registro_M_26(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_2_IN,
      O => Registro_inst_Registro_M_25(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_2_rt_2547
    );
  Registro_inst_Registro_M_26_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_2_CLK,
      I => Registro_inst_Registro_M_25_2_rt_2547,
      O => Registro_inst_Registro_M_26(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_1_IN,
      O => Registro_inst_Registro_M_25(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_25(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_25_1_rt_2567
    );
  Registro_inst_Registro_M_26_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_1_CLK,
      I => Registro_inst_Registro_M_25_1_rt_2567,
      O => Registro_inst_Registro_M_26(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_25_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_25_0_IN,
      O => Registro_inst_Registro_M_25(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_25_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Registro_inst_Registro_M_25(0),
      ADR4 => '1',
      O => Registro_inst_Registro_M_25_0_rt_2562
    );
  Registro_inst_Registro_M_26_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_26_0_CLK,
      I => Registro_inst_Registro_M_25_0_rt_2562,
      O => Registro_inst_Registro_M_26(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y3"
    )
    port map (
      IA => Registro_inst_mux_4_2596,
      IB => Registro_inst_mux_3_2585,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_0_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"FCFCEE223030EE22"
    )
    port map (
      ADR4 => Control_inst_Addr(3),
      ADR1 => Control_inst_Addr(2),
      ADR2 => Registro_inst_mux_91_3543,
      ADR5 => Registro_inst_mux_10_3544,
      ADR3 => Registro_inst_mux_9_3545,
      ADR0 => Registro_inst_mux_81_3778,
      O => Registro_inst_mux_4_2596
    );
  Registro_inst_Reg_out_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_0_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_0_Q,
      O => Registro_inst_Reg_out(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux_6_f7_0,
      ADR0 => Registro_inst_addr_1_1_3777,
      O => Registro_inst_mux_3_2585
    );
  Registro_inst_mux_81 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"CCCCFF00AAAAF0F0"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_2(0),
      ADR1 => Registro_inst_Registro_M_3_0_0,
      ADR3 => Registro_inst_Registro_M_1_0_0,
      ADR2 => Registro_inst_Registro_M_0(0),
      O => Registro_inst_mux_81_3778
    );
  Registro_inst_addr_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      ADR5 => Control_inst_Addr(0),
      ADR4 => Control_inst_Addr(1),
      ADR2 => Registro_inst_Registro_M_25(0),
      ADR1 => Registro_inst_Registro_M_27_0_0,
      ADR3 => Registro_inst_Registro_M_26_0_0,
      ADR0 => Registro_inst_Registro_M_24(0),
      O => Registro_inst_addr_1_1_3777
    );
  Registro_inst_mux9_6_f7_Registro_inst_mux9_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux9_6_f7_2601,
      O => Registro_inst_mux9_6_f7_0
    );
  Registro_inst_mux9_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y4"
    )
    port map (
      IA => Registro_inst_mux9_8_2600,
      IB => Registro_inst_mux9_7_2608,
      O => Registro_inst_mux9_6_f7_2601,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux9_8 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"F0F0AAAACCCCFF00"
    )
    port map (
      ADR5 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_18(3),
      ADR2 => Registro_inst_Registro_M_19_3_0,
      ADR1 => Registro_inst_Registro_M_17(3),
      ADR3 => Registro_inst_Registro_M_16(3),
      O => Registro_inst_mux9_8_2600
    );
  Registro_inst_mux9_7 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"AAF0CCFFAAF0CC00"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_22(3),
      ADR0 => Registro_inst_Registro_M_23_3_0,
      ADR1 => Registro_inst_Registro_M_21(3),
      ADR5 => Registro_inst_Registro_M_20(3),
      O => Registro_inst_mux9_7_2608
    );
  Registro_inst_Registro_M_6_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_7_IN,
      O => Registro_inst_Registro_M_6(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux10_10 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"F5DDF588A0DDA088"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_14(4),
      ADR2 => Registro_inst_Registro_M_15(4),
      ADR1 => Registro_inst_Registro_M_13_4_0,
      ADR4 => Registro_inst_Registro_M_12(4),
      O => Registro_inst_mux10_10_3424
    );
  Registro_inst_Registro_M_6_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_6_IN,
      O => Registro_inst_Registro_M_6(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_5_IN,
      O => Registro_inst_Registro_M_6(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_6_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_6_4_IN,
      O => Registro_inst_Registro_M_6(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux11_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      IA => Registro_inst_mux11_4_2661,
      IB => Registro_inst_mux11_3_2650,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_5_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux11_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"FCEEFC2230EE3022"
    )
    port map (
      ADR1 => Control_inst_Addr(3),
      ADR3 => Control_inst_Addr(2),
      ADR4 => Registro_inst_mux11_91_3443,
      ADR5 => Registro_inst_mux11_10_3444,
      ADR2 => Registro_inst_mux11_9_3445,
      ADR0 => Registro_inst_mux11_81_3780,
      O => Registro_inst_mux11_4_2661
    );
  Registro_inst_Reg_out_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_5_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_5_Q,
      O => Registro_inst_Reg_out(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux11_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux11_6_f7_0,
      ADR0 => Registro_inst_addr_1_111_3779,
      O => Registro_inst_mux11_3_2650
    );
  Registro_inst_mux11_81 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"AAF0CCFFAAF0CC00"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_2(5),
      ADR0 => Registro_inst_Registro_M_3_5_0,
      ADR2 => Registro_inst_Registro_M_1_5_0,
      ADR5 => Registro_inst_Registro_M_0(5),
      O => Registro_inst_mux11_81_3780
    );
  Registro_inst_addr_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"CCF0FFAACCF000AA"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR2 => Registro_inst_Registro_M_25(5),
      ADR1 => Registro_inst_Registro_M_27(5),
      ADR5 => Registro_inst_Registro_M_26_5_0,
      ADR0 => Registro_inst_Registro_M_24(5),
      O => Registro_inst_addr_1_111_3779
    );
  Registro_inst_Registro_M_15_7_Registro_inst_Registro_M_15_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14_7_pack_4,
      O => Registro_inst_Registro_M_14(7)
    );
  Registro_inst_Registro_M_15_7_Registro_inst_Registro_M_15_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14_6_pack_3,
      O => Registro_inst_Registro_M_14(6)
    );
  Registro_inst_Registro_M_15_7_Registro_inst_Registro_M_15_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14_5_pack_2,
      O => Registro_inst_Registro_M_14(5)
    );
  Registro_inst_Registro_M_15_7_Registro_inst_Registro_M_15_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14_4_pack_1,
      O => Registro_inst_Registro_M_14(4)
    );
  Registro_inst_Registro_M_15_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_15_7_IN,
      O => Registro_inst_Registro_M_15(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_13_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_13_7_0,
      O => Registro_inst_Registro_M_13_7_rt_2683
    );
  Registro_inst_Registro_M_14_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_7_CLK,
      I => Registro_inst_Registro_M_13_7_rt_2683,
      O => Registro_inst_Registro_M_14_7_pack_4,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_15_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_15_6_IN,
      O => Registro_inst_Registro_M_15(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_13_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_13_6_0,
      O => Registro_inst_Registro_M_13_6_rt_2676
    );
  Registro_inst_Registro_M_14_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_6_CLK,
      I => Registro_inst_Registro_M_13_6_rt_2676,
      O => Registro_inst_Registro_M_14_6_pack_3,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_15_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_15_5_IN,
      O => Registro_inst_Registro_M_15(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_13_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_13_5_0,
      O => Registro_inst_Registro_M_13_5_rt_2672
    );
  Registro_inst_Registro_M_14_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_5_CLK,
      I => Registro_inst_Registro_M_13_5_rt_2672,
      O => Registro_inst_Registro_M_14_5_pack_2,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_15_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_15_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_15_4_IN,
      O => Registro_inst_Registro_M_15(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_13_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_13_4_0,
      O => Registro_inst_Registro_M_13_4_rt_2667
    );
  Registro_inst_Registro_M_14_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_14_4_CLK,
      I => Registro_inst_Registro_M_13_4_rt_2667,
      O => Registro_inst_Registro_M_14_4_pack_1,
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux11_10_Registro_inst_mux11_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux13_6_f7_2709,
      O => Registro_inst_mux13_6_f7_0
    );
  Registro_inst_mux13_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      IA => Registro_inst_mux13_8_2708,
      IB => Registro_inst_mux13_7_2700,
      O => Registro_inst_mux13_6_f7_2709,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux13_8 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"AAAAF0F0FF00CCCC"
    )
    port map (
      ADR5 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_18(7),
      ADR0 => Registro_inst_Registro_M_19_7_0,
      ADR3 => Registro_inst_Registro_M_17_7_0,
      ADR1 => Registro_inst_Registro_M_16(7),
      O => Registro_inst_mux13_8_2708
    );
  Registro_inst_mux13_7 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"AAF0CCFFAAF0CC00"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR3 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_22_7_0,
      ADR0 => Registro_inst_Registro_M_23_7_0,
      ADR1 => Registro_inst_Registro_M_21_7_0,
      ADR5 => Registro_inst_Registro_M_20(7),
      O => Registro_inst_mux13_7_2700
    );
  Registro_inst_mux11_10 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"E4FFE455E4AAE400"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR0 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_14(5),
      ADR2 => Registro_inst_Registro_M_15(5),
      ADR4 => Registro_inst_Registro_M_13_5_0,
      ADR5 => Registro_inst_Registro_M_12(5),
      O => Registro_inst_mux11_10_3444
    );
  Registro_inst_mux12_6_f7_Registro_inst_mux12_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux12_6_f7_2712,
      O => Registro_inst_mux12_6_f7_0
    );
  Registro_inst_mux12_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y9"
    )
    port map (
      IA => Registro_inst_mux12_8_2711,
      IB => Registro_inst_mux12_7_2719,
      O => Registro_inst_mux12_6_f7_2712,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux12_8 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"AFCFA0CFAFC0A0C0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_18(6),
      ADR0 => Registro_inst_Registro_M_19_6_0,
      ADR1 => Registro_inst_Registro_M_17_6_0,
      ADR5 => Registro_inst_Registro_M_16(6),
      O => Registro_inst_mux12_8_2711
    );
  Registro_inst_mux12_7 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"FFACF0AC0FAC00AC"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_22_6_0,
      ADR5 => Registro_inst_Registro_M_23_6_0,
      ADR0 => Registro_inst_Registro_M_21_6_0,
      ADR1 => Registro_inst_Registro_M_20(6),
      O => Registro_inst_mux12_7_2719
    );
  Registro_inst_mux11_6_f7_Registro_inst_mux11_6_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_mux11_6_f7_2728,
      O => Registro_inst_mux11_6_f7_0
    );
  Registro_inst_mux11_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y10"
    )
    port map (
      IA => Registro_inst_mux11_8_2727,
      IB => Registro_inst_mux11_7_2735,
      O => Registro_inst_mux11_6_f7_2728,
      SEL => Control_inst_Addr(2)
    );
  Registro_inst_mux11_8 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"FAFC0AFCFA0C0A0C"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_18(5),
      ADR4 => Registro_inst_Registro_M_19_5_0,
      ADR5 => Registro_inst_Registro_M_17_5_0,
      ADR1 => Registro_inst_Registro_M_16(5),
      O => Registro_inst_mux11_8_2727
    );
  Registro_inst_mux11_7 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"FFCAF0CA0FCA00CA"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_22_5_0,
      ADR5 => Registro_inst_Registro_M_23_5_0,
      ADR1 => Registro_inst_Registro_M_21_5_0,
      ADR0 => Registro_inst_Registro_M_20(5),
      O => Registro_inst_mux11_7_2735
    );
  Registro_inst_Registro_M_10_3_Registro_inst_Registro_M_10_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_27(3),
      O => Registro_inst_Registro_M_27_3_0
    );
  Registro_inst_Registro_M_10_3_Registro_inst_Registro_M_10_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_27(2),
      O => Registro_inst_Registro_M_27_2_0
    );
  Registro_inst_Registro_M_10_3_Registro_inst_Registro_M_10_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_27(1),
      O => Registro_inst_Registro_M_27_1_0
    );
  Registro_inst_Registro_M_10_3_Registro_inst_Registro_M_10_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_27(0),
      O => Registro_inst_Registro_M_27_0_0
    );
  Registro_inst_Registro_M_10_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_3_IN,
      O => Registro_inst_Registro_M_10(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_26_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_26_3_0,
      O => Registro_inst_Registro_M_26_3_rt_2761
    );
  Registro_inst_Registro_M_27_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_3_CLK,
      I => Registro_inst_Registro_M_26_3_rt_2761,
      O => Registro_inst_Registro_M_27(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_2_IN,
      O => Registro_inst_Registro_M_10(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_26_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_26_2_0,
      O => Registro_inst_Registro_M_26_2_rt_2754
    );
  Registro_inst_Registro_M_27_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_2_CLK,
      I => Registro_inst_Registro_M_26_2_rt_2754,
      O => Registro_inst_Registro_M_27(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_1_IN,
      O => Registro_inst_Registro_M_10(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_26_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_26_1_0,
      O => Registro_inst_Registro_M_26_1_rt_2750
    );
  Registro_inst_Registro_M_27_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_1_CLK,
      I => Registro_inst_Registro_M_26_1_rt_2750,
      O => Registro_inst_Registro_M_27(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_10_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_10_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_10_0_IN,
      O => Registro_inst_Registro_M_10(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_26_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Registro_inst_Registro_M_26_0_0,
      O => Registro_inst_Registro_M_26_0_rt_2745
    );
  Registro_inst_Registro_M_27_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_27_0_CLK,
      I => Registro_inst_Registro_M_26_0_rt_2745,
      O => Registro_inst_Registro_M_27(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_3_Registro_inst_Registro_M_2_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(3),
      O => Registro_inst_Registro_M_3_3_0
    );
  Registro_inst_Registro_M_2_3_Registro_inst_Registro_M_2_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(2),
      O => Registro_inst_Registro_M_3_2_0
    );
  Registro_inst_Registro_M_2_3_Registro_inst_Registro_M_2_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(1),
      O => Registro_inst_Registro_M_3_1_0
    );
  Registro_inst_Registro_M_2_3_Registro_inst_Registro_M_2_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3(0),
      O => Registro_inst_Registro_M_3_0_0
    );
  Registro_inst_Registro_M_2_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_3_IN,
      O => Registro_inst_Registro_M_2(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_3_rt_2773
    );
  Registro_inst_Registro_M_3_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_3_CLK,
      I => Registro_inst_Registro_M_2_3_rt_2773,
      O => Registro_inst_Registro_M_3(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_2_IN,
      O => Registro_inst_Registro_M_2(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_2_rt_2767
    );
  Registro_inst_Registro_M_3_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_2_CLK,
      I => Registro_inst_Registro_M_2_2_rt_2767,
      O => Registro_inst_Registro_M_3(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_1_IN,
      O => Registro_inst_Registro_M_2(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_1_rt_2787
    );
  Registro_inst_Registro_M_3_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_1_CLK,
      I => Registro_inst_Registro_M_2_1_rt_2787,
      O => Registro_inst_Registro_M_3(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_2_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_2_0_IN,
      O => Registro_inst_Registro_M_2(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_2_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_2(0),
      ADR3 => '1',
      O => Registro_inst_Registro_M_2_0_rt_2782
    );
  Registro_inst_Registro_M_3_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_3_0_CLK,
      I => Registro_inst_Registro_M_2_0_rt_2782,
      O => Registro_inst_Registro_M_3(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_3_IN,
      O => Registro_inst_Registro_M_4(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_2_IN,
      O => Registro_inst_Registro_M_4(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_1_IN,
      O => Registro_inst_Registro_M_4(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_4_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_4_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_4_0_IN,
      O => Registro_inst_Registro_M_4(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_7_Registro_inst_Registro_M_0_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(7),
      O => Registro_inst_Registro_M_1_7_0
    );
  Registro_inst_Registro_M_0_7_Registro_inst_Registro_M_0_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(6),
      O => Registro_inst_Registro_M_1_6_0
    );
  Registro_inst_Registro_M_0_7_Registro_inst_Registro_M_0_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(5),
      O => Registro_inst_Registro_M_1_5_0
    );
  Registro_inst_Registro_M_0_7_Registro_inst_Registro_M_0_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1(4),
      O => Registro_inst_Registro_M_1_4_0
    );
  Registro_inst_Registro_M_0_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_7_IN,
      O => Registro_inst_Registro_M_0(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(7),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_7_rt_2807
    );
  Registro_inst_Registro_M_1_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_7_CLK,
      I => Registro_inst_Registro_M_0_7_rt_2807,
      O => Registro_inst_Registro_M_1(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_6_IN,
      O => Registro_inst_Registro_M_0(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_6_rt_2801
    );
  Registro_inst_Registro_M_1_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_6_CLK,
      I => Registro_inst_Registro_M_0_6_rt_2801,
      O => Registro_inst_Registro_M_1(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_5_IN,
      O => Registro_inst_Registro_M_0(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_0(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_0_5_rt_2821
    );
  Registro_inst_Registro_M_1_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_5_CLK,
      I => Registro_inst_Registro_M_0_5_rt_2821,
      O => Registro_inst_Registro_M_1(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_0_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_0_4_IN,
      O => Registro_inst_Registro_M_0(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_0_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Registro_inst_Registro_M_0(4),
      ADR4 => '1',
      O => Registro_inst_Registro_M_0_4_rt_2816
    );
  Registro_inst_Registro_M_1_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y5",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_1_4_CLK,
      I => Registro_inst_Registro_M_0_4_rt_2816,
      O => Registro_inst_Registro_M_1(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_7_Registro_inst_Registro_M_12_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(7),
      O => Registro_inst_Registro_M_13_7_0
    );
  Registro_inst_Registro_M_12_7_Registro_inst_Registro_M_12_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(6),
      O => Registro_inst_Registro_M_13_6_0
    );
  Registro_inst_Registro_M_12_7_Registro_inst_Registro_M_12_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(5),
      O => Registro_inst_Registro_M_13_5_0
    );
  Registro_inst_Registro_M_12_7_Registro_inst_Registro_M_12_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(4),
      O => Registro_inst_Registro_M_13_4_0
    );
  Registro_inst_Registro_M_12_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_7_IN,
      O => Registro_inst_Registro_M_12(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Registro_inst_Registro_M_12(7),
      ADR4 => '1',
      O => Registro_inst_Registro_M_12_7_rt_2830
    );
  Registro_inst_Registro_M_13_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_7_CLK,
      I => Registro_inst_Registro_M_12_7_rt_2830,
      O => Registro_inst_Registro_M_13(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_6_IN,
      O => Registro_inst_Registro_M_12(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_12(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_12_6_rt_2824
    );
  Registro_inst_Registro_M_13_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_6_CLK,
      I => Registro_inst_Registro_M_12_6_rt_2824,
      O => Registro_inst_Registro_M_13(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_5_IN,
      O => Registro_inst_Registro_M_12(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_12(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_12_5_rt_2844
    );
  Registro_inst_Registro_M_13_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_5_CLK,
      I => Registro_inst_Registro_M_12_5_rt_2844,
      O => Registro_inst_Registro_M_13(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_12_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_12_4_IN,
      O => Registro_inst_Registro_M_12(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_12_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_12(4),
      ADR3 => '1',
      O => Registro_inst_Registro_M_12_4_rt_2839
    );
  Registro_inst_Registro_M_13_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_13_4_CLK,
      I => Registro_inst_Registro_M_12_4_rt_2839,
      O => Registro_inst_Registro_M_13(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_7_Registro_inst_Registro_M_16_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(7),
      O => Registro_inst_Registro_M_17_7_0
    );
  Registro_inst_Registro_M_16_7_Registro_inst_Registro_M_16_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(6),
      O => Registro_inst_Registro_M_17_6_0
    );
  Registro_inst_Registro_M_16_7_Registro_inst_Registro_M_16_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(5),
      O => Registro_inst_Registro_M_17_5_0
    );
  Registro_inst_Registro_M_16_7_Registro_inst_Registro_M_16_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(4),
      O => Registro_inst_Registro_M_17_4_0
    );
  Registro_inst_Registro_M_16_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_7_IN,
      O => Registro_inst_Registro_M_16(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_16(7),
      ADR3 => '1',
      O => Registro_inst_Registro_M_16_7_rt_2853
    );
  Registro_inst_Registro_M_17_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_7_CLK,
      I => Registro_inst_Registro_M_16_7_rt_2853,
      O => Registro_inst_Registro_M_17(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_6_IN,
      O => Registro_inst_Registro_M_16(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_16(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_16_6_rt_2847
    );
  Registro_inst_Registro_M_17_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_6_CLK,
      I => Registro_inst_Registro_M_16_6_rt_2847,
      O => Registro_inst_Registro_M_17(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_5_IN,
      O => Registro_inst_Registro_M_16(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_16(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_16_5_rt_2867
    );
  Registro_inst_Registro_M_17_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_5_CLK,
      I => Registro_inst_Registro_M_16_5_rt_2867,
      O => Registro_inst_Registro_M_17(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_16_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_16_4_IN,
      O => Registro_inst_Registro_M_16(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_16_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_16(4),
      ADR3 => '1',
      O => Registro_inst_Registro_M_16_4_rt_2862
    );
  Registro_inst_Registro_M_17_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_17_4_CLK,
      I => Registro_inst_Registro_M_16_4_rt_2862,
      O => Registro_inst_Registro_M_17(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_7_Registro_inst_Registro_M_20_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(7),
      O => Registro_inst_Registro_M_21_7_0
    );
  Registro_inst_Registro_M_20_7_Registro_inst_Registro_M_20_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(6),
      O => Registro_inst_Registro_M_21_6_0
    );
  Registro_inst_Registro_M_20_7_Registro_inst_Registro_M_20_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(5),
      O => Registro_inst_Registro_M_21_5_0
    );
  Registro_inst_Registro_M_20_7_Registro_inst_Registro_M_20_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(4),
      O => Registro_inst_Registro_M_21_4_0
    );
  Registro_inst_Registro_M_20_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_7_IN,
      O => Registro_inst_Registro_M_20(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_20(7),
      ADR3 => '1',
      O => Registro_inst_Registro_M_20_7_rt_2876
    );
  Registro_inst_Registro_M_21_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_7_CLK,
      I => Registro_inst_Registro_M_20_7_rt_2876,
      O => Registro_inst_Registro_M_21(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_6_IN,
      O => Registro_inst_Registro_M_20(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_20(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_20_6_rt_2870
    );
  Registro_inst_Registro_M_21_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_6_CLK,
      I => Registro_inst_Registro_M_20_6_rt_2870,
      O => Registro_inst_Registro_M_21(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_5_IN,
      O => Registro_inst_Registro_M_20(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_20(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_20_5_rt_2890
    );
  Registro_inst_Registro_M_21_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_5_CLK,
      I => Registro_inst_Registro_M_20_5_rt_2890,
      O => Registro_inst_Registro_M_21(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_20_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_20_4_IN,
      O => Registro_inst_Registro_M_20(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_20_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_20(4),
      ADR3 => '1',
      O => Registro_inst_Registro_M_20_4_rt_2885
    );
  Registro_inst_Registro_M_21_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_21_4_CLK,
      I => Registro_inst_Registro_M_20_4_rt_2885,
      O => Registro_inst_Registro_M_21(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_7_Registro_inst_Registro_M_18_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(7),
      O => Registro_inst_Registro_M_19_7_0
    );
  Registro_inst_Registro_M_18_7_Registro_inst_Registro_M_18_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(6),
      O => Registro_inst_Registro_M_19_6_0
    );
  Registro_inst_Registro_M_18_7_Registro_inst_Registro_M_18_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(5),
      O => Registro_inst_Registro_M_19_5_0
    );
  Registro_inst_Registro_M_18_7_Registro_inst_Registro_M_18_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(4),
      O => Registro_inst_Registro_M_19_4_0
    );
  Registro_inst_Registro_M_18_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_7_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_7_IN,
      O => Registro_inst_Registro_M_18(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(7),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_7_rt_2899
    );
  Registro_inst_Registro_M_19_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_7_CLK,
      I => Registro_inst_Registro_M_18_7_rt_2899,
      O => Registro_inst_Registro_M_19(7),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_6_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_6_IN,
      O => Registro_inst_Registro_M_18(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(6),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_6_rt_2893
    );
  Registro_inst_Registro_M_19_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_6_CLK,
      I => Registro_inst_Registro_M_18_6_rt_2893,
      O => Registro_inst_Registro_M_19(6),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_5_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_5_IN,
      O => Registro_inst_Registro_M_18(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(5),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_5_rt_2913
    );
  Registro_inst_Registro_M_19_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_5_CLK,
      I => Registro_inst_Registro_M_18_5_rt_2913,
      O => Registro_inst_Registro_M_19(5),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_18_4_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_18_4_IN,
      O => Registro_inst_Registro_M_18(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_18_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_18(4),
      ADR3 => '1',
      O => Registro_inst_Registro_M_18_4_rt_2908
    );
  Registro_inst_Registro_M_19_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_19_4_CLK,
      I => Registro_inst_Registro_M_18_4_rt_2908,
      O => Registro_inst_Registro_M_19(4),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_3_Registro_inst_Registro_M_8_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(3),
      O => Registro_inst_Registro_M_9_3_0
    );
  Registro_inst_Registro_M_8_3_Registro_inst_Registro_M_8_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(2),
      O => Registro_inst_Registro_M_9_2_0
    );
  Registro_inst_Registro_M_8_3_Registro_inst_Registro_M_8_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(1),
      O => Registro_inst_Registro_M_9_1_0
    );
  Registro_inst_Registro_M_8_3_Registro_inst_Registro_M_8_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(0),
      O => Registro_inst_Registro_M_9_0_0
    );
  Registro_inst_Registro_M_8_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_3_IN,
      O => Registro_inst_Registro_M_8(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_8(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_8_3_rt_2922
    );
  Registro_inst_Registro_M_9_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_3_CLK,
      I => Registro_inst_Registro_M_8_3_rt_2922,
      O => Registro_inst_Registro_M_9(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_2_IN,
      O => Registro_inst_Registro_M_8(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_8(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_8_2_rt_2916
    );
  Registro_inst_Registro_M_9_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_2_CLK,
      I => Registro_inst_Registro_M_8_2_rt_2916,
      O => Registro_inst_Registro_M_9(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_1_IN,
      O => Registro_inst_Registro_M_8(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_8(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_8_1_rt_2936
    );
  Registro_inst_Registro_M_9_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_1_CLK,
      I => Registro_inst_Registro_M_8_1_rt_2936,
      O => Registro_inst_Registro_M_9(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_8_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_8_0_IN,
      O => Registro_inst_Registro_M_8(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_8_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_8(0),
      ADR3 => '1',
      O => Registro_inst_Registro_M_8_0_rt_2931
    );
  Registro_inst_Registro_M_9_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_9_0_CLK,
      I => Registro_inst_Registro_M_8_0_rt_2931,
      O => Registro_inst_Registro_M_9(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux9_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y3"
    )
    port map (
      IA => Registro_inst_mux9_4_2965,
      IB => Registro_inst_mux9_3_2954,
      O => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_3_Q,
      SEL => Control_inst_Addr_4_0
    );
  Registro_inst_mux9_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"F0FFCCAAF000CCAA"
    )
    port map (
      ADR4 => Control_inst_Addr(3),
      ADR3 => Control_inst_Addr(2),
      ADR5 => Registro_inst_mux9_91_3403,
      ADR2 => Registro_inst_mux9_10_3404,
      ADR1 => Registro_inst_mux9_9_3405,
      ADR0 => Registro_inst_mux9_81_3782,
      O => Registro_inst_mux9_4_2965
    );
  Registro_inst_Reg_out_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => '0'
    )
    port map (
      CE => Control_inst_CE_ROM_3099,
      CLK => NlwBufferSignal_Registro_inst_Reg_out_3_CLK,
      I => Registro_inst_addr_4_X_9_o_wide_mux_28_OUT_3_Q,
      O => Registro_inst_Reg_out(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux9_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Control_inst_Addr(3),
      ADR2 => Registro_inst_mux9_6_f7_0,
      ADR0 => Registro_inst_addr_1_19,
      O => Registro_inst_mux9_3_2954
    );
  Registro_inst_mux9_81 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"AACCFFF0AACC00F0"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR4 => Control_inst_Addr(0),
      ADR5 => Registro_inst_Registro_M_2(3),
      ADR0 => Registro_inst_Registro_M_3_3_0,
      ADR1 => Registro_inst_Registro_M_1_3_0,
      ADR2 => Registro_inst_Registro_M_0(3),
      O => Registro_inst_mux9_81_3782
    );
  Registro_inst_addr_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"F0CCFFAAF0CC00AA"
    )
    port map (
      ADR4 => Control_inst_Addr(0),
      ADR3 => Control_inst_Addr(1),
      ADR1 => Registro_inst_Registro_M_25(3),
      ADR2 => Registro_inst_Registro_M_27_3_0,
      ADR5 => Registro_inst_Registro_M_26_3_0,
      ADR0 => Registro_inst_Registro_M_24(3),
      O => Registro_inst_addr_1_19
    );
  Registro_inst_mux_9 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y4",
      INIT => X"CCCCFF00F0F0AAAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR2 => Registro_inst_Registro_M_6_0_0,
      ADR1 => Registro_inst_Registro_M_7(0),
      ADR3 => Registro_inst_Registro_M_5(0),
      ADR0 => Registro_inst_Registro_M_4(0),
      O => Registro_inst_mux_9_3545
    );
  Registro_inst_mux9_9 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y4",
      INIT => X"FF33CC00B8B8B8B8"
    )
    port map (
      ADR1 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_6_3_0,
      ADR3 => Registro_inst_Registro_M_7(3),
      ADR4 => Registro_inst_Registro_M_5(3),
      ADR2 => Registro_inst_Registro_M_4(3),
      O => Registro_inst_mux9_9_3405
    );
  Registro_inst_Registro_M_7_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_3_IN,
      O => Registro_inst_Registro_M_7(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux9_91 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"CFFAC0FACF0AC00A"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR4 => Registro_inst_Registro_M_10(3),
      ADR1 => Registro_inst_Registro_M_11_3_0,
      ADR5 => Registro_inst_Registro_M_9_3_0,
      ADR0 => Registro_inst_Registro_M_8(3),
      O => Registro_inst_mux9_91_3403
    );
  Registro_inst_Registro_M_7_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_2_IN,
      O => Registro_inst_Registro_M_7(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux8_91 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"FAFC0AFCFA0C0A0C"
    )
    port map (
      ADR3 => Control_inst_Addr(1),
      ADR2 => Control_inst_Addr(0),
      ADR0 => Registro_inst_Registro_M_10(2),
      ADR4 => Registro_inst_Registro_M_11_2_0,
      ADR5 => Registro_inst_Registro_M_9_2_0,
      ADR1 => Registro_inst_Registro_M_8(2),
      O => Registro_inst_mux8_91_3383
    );
  Registro_inst_Registro_M_7_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_1_IN,
      O => Registro_inst_Registro_M_7(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux7_91 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR1 => Registro_inst_Registro_M_10(1),
      ADR2 => Registro_inst_Registro_M_11_1_0,
      ADR3 => Registro_inst_Registro_M_9_1_0,
      ADR0 => Registro_inst_Registro_M_8(1),
      O => Registro_inst_mux7_91_3363
    );
  Registro_inst_Registro_M_7_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_7_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_7_0_IN,
      O => Registro_inst_Registro_M_7(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_mux8_9 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR4 => Control_inst_Addr(1),
      ADR5 => Control_inst_Addr(0),
      ADR3 => Registro_inst_Registro_M_6_2_0,
      ADR2 => Registro_inst_Registro_M_7(2),
      ADR1 => Registro_inst_Registro_M_5(2),
      ADR0 => Registro_inst_Registro_M_4(2),
      O => Registro_inst_mux8_9_3385
    );
  Registro_inst_Registro_M_5_3_Registro_inst_Registro_M_5_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(3),
      O => Registro_inst_Registro_M_6_3_0
    );
  Registro_inst_Registro_M_5_3_Registro_inst_Registro_M_5_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(2),
      O => Registro_inst_Registro_M_6_2_0
    );
  Registro_inst_Registro_M_5_3_Registro_inst_Registro_M_5_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(1),
      O => Registro_inst_Registro_M_6_1_0
    );
  Registro_inst_Registro_M_5_3_Registro_inst_Registro_M_5_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(0),
      O => Registro_inst_Registro_M_6_0_0
    );
  Registro_inst_Registro_M_5_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_3_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_5_3_IN,
      O => Registro_inst_Registro_M_5(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_5(3),
      ADR3 => '1',
      O => Registro_inst_Registro_M_5_3_rt_3029
    );
  Registro_inst_Registro_M_6_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_3_CLK,
      I => Registro_inst_Registro_M_5_3_rt_3029,
      O => Registro_inst_Registro_M_6(3),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_2_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_5_2_IN,
      O => Registro_inst_Registro_M_5(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_5(2),
      ADR3 => '1',
      O => Registro_inst_Registro_M_5_2_rt_3023
    );
  Registro_inst_Registro_M_6_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_2_CLK,
      I => Registro_inst_Registro_M_5_2_rt_3023,
      O => Registro_inst_Registro_M_6(2),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_1_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_5_1_IN,
      O => Registro_inst_Registro_M_5(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Registro_inst_Registro_M_5(1),
      ADR3 => '1',
      O => Registro_inst_Registro_M_5_1_rt_3043
    );
  Registro_inst_Registro_M_6_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_1_CLK,
      I => Registro_inst_Registro_M_5_1_rt_3043,
      O => Registro_inst_Registro_M_6(1),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_5_0_CLK,
      I => NlwBufferSignal_Registro_inst_Registro_M_5_0_IN,
      O => Registro_inst_Registro_M_5(0),
      RST => rst_valido,
      SET => GND
    );
  Registro_inst_Registro_M_5_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Registro_inst_Registro_M_5(0),
      ADR4 => '1',
      O => Registro_inst_Registro_M_5_0_rt_3038
    );
  Registro_inst_Registro_M_6_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => '0'
    )
    port map (
      CE => datain_valid_IBUF_0,
      CLK => NlwBufferSignal_Registro_inst_Registro_M_6_0_CLK,
      I => Registro_inst_Registro_M_5_0_rt_3038,
      O => Registro_inst_Registro_M_6(0),
      RST => rst_valido,
      SET => GND
    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr_4_0,
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_9_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(3),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_8_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(2),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_7_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(1),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_6_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(0),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRAWRADDR_5_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr_4_0,
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_9_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(3),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_8_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(2),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_7_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(1),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_6_Q

    );
  NlwBufferBlock_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr(0),
      O => 
NlwBufferSignal_ROM_inst_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_WIDE_PRIM9_ram_ADDRBRDADDR_5_Q

    );
  NlwBufferBlock_dataout_valid_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_retardo(2),
      O => NlwBufferSignal_dataout_valid_OBUF_I
    );
  NlwBufferBlock_dataout_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_0_OBUF_3138,
      O => NlwBufferSignal_dataout_0_OBUF_I
    );
  NlwBufferBlock_dataout_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_1_OBUF_3139,
      O => NlwBufferSignal_dataout_1_OBUF_I
    );
  NlwBufferBlock_dataout_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_2_OBUF_3140,
      O => NlwBufferSignal_dataout_2_OBUF_I
    );
  NlwBufferBlock_dataout_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_3_OBUF_3141,
      O => NlwBufferSignal_dataout_3_OBUF_I
    );
  NlwBufferBlock_dataout_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_4_OBUF_3142,
      O => NlwBufferSignal_dataout_4_OBUF_I
    );
  NlwBufferBlock_dataout_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_5_OBUF_3143,
      O => NlwBufferSignal_dataout_5_OBUF_I
    );
  NlwBufferBlock_dataout_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_6_OBUF_3144,
      O => NlwBufferSignal_dataout_6_OBUF_I
    );
  NlwBufferBlock_dataout_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_7_OBUF_3145,
      O => NlwBufferSignal_dataout_7_OBUF_I
    );
  NlwBufferBlock_dataout_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_8_OBUF_3146,
      O => NlwBufferSignal_dataout_8_OBUF_I
    );
  NlwBufferBlock_dataout_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_9_OBUF_3147,
      O => NlwBufferSignal_dataout_9_OBUF_I
    );
  NlwBufferBlock_dataout_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_10_OBUF_3148,
      O => NlwBufferSignal_dataout_10_OBUF_I
    );
  NlwBufferBlock_dataout_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_11_OBUF_3149,
      O => NlwBufferSignal_dataout_11_OBUF_I
    );
  NlwBufferBlock_dataout_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_12_OBUF_3150,
      O => NlwBufferSignal_dataout_12_OBUF_I
    );
  NlwBufferBlock_dataout_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_13_OBUF_3151,
      O => NlwBufferSignal_dataout_13_OBUF_I
    );
  NlwBufferBlock_dataout_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_14_OBUF_3152,
      O => NlwBufferSignal_dataout_14_OBUF_I
    );
  NlwBufferBlock_dataout_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dataout_15_OBUF_3153,
      O => NlwBufferSignal_dataout_15_OBUF_I
    );
  NlwBufferBlock_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_DCM_gen_inst_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_gen_inst_clk0,
      O => NlwBufferSignal_DCM_gen_inst_clkout1_buf_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_14_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_14_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_14_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_14_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_15_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_14_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_13_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_12_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_20_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_20_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_20_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_20_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_19_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_19_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_19_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_18(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_19_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_15_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_14_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_13_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_12_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_12_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_10_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_13_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_12_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_11_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_10_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_9_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_8_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_15_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_14_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_13_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_12_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_12(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_13_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_12(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_13_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_12(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_13_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_12(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_13_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_12_IN
    );
  NlwBufferBlock_Registro_inst_Reg_out_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_10(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_11_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_11_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_10_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_9_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_8_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_8_IN
    );
  NlwBufferBlock_Registro_inst_Reg_out_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_11_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_10_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_9_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_8_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_12_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_15_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_14_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_13_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_12_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(15),
      O => NlwBufferSignal_Registro_inst_Registro_M_24_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(14),
      O => NlwBufferSignal_Registro_inst_Registro_M_24_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(13),
      O => NlwBufferSignal_Registro_inst_Registro_M_24_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23(12),
      O => NlwBufferSignal_Registro_inst_Registro_M_24_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_15_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_14_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_13_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_12_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22_15_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22_14_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22_13_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_22_12_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_11_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_10_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_9_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_8_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_11_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_10_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_9_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_8_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_15_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_14_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_13_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_12_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_11_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_10_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_9_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_8_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_15_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_15_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_15_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_14_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_14_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_14_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_13_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_13_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_13_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_12_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_12_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_12_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_12_CLK
    );
  NlwBufferBlock_Control_inst_CE_Mult_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_CE_Mult_CLK
    );
  NlwBufferBlock_Control_inst_estado_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_estado_FSM_FFd1_CLK
    );
  NlwBufferBlock_Control_inst_CE_Acum_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_CE_Acum_CLK
    );
  NlwBufferBlock_Control_inst_CE_ROM_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_CE_ROM_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_11_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_10_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_9_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_8_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_8_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(11),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(10),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(9),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(8),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_8_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_8_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_6_CLK
    );
  NlwBufferBlock_Control_inst_retardo_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_retardo_1_CLK
    );
  NlwBufferBlock_Control_inst_retardo_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_retardo_0_CLK
    );
  NlwBufferBlock_Control_inst_retardo_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_retardo_2_CLK
    );
  NlwBufferBlock_Control_inst_Addr_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_1_3_CLK
    );
  NlwBufferBlock_Control_inst_Addr_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_1_2_CLK
    );
  NlwBufferBlock_Control_inst_Addr_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_1_1_CLK
    );
  NlwBufferBlock_Control_inst_Addr_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_1_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(3),
      O => NlwBufferSignal_Registro_inst_Registro_M_18_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(2),
      O => NlwBufferSignal_Registro_inst_Registro_M_18_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(1),
      O => NlwBufferSignal_Registro_inst_Registro_M_18_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17(0),
      O => NlwBufferSignal_Registro_inst_Registro_M_18_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_11_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_11_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_11_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_10_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_10_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_10_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_9_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_9_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_8_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_8_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_8_IN
    );
  NlwBufferBlock_Control_inst_Addr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_3_CLK
    );
  NlwBufferBlock_Control_inst_Addr_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr_1_5(3),
      O => NlwBufferSignal_Control_inst_Addr_3_IN
    );
  NlwBufferBlock_Control_inst_Addr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_2_CLK
    );
  NlwBufferBlock_Control_inst_Addr_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr_1_5(2),
      O => NlwBufferSignal_Control_inst_Addr_2_IN
    );
  NlwBufferBlock_Control_inst_Addr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_1_CLK
    );
  NlwBufferBlock_Control_inst_Addr_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr_1_5(1),
      O => NlwBufferSignal_Control_inst_Addr_1_IN
    );
  NlwBufferBlock_Control_inst_Addr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_0_CLK
    );
  NlwBufferBlock_Control_inst_Addr_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Control_inst_Addr_1_5(0),
      O => NlwBufferSignal_Control_inst_Addr_0_IN
    );
  NlwBufferBlock_Control_inst_Addr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_4_CLK
    );
  NlwBufferBlock_Control_inst_Addr_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_Addr_1_4_CLK
    );
  NlwBufferBlock_Control_inst_estado_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Control_inst_estado_FSM_FFd2_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_9_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_4_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(7),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(6),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(5),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9(4),
      O => NlwBufferSignal_Registro_inst_Registro_M_10_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(3),
      O => NlwBufferSignal_Registro_inst_Registro_M_17_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(2),
      O => NlwBufferSignal_Registro_inst_Registro_M_17_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(1),
      O => NlwBufferSignal_Registro_inst_Registro_M_17_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_16(0),
      O => NlwBufferSignal_Registro_inst_Registro_M_17_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(3),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(2),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(1),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_20(0),
      O => NlwBufferSignal_Registro_inst_Registro_M_21_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(3),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(2),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(1),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_21(0),
      O => NlwBufferSignal_Registro_inst_Registro_M_22_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_26_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_4_IN
    );
  NlwBufferBlock_Registro_inst_Reg_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_1_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_4_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_3_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_2_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_1_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_0_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_11_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_11_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_13_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_24_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_23_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_24_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(7),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(6),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(5),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6(4),
      O => NlwBufferSignal_Registro_inst_Registro_M_7_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(7),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(6),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(5),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(4),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(7),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(6),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(5),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_8(4),
      O => NlwBufferSignal_Registro_inst_Registro_M_9_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_23_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_23_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(7),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(6),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(5),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(4),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_22_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_22_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(3),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(2),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(1),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_25_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_25_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_24(0),
      O => NlwBufferSignal_Registro_inst_Registro_M_25_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_26_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_26_0_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_5_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_4_IN
    );
  NlwBufferBlock_Registro_inst_Reg_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14(7),
      O => NlwBufferSignal_Registro_inst_Registro_M_15_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14(6),
      O => NlwBufferSignal_Registro_inst_Registro_M_15_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14(5),
      O => NlwBufferSignal_Registro_inst_Registro_M_15_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_15_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_15_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_14(4),
      O => NlwBufferSignal_Registro_inst_Registro_M_15_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_14_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_14_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_10_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_9_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_10_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_27_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_27_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_2_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_1_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_2_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_3_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_3_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_4_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_3_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_4_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_7_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_6_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_5_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_0_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_4_IBUF_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_0_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_1_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_12_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_11_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_12_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_13_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_13_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(7),
      O => NlwBufferSignal_Registro_inst_Registro_M_16_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(6),
      O => NlwBufferSignal_Registro_inst_Registro_M_16_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(5),
      O => NlwBufferSignal_Registro_inst_Registro_M_16_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_16_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_16_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_15(4),
      O => NlwBufferSignal_Registro_inst_Registro_M_16_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_17_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_17_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_20_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_19_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_20_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_21_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_21_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_7_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_7_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_7_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_6_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_6_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_6_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_5_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_5_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_5_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_18_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_17_4_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_18_4_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_19_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_19_4_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(3),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(2),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(1),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_8_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_8_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_7(0),
      O => NlwBufferSignal_Registro_inst_Registro_M_8_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_9_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_9_0_CLK
    );
  NlwBufferBlock_Registro_inst_Reg_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Reg_out_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6_3_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6_2_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6_1_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_7_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_6_0_0,
      O => NlwBufferSignal_Registro_inst_Registro_M_7_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_4(3),
      O => NlwBufferSignal_Registro_inst_Registro_M_5_3_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_3_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_4(2),
      O => NlwBufferSignal_Registro_inst_Registro_M_5_2_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_2_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_4(1),
      O => NlwBufferSignal_Registro_inst_Registro_M_5_1_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_1_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_5_0_CLK
    );
  NlwBufferBlock_Registro_inst_Registro_M_5_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Registro_inst_Registro_M_4(0),
      O => NlwBufferSignal_Registro_inst_Registro_M_5_0_IN
    );
  NlwBufferBlock_Registro_inst_Registro_M_6_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_DCM,
      O => NlwBufferSignal_Registro_inst_Registro_M_6_0_CLK
    );
  NlwBlock_Filtro_FIR_MAC_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Filtro_FIR_MAC_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

