--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: BLOQUE_timesim.vhd
-- /___/   /\     Timestamp: Thu Dec 06 14:30:41 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf BLOQUE.pcf -rpw 100 -tpw 0 -ar Structure -tm BLOQUE -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim BLOQUE.ncd BLOQUE_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.19 2011-06-20)
-- Input file	: BLOQUE.ncd
-- Output file	: C:\Users\manuel\Desktop\final\Filtro_FIR_Sistologico\netgen\par\BLOQUE_timesim.vhd
-- # of Entities	: 1
-- Design Name	: BLOQUE
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

entity BLOQUE is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ce : in STD_LOGIC := 'X'; 
    clk_en : in STD_LOGIC := 'X'; 
    datain_valid_prop : in STD_LOGIC := 'X'; 
    dataout_valid_prop : out STD_LOGIC; 
    reg_datain_in : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    ROM_datain_in : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    sumando_in : in STD_LOGIC_VECTOR ( 36 downto 0 ); 
    reg_datain_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    sumando_out : out STD_LOGIC_VECTOR ( 36 downto 0 ) 
  );
end BLOQUE;

architecture Structure of BLOQUE is
  signal multiplicando_reg_D_1_9_0 : STD_LOGIC; 
  signal reg_datain_in_13_IBUF_0 : STD_LOGIC; 
  signal sumando_out_8_OBUF_894 : STD_LOGIC; 
  signal sumando_in_12_IBUF_0 : STD_LOGIC; 
  signal sumando_in_20_IBUF_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_10_0 : STD_LOGIC; 
  signal reg_datain_in_14_IBUF_0 : STD_LOGIC; 
  signal sumando_out_9_OBUF_899 : STD_LOGIC; 
  signal sumando_in_13_IBUF_0 : STD_LOGIC; 
  signal sumando_in_21_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal ce_IBUF_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_15_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_14_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_13_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_12_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_11_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_8_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_7_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_6_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_5_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_4_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_3_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_2_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_1_0 : STD_LOGIC; 
  signal multiplicando_reg_D_1_0_0 : STD_LOGIC; 
  signal ROM_datain_in_15_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_14_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_13_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_12_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_11_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_10_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_9_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_8_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_7_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_6_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_5_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_4_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_3_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_2_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_1_IBUF_0 : STD_LOGIC; 
  signal ROM_datain_in_0_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal reg_datain_in_15_IBUF_0 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal sumando_in_36_IBUF_0 : STD_LOGIC; 
  signal sumando_in_17_IBUF_0 : STD_LOGIC; 
  signal sumando_in_16_IBUF_0 : STD_LOGIC; 
  signal sumando_in_15_IBUF_0 : STD_LOGIC; 
  signal sumando_in_14_IBUF_0 : STD_LOGIC; 
  signal sumando_in_11_IBUF_0 : STD_LOGIC; 
  signal sumando_in_10_IBUF_0 : STD_LOGIC; 
  signal sumando_in_9_IBUF_0 : STD_LOGIC; 
  signal sumando_in_8_IBUF_0 : STD_LOGIC; 
  signal sumando_in_7_IBUF_0 : STD_LOGIC; 
  signal sumando_in_6_IBUF_0 : STD_LOGIC; 
  signal sumando_in_5_IBUF_0 : STD_LOGIC; 
  signal sumando_in_4_IBUF_0 : STD_LOGIC; 
  signal sumando_in_3_IBUF_0 : STD_LOGIC; 
  signal sumando_in_2_IBUF_0 : STD_LOGIC; 
  signal sumando_in_1_IBUF_0 : STD_LOGIC; 
  signal sumando_in_0_IBUF_0 : STD_LOGIC; 
  signal sumando_in_35_IBUF_0 : STD_LOGIC; 
  signal sumando_in_34_IBUF_0 : STD_LOGIC; 
  signal sumando_in_33_IBUF_0 : STD_LOGIC; 
  signal sumando_in_32_IBUF_0 : STD_LOGIC; 
  signal sumando_in_31_IBUF_0 : STD_LOGIC; 
  signal sumando_in_30_IBUF_0 : STD_LOGIC; 
  signal sumando_in_29_IBUF_0 : STD_LOGIC; 
  signal sumando_in_28_IBUF_0 : STD_LOGIC; 
  signal sumando_in_27_IBUF_0 : STD_LOGIC; 
  signal sumando_in_26_IBUF_0 : STD_LOGIC; 
  signal sumando_in_25_IBUF_0 : STD_LOGIC; 
  signal sumando_in_24_IBUF_0 : STD_LOGIC; 
  signal sumando_in_23_IBUF_0 : STD_LOGIC; 
  signal sumando_in_22_IBUF_0 : STD_LOGIC; 
  signal sumando_in_19_IBUF_0 : STD_LOGIC; 
  signal sumando_in_18_IBUF_0 : STD_LOGIC; 
  signal sumando_out_36_OBUF_1008 : STD_LOGIC; 
  signal sumando_out_35_OBUF_1009 : STD_LOGIC; 
  signal sumando_out_34_OBUF_1010 : STD_LOGIC; 
  signal sumando_out_33_OBUF_1011 : STD_LOGIC; 
  signal sumando_out_32_OBUF_1012 : STD_LOGIC; 
  signal sumando_out_31_OBUF_1013 : STD_LOGIC; 
  signal sumando_out_30_OBUF_1014 : STD_LOGIC; 
  signal sumando_out_29_OBUF_1015 : STD_LOGIC; 
  signal sumando_out_28_OBUF_1016 : STD_LOGIC; 
  signal sumando_out_27_OBUF_1017 : STD_LOGIC; 
  signal sumando_out_26_OBUF_1018 : STD_LOGIC; 
  signal sumando_out_25_OBUF_1019 : STD_LOGIC; 
  signal sumando_out_24_OBUF_1020 : STD_LOGIC; 
  signal sumando_out_23_OBUF_1021 : STD_LOGIC; 
  signal sumando_out_22_OBUF_1022 : STD_LOGIC; 
  signal sumando_out_21_OBUF_1023 : STD_LOGIC; 
  signal sumando_out_20_OBUF_1024 : STD_LOGIC; 
  signal sumando_out_19_OBUF_1025 : STD_LOGIC; 
  signal sumando_out_18_OBUF_1026 : STD_LOGIC; 
  signal sumando_out_17_OBUF_1027 : STD_LOGIC; 
  signal sumando_out_16_OBUF_1028 : STD_LOGIC; 
  signal sumando_out_15_OBUF_1029 : STD_LOGIC; 
  signal sumando_out_14_OBUF_1030 : STD_LOGIC; 
  signal sumando_out_13_OBUF_1031 : STD_LOGIC; 
  signal sumando_out_12_OBUF_1032 : STD_LOGIC; 
  signal sumando_out_11_OBUF_1033 : STD_LOGIC; 
  signal sumando_out_10_OBUF_1034 : STD_LOGIC; 
  signal sumando_out_7_OBUF_1035 : STD_LOGIC; 
  signal sumando_out_6_OBUF_1036 : STD_LOGIC; 
  signal sumando_out_5_OBUF_1037 : STD_LOGIC; 
  signal sumando_out_4_OBUF_1038 : STD_LOGIC; 
  signal sumando_out_3_OBUF_1039 : STD_LOGIC; 
  signal sumando_out_2_OBUF_1040 : STD_LOGIC; 
  signal sumando_out_1_OBUF_1041 : STD_LOGIC; 
  signal sumando_out_0_OBUF_1042 : STD_LOGIC; 
  signal clk_en_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_3_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_4_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_5_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_6_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_7_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_8_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_9_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_10_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_11_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_12_IBUF_0 : STD_LOGIC; 
  signal propagado_1055 : STD_LOGIC; 
  signal datain_valid_prop_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_0_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_1_IBUF_0 : STD_LOGIC; 
  signal reg_datain_in_2_IBUF_0 : STD_LOGIC; 
  signal Q_n0039_inv : STD_LOGIC; 
  signal reg_datain_in_13_IBUF_2 : STD_LOGIC; 
  signal sumando_in_12_IBUF_7 : STD_LOGIC; 
  signal sumando_in_20_IBUF_10 : STD_LOGIC; 
  signal reg_datain_in_14_IBUF_15 : STD_LOGIC; 
  signal sumando_in_13_IBUF_20 : STD_LOGIC; 
  signal sumando_in_21_IBUF_23 : STD_LOGIC; 
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
  signal reg_datain_in_15_IBUF_193 : STD_LOGIC; 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47 : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT : STD_LOGIC;
 
  signal Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT : STD_LOGIC;
 
  signal sumando_in_14_IBUF_360 : STD_LOGIC; 
  signal sumando_in_22_IBUF_363 : STD_LOGIC; 
  signal sumando_in_30_IBUF_366 : STD_LOGIC; 
  signal sumando_in_15_IBUF_371 : STD_LOGIC; 
  signal sumando_in_23_IBUF_374 : STD_LOGIC; 
  signal sumando_in_31_IBUF_377 : STD_LOGIC; 
  signal sumando_in_16_IBUF_384 : STD_LOGIC; 
  signal sumando_in_24_IBUF_387 : STD_LOGIC; 
  signal sumando_in_32_IBUF_390 : STD_LOGIC; 
  signal sumando_in_17_IBUF_397 : STD_LOGIC; 
  signal sumando_in_25_IBUF_400 : STD_LOGIC; 
  signal sumando_in_33_IBUF_403 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_412 : STD_LOGIC; 
  signal sumando_in_18_IBUF_415 : STD_LOGIC; 
  signal sumando_in_26_IBUF_418 : STD_LOGIC; 
  signal sumando_in_34_IBUF_421 : STD_LOGIC; 
  signal sumando_in_19_IBUF_428 : STD_LOGIC; 
  signal sumando_in_27_IBUF_431 : STD_LOGIC; 
  signal sumando_in_35_IBUF_434 : STD_LOGIC; 
  signal sumando_in_28_IBUF_443 : STD_LOGIC; 
  signal sumando_in_36_IBUF_446 : STD_LOGIC; 
  signal sumando_in_29_IBUF_455 : STD_LOGIC; 
  signal ROM_datain_in_0_IBUF_470 : STD_LOGIC; 
  signal ROM_datain_in_1_IBUF_479 : STD_LOGIC; 
  signal ROM_datain_in_2_IBUF_488 : STD_LOGIC; 
  signal ROM_datain_in_3_IBUF_495 : STD_LOGIC; 
  signal sumando_in_0_IBUF_500 : STD_LOGIC; 
  signal ROM_datain_in_4_IBUF_503 : STD_LOGIC; 
  signal sumando_in_1_IBUF_506 : STD_LOGIC; 
  signal ROM_datain_in_5_IBUF_509 : STD_LOGIC; 
  signal sumando_in_2_IBUF_512 : STD_LOGIC; 
  signal ROM_datain_in_6_IBUF_515 : STD_LOGIC; 
  signal sumando_in_3_IBUF_518 : STD_LOGIC; 
  signal ROM_datain_in_7_IBUF_521 : STD_LOGIC; 
  signal sumando_in_4_IBUF_524 : STD_LOGIC; 
  signal ROM_datain_in_8_IBUF_527 : STD_LOGIC; 
  signal sumando_in_5_IBUF_530 : STD_LOGIC; 
  signal ROM_datain_in_9_IBUF_533 : STD_LOGIC; 
  signal sumando_in_6_IBUF_536 : STD_LOGIC; 
  signal sumando_in_7_IBUF_539 : STD_LOGIC; 
  signal sumando_in_8_IBUF_542 : STD_LOGIC; 
  signal sumando_in_9_IBUF_545 : STD_LOGIC; 
  signal reg_datain_in_0_IBUF_550 : STD_LOGIC; 
  signal clk_en_IBUF_553 : STD_LOGIC; 
  signal reg_datain_in_1_IBUF_556 : STD_LOGIC; 
  signal ROM_datain_in_10_IBUF_559 : STD_LOGIC; 
  signal reg_datain_in_2_IBUF_564 : STD_LOGIC; 
  signal ROM_datain_in_11_IBUF_567 : STD_LOGIC; 
  signal reg_datain_in_3_IBUF_572 : STD_LOGIC; 
  signal ROM_datain_in_12_IBUF_577 : STD_LOGIC; 
  signal reg_datain_in_4_IBUF_582 : STD_LOGIC; 
  signal ROM_datain_in_13_IBUF_587 : STD_LOGIC; 
  signal reg_datain_in_5_IBUF_592 : STD_LOGIC; 
  signal ROM_datain_in_14_IBUF_597 : STD_LOGIC; 
  signal reg_datain_in_6_IBUF_602 : STD_LOGIC; 
  signal ROM_datain_in_15_IBUF_607 : STD_LOGIC; 
  signal reg_datain_in_7_IBUF_612 : STD_LOGIC; 
  signal rst_IBUF_619 : STD_LOGIC; 
  signal reg_datain_in_8_IBUF_622 : STD_LOGIC; 
  signal reg_datain_in_10_IBUF_625 : STD_LOGIC; 
  signal ce_IBUF_632 : STD_LOGIC; 
  signal reg_datain_in_9_IBUF_635 : STD_LOGIC; 
  signal reg_datain_in_11_IBUF_638 : STD_LOGIC; 
  signal datain_valid_prop_IBUF_643 : STD_LOGIC; 
  signal sumando_in_10_IBUF_646 : STD_LOGIC; 
  signal reg_datain_in_12_IBUF_651 : STD_LOGIC; 
  signal sumando_in_11_IBUF_656 : STD_LOGIC; 
  signal multiplicando_reg_D_0_6_rt_692 : STD_LOGIC; 
  signal multiplicando_reg_D_0_5_rt_687 : STD_LOGIC; 
  signal multiplicando_reg_D_0_4_rt_682 : STD_LOGIC; 
  signal multiplicando_reg_D_0_7_rt_676 : STD_LOGIC; 
  signal multiplicando_reg_D_0_10_rt_715 : STD_LOGIC; 
  signal multiplicando_reg_D_0_9_rt_710 : STD_LOGIC; 
  signal multiplicando_reg_D_0_8_rt_705 : STD_LOGIC; 
  signal multiplicando_reg_D_0_11_rt_699 : STD_LOGIC; 
  signal multiplicando_reg_D_0_2_rt_738 : STD_LOGIC; 
  signal multiplicando_reg_D_0_1_rt_733 : STD_LOGIC; 
  signal multiplicando_reg_D_0_0_rt_728 : STD_LOGIC; 
  signal multiplicando_reg_D_0_3_rt_722 : STD_LOGIC; 
  signal multiplicando_reg_D_0_14_rt_761 : STD_LOGIC; 
  signal multiplicando_reg_D_0_13_rt_756 : STD_LOGIC; 
  signal multiplicando_reg_D_0_12_rt_751 : STD_LOGIC; 
  signal multiplicando_reg_D_0_15_rt_745 : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_32_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_33_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_34_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_35_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_36_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_valid_prop_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_datain_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sumando_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_datainout_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_datainout_r_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_propagado_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_0_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_multiplicando_reg_D_1_12_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal multiplicacion : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal datainout_r : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal multiplicando_reg_D_0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal multiplicando_reg_D_1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  reg_datain_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_9_OBUF_I,
      O => reg_datain_out(9)
    );
  reg_datain_in_13_IBUF : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_13_IBUF_2,
      I => reg_datain_in(13)
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_13_IBUF_2,
      O => reg_datain_in_13_IBUF_0
    );
  sumando_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => NlwBufferSignal_sumando_out_8_OBUF_I,
      O => sumando_out(8)
    );
  sumando_in_12_IBUF : X_BUF
    generic map(
      LOC => "PAD218",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_12_IBUF_7,
      I => sumando_in(12)
    );
  ProtoComp1_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD218",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_12_IBUF_7,
      O => sumando_in_12_IBUF_0
    );
  sumando_in_20_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_20_IBUF_10,
      I => sumando_in(20)
    );
  ProtoComp1_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_20_IBUF_10,
      O => sumando_in_20_IBUF_0
    );
  reg_datain_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_10_OBUF_I,
      O => reg_datain_out(10)
    );
  reg_datain_in_14_IBUF : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_14_IBUF_15,
      I => reg_datain_in(14)
    );
  ProtoComp1_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_14_IBUF_15,
      O => reg_datain_in_14_IBUF_0
    );
  sumando_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => NlwBufferSignal_sumando_out_9_OBUF_I,
      O => sumando_out(9)
    );
  sumando_in_13_IBUF : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_13_IBUF_20,
      I => sumando_in(13)
    );
  ProtoComp1_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_13_IBUF_20,
      O => sumando_in_13_IBUF_0
    );
  sumando_in_21_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_21_IBUF_23,
      I => sumando_in(21)
    );
  ProtoComp1_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_21_IBUF_23,
      O => sumando_in_21_IBUF_0
    );
  Multiplicador_inst_blk00000003_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTP_INT
    );
  Multiplicador_inst_blk00000003_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTA_INT
    );
  Multiplicador_inst_blk00000003_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEA_INT
    );
  Multiplicador_inst_blk00000003_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEP_INT
    );
  Multiplicador_inst_blk00000003_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEB_INT
    );
  Multiplicador_inst_blk00000003_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => ce_IBUF_0,
      O => Multiplicador_inst_blk00000003_CEM_INT
    );
  Multiplicador_inst_blk00000003_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTB_INT
    );
  Multiplicador_inst_blk00000003_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => Multiplicador_inst_blk00000003_CLK_INT
    );
  Multiplicador_inst_blk00000003_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTM_INT
    );
  Multiplicador_inst_blk00000003_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTOPMODE_INT
    );
  Multiplicador_inst_blk00000003_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEC_INT
    );
  Multiplicador_inst_blk00000003_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CEOPMODE_INT
    );
  Multiplicador_inst_blk00000003_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTD_INT
    );
  Multiplicador_inst_blk00000003_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Multiplicador_inst_blk00000003_CED_INT
    );
  Multiplicador_inst_blk00000003_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTCARRYIN_INT
    );
  Multiplicador_inst_blk00000003_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => Multiplicador_inst_blk00000003_RSTC_INT
    );
  Multiplicador_inst_blk00000003_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y6",
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
      LOC => "DSP48_X0Y6"
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
      B(17) => multiplicando_reg_D_1_15_0,
      B(16) => multiplicando_reg_D_1_15_0,
      B(15) => multiplicando_reg_D_1_15_0,
      B(14) => multiplicando_reg_D_1_14_0,
      B(13) => multiplicando_reg_D_1_13_0,
      B(12) => multiplicando_reg_D_1_12_0,
      B(11) => multiplicando_reg_D_1_11_0,
      B(10) => multiplicando_reg_D_1_10_0,
      B(9) => multiplicando_reg_D_1_9_0,
      B(8) => multiplicando_reg_D_1_8_0,
      B(7) => multiplicando_reg_D_1_7_0,
      B(6) => multiplicando_reg_D_1_6_0,
      B(5) => multiplicando_reg_D_1_5_0,
      B(4) => multiplicando_reg_D_1_4_0,
      B(3) => multiplicando_reg_D_1_3_0,
      B(2) => multiplicando_reg_D_1_2_0,
      B(1) => multiplicando_reg_D_1_1_0,
      B(0) => multiplicando_reg_D_1_0_0,
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
      A(17) => ROM_datain_in_15_IBUF_0,
      A(16) => ROM_datain_in_15_IBUF_0,
      A(15) => ROM_datain_in_15_IBUF_0,
      A(14) => ROM_datain_in_14_IBUF_0,
      A(13) => ROM_datain_in_13_IBUF_0,
      A(12) => ROM_datain_in_12_IBUF_0,
      A(11) => ROM_datain_in_11_IBUF_0,
      A(10) => ROM_datain_in_10_IBUF_0,
      A(9) => ROM_datain_in_9_IBUF_0,
      A(8) => ROM_datain_in_8_IBUF_0,
      A(7) => ROM_datain_in_7_IBUF_0,
      A(6) => ROM_datain_in_6_IBUF_0,
      A(5) => ROM_datain_in_5_IBUF_0,
      A(4) => ROM_datain_in_4_IBUF_0,
      A(3) => ROM_datain_in_3_IBUF_0,
      A(2) => ROM_datain_in_2_IBUF_0,
      A(1) => ROM_datain_in_1_IBUF_0,
      A(0) => ROM_datain_in_0_IBUF_0,
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
      M(35) => multiplicacion(35),
      M(34) => multiplicacion(34),
      M(33) => multiplicacion(33),
      M(32) => multiplicacion(32),
      M(31) => multiplicacion(31),
      M(30) => multiplicacion(30),
      M(29) => multiplicacion(29),
      M(28) => multiplicacion(28),
      M(27) => multiplicacion(27),
      M(26) => multiplicacion(26),
      M(25) => multiplicacion(25),
      M(24) => multiplicacion(24),
      M(23) => multiplicacion(23),
      M(22) => multiplicacion(22),
      M(21) => multiplicacion(21),
      M(20) => multiplicacion(20),
      M(19) => multiplicacion(19),
      M(18) => multiplicacion(18),
      M(17) => multiplicacion(17),
      M(16) => multiplicacion(16),
      M(15) => multiplicacion(15),
      M(14) => multiplicacion(14),
      M(13) => multiplicacion(13),
      M(12) => multiplicacion(12),
      M(11) => multiplicacion(11),
      M(10) => multiplicacion(10),
      M(9) => multiplicacion(9),
      M(8) => multiplicacion(8),
      M(7) => multiplicacion(7),
      M(6) => multiplicacion(6),
      M(5) => multiplicacion(5),
      M(4) => multiplicacion(4),
      M(3) => multiplicacion(3),
      M(2) => multiplicacion(2),
      M(1) => multiplicacion(1),
      M(0) => multiplicacion(0)
    );
  reg_datain_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_11_OBUF_I,
      O => reg_datain_out(11)
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  reg_datain_in_15_IBUF : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_15_IBUF_193,
      I => reg_datain_in(15)
    );
  ProtoComp1_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_15_IBUF_193,
      O => reg_datain_in_15_IBUF_0
    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_0,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEAINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEPINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => ce_IBUF_0,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTBINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLKINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTMINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODEINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEDINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCINV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYININV : 
X_BUF
    generic map(
      LOC => "DSP48_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT

    );
  Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive : 
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
      LOC => "DSP48_X0Y7"
    )
    port map (
      CECARRYIN => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CECARRYIN_INT
,
      RSTC => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTC_INT
,
      RSTCARRYIN => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTCARRYIN_INT
,
      CED => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CED_INT
,
      RSTD => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTD_INT
,
      CEOPMODE => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEOPMODE_INT
,
      CEC => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEC_INT
,
      RSTOPMODE => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTOPMODE_INT
,
      RSTM => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTM_INT
,
      CLK => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CLK_INT
,
      RSTB => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTB_INT
,
      CEM => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEM_INT
,
      CEB => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEB_INT
,
      CARRYIN => GND,
      CEP => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEP_INT
,
      CEA => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CEA_INT
,
      RSTA => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTA_INT
,
      RSTP => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_RSTP_INT
,
      CARRYOUTF => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUTF
,
      CARRYOUT => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_CARRYOUT
,
      B(17) => sumando_in_17_IBUF_0,
      B(16) => sumando_in_16_IBUF_0,
      B(15) => sumando_in_15_IBUF_0,
      B(14) => sumando_in_14_IBUF_0,
      B(13) => sumando_in_13_IBUF_0,
      B(12) => sumando_in_12_IBUF_0,
      B(11) => sumando_in_11_IBUF_0,
      B(10) => sumando_in_10_IBUF_0,
      B(9) => sumando_in_9_IBUF_0,
      B(8) => sumando_in_8_IBUF_0,
      B(7) => sumando_in_7_IBUF_0,
      B(6) => sumando_in_6_IBUF_0,
      B(5) => sumando_in_5_IBUF_0,
      B(4) => sumando_in_4_IBUF_0,
      B(3) => sumando_in_3_IBUF_0,
      B(2) => sumando_in_2_IBUF_0,
      B(1) => sumando_in_1_IBUF_0,
      B(0) => sumando_in_0_IBUF_0,
      PCIN(47) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN47
,
      PCIN(46) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN46
,
      PCIN(45) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN45
,
      PCIN(44) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN44
,
      PCIN(43) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN43
,
      PCIN(42) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN42
,
      PCIN(41) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN41
,
      PCIN(40) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN40
,
      PCIN(39) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN39
,
      PCIN(38) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN38
,
      PCIN(37) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN37
,
      PCIN(36) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN36
,
      PCIN(35) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN35
,
      PCIN(34) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN34
,
      PCIN(33) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN33
,
      PCIN(32) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN32
,
      PCIN(31) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN31
,
      PCIN(30) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN30
,
      PCIN(29) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN29
,
      PCIN(28) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN28
,
      PCIN(27) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN27
,
      PCIN(26) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN26
,
      PCIN(25) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN25
,
      PCIN(24) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN24
,
      PCIN(23) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN23
,
      PCIN(22) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN22
,
      PCIN(21) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN21
,
      PCIN(20) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN20
,
      PCIN(19) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN19
,
      PCIN(18) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN18
,
      PCIN(17) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN17
,
      PCIN(16) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN16
,
      PCIN(15) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN15
,
      PCIN(14) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN14
,
      PCIN(13) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN13
,
      PCIN(12) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN12
,
      PCIN(11) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN11
,
      PCIN(10) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN10
,
      PCIN(9) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN9
,
      PCIN(8) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN8
,
      PCIN(7) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN7
,
      PCIN(6) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN6
,
      PCIN(5) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN5
,
      PCIN(4) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN4
,
      PCIN(3) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN3
,
      PCIN(2) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN2
,
      PCIN(1) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN1
,
      PCIN(0) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCIN0
,
      C(47) => multiplicacion(35),
      C(46) => multiplicacion(35),
      C(45) => multiplicacion(35),
      C(44) => multiplicacion(35),
      C(43) => multiplicacion(35),
      C(42) => multiplicacion(35),
      C(41) => multiplicacion(35),
      C(40) => multiplicacion(35),
      C(39) => multiplicacion(35),
      C(38) => multiplicacion(35),
      C(37) => multiplicacion(35),
      C(36) => multiplicacion(35),
      C(35) => multiplicacion(35),
      C(34) => multiplicacion(34),
      C(33) => multiplicacion(33),
      C(32) => multiplicacion(32),
      C(31) => multiplicacion(31),
      C(30) => multiplicacion(30),
      C(29) => multiplicacion(29),
      C(28) => multiplicacion(28),
      C(27) => multiplicacion(27),
      C(26) => multiplicacion(26),
      C(25) => multiplicacion(25),
      C(24) => multiplicacion(24),
      C(23) => multiplicacion(23),
      C(22) => multiplicacion(22),
      C(21) => multiplicacion(21),
      C(20) => multiplicacion(20),
      C(19) => multiplicacion(19),
      C(18) => multiplicacion(18),
      C(17) => multiplicacion(17),
      C(16) => multiplicacion(16),
      C(15) => multiplicacion(15),
      C(14) => multiplicacion(14),
      C(13) => multiplicacion(13),
      C(12) => multiplicacion(12),
      C(11) => multiplicacion(11),
      C(10) => multiplicacion(10),
      C(9) => multiplicacion(9),
      C(8) => multiplicacion(8),
      C(7) => multiplicacion(7),
      C(6) => multiplicacion(6),
      C(5) => multiplicacion(5),
      C(4) => multiplicacion(4),
      C(3) => multiplicacion(3),
      C(2) => multiplicacion(2),
      C(1) => multiplicacion(1),
      C(0) => multiplicacion(0),
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => VCC,
      OPMODE(0) => VCC,
      D(17) => sumando_in_36_IBUF_0,
      D(16) => sumando_in_36_IBUF_0,
      D(15) => sumando_in_36_IBUF_0,
      D(14) => sumando_in_36_IBUF_0,
      D(13) => sumando_in_36_IBUF_0,
      D(12) => sumando_in_36_IBUF_0,
      D(11) => sumando_in_36_IBUF_0,
      D(10) => sumando_in_36_IBUF_0,
      D(9) => sumando_in_36_IBUF_0,
      D(8) => sumando_in_36_IBUF_0,
      D(7) => sumando_in_36_IBUF_0,
      D(6) => sumando_in_36_IBUF_0,
      D(5) => sumando_in_36_IBUF_0,
      D(4) => sumando_in_36_IBUF_0,
      D(3) => sumando_in_36_IBUF_0,
      D(2) => sumando_in_36_IBUF_0,
      D(1) => sumando_in_36_IBUF_0,
      D(0) => sumando_in_36_IBUF_0,
      A(17) => sumando_in_35_IBUF_0,
      A(16) => sumando_in_34_IBUF_0,
      A(15) => sumando_in_33_IBUF_0,
      A(14) => sumando_in_32_IBUF_0,
      A(13) => sumando_in_31_IBUF_0,
      A(12) => sumando_in_30_IBUF_0,
      A(11) => sumando_in_29_IBUF_0,
      A(10) => sumando_in_28_IBUF_0,
      A(9) => sumando_in_27_IBUF_0,
      A(8) => sumando_in_26_IBUF_0,
      A(7) => sumando_in_25_IBUF_0,
      A(6) => sumando_in_24_IBUF_0,
      A(5) => sumando_in_23_IBUF_0,
      A(4) => sumando_in_22_IBUF_0,
      A(3) => sumando_in_21_IBUF_0,
      A(2) => sumando_in_20_IBUF_0,
      A(1) => sumando_in_19_IBUF_0,
      A(0) => sumando_in_18_IBUF_0,
      BCIN(17) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN17
,
      BCIN(16) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN16
,
      BCIN(15) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN15
,
      BCIN(14) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN14
,
      BCIN(13) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN13
,
      BCIN(12) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN12
,
      BCIN(11) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN11
,
      BCIN(10) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN10
,
      BCIN(9) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN9
,
      BCIN(8) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN8
,
      BCIN(7) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN7
,
      BCIN(6) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN6
,
      BCIN(5) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN5
,
      BCIN(4) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN4
,
      BCIN(3) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN3
,
      BCIN(2) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN2
,
      BCIN(1) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN1
,
      BCIN(0) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCIN0
,
      BCOUT(17) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT17
,
      BCOUT(16) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT16
,
      BCOUT(15) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT15
,
      BCOUT(14) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT14
,
      BCOUT(13) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT13
,
      BCOUT(12) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT12
,
      BCOUT(11) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT11
,
      BCOUT(10) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT10
,
      BCOUT(9) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT9
,
      BCOUT(8) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT8
,
      BCOUT(7) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT7
,
      BCOUT(6) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT6
,
      BCOUT(5) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT5
,
      BCOUT(4) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT4
,
      BCOUT(3) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT3
,
      BCOUT(2) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT2
,
      BCOUT(1) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT1
,
      BCOUT(0) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_BCOUT0
,
      P(47) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P47
,
      P(46) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P46
,
      P(45) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P45
,
      P(44) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P44
,
      P(43) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P43
,
      P(42) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P42
,
      P(41) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P41
,
      P(40) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P40
,
      P(39) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P39
,
      P(38) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P38
,
      P(37) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_P37
,
      P(36) => sumando_out_36_OBUF_1008,
      P(35) => sumando_out_35_OBUF_1009,
      P(34) => sumando_out_34_OBUF_1010,
      P(33) => sumando_out_33_OBUF_1011,
      P(32) => sumando_out_32_OBUF_1012,
      P(31) => sumando_out_31_OBUF_1013,
      P(30) => sumando_out_30_OBUF_1014,
      P(29) => sumando_out_29_OBUF_1015,
      P(28) => sumando_out_28_OBUF_1016,
      P(27) => sumando_out_27_OBUF_1017,
      P(26) => sumando_out_26_OBUF_1018,
      P(25) => sumando_out_25_OBUF_1019,
      P(24) => sumando_out_24_OBUF_1020,
      P(23) => sumando_out_23_OBUF_1021,
      P(22) => sumando_out_22_OBUF_1022,
      P(21) => sumando_out_21_OBUF_1023,
      P(20) => sumando_out_20_OBUF_1024,
      P(19) => sumando_out_19_OBUF_1025,
      P(18) => sumando_out_18_OBUF_1026,
      P(17) => sumando_out_17_OBUF_1027,
      P(16) => sumando_out_16_OBUF_1028,
      P(15) => sumando_out_15_OBUF_1029,
      P(14) => sumando_out_14_OBUF_1030,
      P(13) => sumando_out_13_OBUF_1031,
      P(12) => sumando_out_12_OBUF_1032,
      P(11) => sumando_out_11_OBUF_1033,
      P(10) => sumando_out_10_OBUF_1034,
      P(9) => sumando_out_9_OBUF_899,
      P(8) => sumando_out_8_OBUF_894,
      P(7) => sumando_out_7_OBUF_1035,
      P(6) => sumando_out_6_OBUF_1036,
      P(5) => sumando_out_5_OBUF_1037,
      P(4) => sumando_out_4_OBUF_1038,
      P(3) => sumando_out_3_OBUF_1039,
      P(2) => sumando_out_2_OBUF_1040,
      P(1) => sumando_out_1_OBUF_1041,
      P(0) => sumando_out_0_OBUF_1042,
      PCOUT(47) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT47
,
      PCOUT(46) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT46
,
      PCOUT(45) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT45
,
      PCOUT(44) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT44
,
      PCOUT(43) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT43
,
      PCOUT(42) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT42
,
      PCOUT(41) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT41
,
      PCOUT(40) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT40
,
      PCOUT(39) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT39
,
      PCOUT(38) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT38
,
      PCOUT(37) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT37
,
      PCOUT(36) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT36
,
      PCOUT(35) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT35
,
      PCOUT(34) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT34
,
      PCOUT(33) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT33
,
      PCOUT(32) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT32
,
      PCOUT(31) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT31
,
      PCOUT(30) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT30
,
      PCOUT(29) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT29
,
      PCOUT(28) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT28
,
      PCOUT(27) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT27
,
      PCOUT(26) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT26
,
      PCOUT(25) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT25
,
      PCOUT(24) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT24
,
      PCOUT(23) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT23
,
      PCOUT(22) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT22
,
      PCOUT(21) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT21
,
      PCOUT(20) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT20
,
      PCOUT(19) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT19
,
      PCOUT(18) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT18
,
      PCOUT(17) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT17
,
      PCOUT(16) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT16
,
      PCOUT(15) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT15
,
      PCOUT(14) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT14
,
      PCOUT(13) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT13
,
      PCOUT(12) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT12
,
      PCOUT(11) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT11
,
      PCOUT(10) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT10
,
      PCOUT(9) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT9
,
      PCOUT(8) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT8
,
      PCOUT(7) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT7
,
      PCOUT(6) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT6
,
      PCOUT(5) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT5
,
      PCOUT(4) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT4
,
      PCOUT(3) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT3
,
      PCOUT(2) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT2
,
      PCOUT(1) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT1
,
      PCOUT(0) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_PCOUT0
,
      M(35) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M35
,
      M(34) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M34
,
      M(33) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M33
,
      M(32) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M32
,
      M(31) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M31
,
      M(30) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M30
,
      M(29) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M29
,
      M(28) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M28
,
      M(27) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M27
,
      M(26) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M26
,
      M(25) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M25
,
      M(24) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M24
,
      M(23) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M23
,
      M(22) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M22
,
      M(21) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M21
,
      M(20) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M20
,
      M(19) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M19
,
      M(18) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M18
,
      M(17) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M17
,
      M(16) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M16
,
      M(15) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M15
,
      M(14) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M14
,
      M(13) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M13
,
      M(12) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M12
,
      M(11) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M11
,
      M(10) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M10
,
      M(9) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M9
,
      M(8) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M8
,
      M(7) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M7
,
      M(6) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M6
,
      M(5) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M5
,
      M(4) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M4
,
      M(3) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M3
,
      M(2) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M2
,
      M(1) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M1
,
      M(0) => 
Sumador_inst_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_sp3adsp_i_uniwrap_i_primitive_M0

    );
  sumando_in_14_IBUF : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_14_IBUF_360,
      I => sumando_in(14)
    );
  ProtoComp1_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_14_IBUF_360,
      O => sumando_in_14_IBUF_0
    );
  sumando_in_22_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_22_IBUF_363,
      I => sumando_in(22)
    );
  ProtoComp1_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_22_IBUF_363,
      O => sumando_in_22_IBUF_0
    );
  sumando_in_30_IBUF : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_30_IBUF_366,
      I => sumando_in(30)
    );
  ProtoComp1_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_30_IBUF_366,
      O => sumando_in_30_IBUF_0
    );
  reg_datain_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_12_OBUF_I,
      O => reg_datain_out(12)
    );
  sumando_in_15_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_15_IBUF_371,
      I => sumando_in(15)
    );
  ProtoComp1_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_15_IBUF_371,
      O => sumando_in_15_IBUF_0
    );
  sumando_in_23_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_23_IBUF_374,
      I => sumando_in(23)
    );
  ProtoComp1_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_23_IBUF_374,
      O => sumando_in_23_IBUF_0
    );
  sumando_in_31_IBUF : X_BUF
    generic map(
      LOC => "PAD237",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_31_IBUF_377,
      I => sumando_in(31)
    );
  ProtoComp1_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD237",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_31_IBUF_377,
      O => sumando_in_31_IBUF_0
    );
  sumando_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => NlwBufferSignal_sumando_out_10_OBUF_I,
      O => sumando_out(10)
    );
  reg_datain_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_13_OBUF_I,
      O => reg_datain_out(13)
    );
  sumando_in_16_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_16_IBUF_384,
      I => sumando_in(16)
    );
  ProtoComp1_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_16_IBUF_384,
      O => sumando_in_16_IBUF_0
    );
  sumando_in_24_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_24_IBUF_387,
      I => sumando_in(24)
    );
  ProtoComp1_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_24_IBUF_387,
      O => sumando_in_24_IBUF_0
    );
  sumando_in_32_IBUF : X_BUF
    generic map(
      LOC => "PAD238",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_32_IBUF_390,
      I => sumando_in(32)
    );
  ProtoComp1_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD238",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_32_IBUF_390,
      O => sumando_in_32_IBUF_0
    );
  sumando_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => NlwBufferSignal_sumando_out_11_OBUF_I,
      O => sumando_out(11)
    );
  reg_datain_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_14_OBUF_I,
      O => reg_datain_out(14)
    );
  sumando_in_17_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_17_IBUF_397,
      I => sumando_in(17)
    );
  ProtoComp1_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_17_IBUF_397,
      O => sumando_in_17_IBUF_0
    );
  sumando_in_25_IBUF : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_25_IBUF_400,
      I => sumando_in(25)
    );
  ProtoComp1_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_25_IBUF_400,
      O => sumando_in_25_IBUF_0
    );
  sumando_in_33_IBUF : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_33_IBUF_403,
      I => sumando_in(33)
    );
  ProtoComp1_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_33_IBUF_403,
      O => sumando_in_33_IBUF_0
    );
  sumando_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => NlwBufferSignal_sumando_out_12_OBUF_I,
      O => sumando_out(12)
    );
  sumando_out_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => NlwBufferSignal_sumando_out_20_OBUF_I,
      O => sumando_out(20)
    );
  reg_datain_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_15_OBUF_I,
      O => reg_datain_out(15)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_412,
      I => clk
    );
  ProtoComp1_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_412,
      O => clk_BUFGP_IBUFG_0
    );
  sumando_in_18_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_18_IBUF_415,
      I => sumando_in(18)
    );
  ProtoComp1_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_18_IBUF_415,
      O => sumando_in_18_IBUF_0
    );
  sumando_in_26_IBUF : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_26_IBUF_418,
      I => sumando_in(26)
    );
  ProtoComp1_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_26_IBUF_418,
      O => sumando_in_26_IBUF_0
    );
  sumando_in_34_IBUF : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_34_IBUF_421,
      I => sumando_in(34)
    );
  ProtoComp1_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_34_IBUF_421,
      O => sumando_in_34_IBUF_0
    );
  sumando_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => NlwBufferSignal_sumando_out_13_OBUF_I,
      O => sumando_out(13)
    );
  sumando_out_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => NlwBufferSignal_sumando_out_21_OBUF_I,
      O => sumando_out(21)
    );
  sumando_in_19_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_19_IBUF_428,
      I => sumando_in(19)
    );
  ProtoComp1_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_19_IBUF_428,
      O => sumando_in_19_IBUF_0
    );
  sumando_in_27_IBUF : X_BUF
    generic map(
      LOC => "PAD233",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_27_IBUF_431,
      I => sumando_in(27)
    );
  ProtoComp1_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD233",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_27_IBUF_431,
      O => sumando_in_27_IBUF_0
    );
  sumando_in_35_IBUF : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_35_IBUF_434,
      I => sumando_in(35)
    );
  ProtoComp1_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_35_IBUF_434,
      O => sumando_in_35_IBUF_0
    );
  sumando_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => NlwBufferSignal_sumando_out_14_OBUF_I,
      O => sumando_out(14)
    );
  sumando_out_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => NlwBufferSignal_sumando_out_22_OBUF_I,
      O => sumando_out(22)
    );
  sumando_out_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => NlwBufferSignal_sumando_out_30_OBUF_I,
      O => sumando_out(30)
    );
  sumando_in_28_IBUF : X_BUF
    generic map(
      LOC => "PAD234",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_28_IBUF_443,
      I => sumando_in(28)
    );
  ProtoComp1_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD234",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_28_IBUF_443,
      O => sumando_in_28_IBUF_0
    );
  sumando_in_36_IBUF : X_BUF
    generic map(
      LOC => "PAD242",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_36_IBUF_446,
      I => sumando_in(36)
    );
  ProtoComp1_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD242",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_36_IBUF_446,
      O => sumando_in_36_IBUF_0
    );
  sumando_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => NlwBufferSignal_sumando_out_15_OBUF_I,
      O => sumando_out(15)
    );
  sumando_out_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => NlwBufferSignal_sumando_out_23_OBUF_I,
      O => sumando_out(23)
    );
  sumando_out_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => NlwBufferSignal_sumando_out_31_OBUF_I,
      O => sumando_out(31)
    );
  sumando_in_29_IBUF : X_BUF
    generic map(
      LOC => "PAD235",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_29_IBUF_455,
      I => sumando_in(29)
    );
  ProtoComp1_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD235",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_29_IBUF_455,
      O => sumando_in_29_IBUF_0
    );
  sumando_out_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => NlwBufferSignal_sumando_out_16_OBUF_I,
      O => sumando_out(16)
    );
  sumando_out_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => NlwBufferSignal_sumando_out_24_OBUF_I,
      O => sumando_out(24)
    );
  sumando_out_32_OBUF : X_OBUF
    generic map(
      LOC => "PAD36"
    )
    port map (
      I => NlwBufferSignal_sumando_out_32_OBUF_I,
      O => sumando_out(32)
    );
  sumando_out_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => NlwBufferSignal_sumando_out_17_OBUF_I,
      O => sumando_out(17)
    );
  sumando_out_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => NlwBufferSignal_sumando_out_25_OBUF_I,
      O => sumando_out(25)
    );
  sumando_out_33_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => NlwBufferSignal_sumando_out_33_OBUF_I,
      O => sumando_out(33)
    );
  ROM_datain_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_0_IBUF_470,
      I => ROM_datain_in(0)
    );
  ProtoComp1_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_0_IBUF_470,
      O => ROM_datain_in_0_IBUF_0
    );
  sumando_out_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => NlwBufferSignal_sumando_out_18_OBUF_I,
      O => sumando_out(18)
    );
  sumando_out_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => NlwBufferSignal_sumando_out_26_OBUF_I,
      O => sumando_out(26)
    );
  sumando_out_34_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => NlwBufferSignal_sumando_out_34_OBUF_I,
      O => sumando_out(34)
    );
  ROM_datain_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_1_IBUF_479,
      I => ROM_datain_in(1)
    );
  ProtoComp1_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_1_IBUF_479,
      O => ROM_datain_in_1_IBUF_0
    );
  sumando_out_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => NlwBufferSignal_sumando_out_19_OBUF_I,
      O => sumando_out(19)
    );
  sumando_out_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => NlwBufferSignal_sumando_out_27_OBUF_I,
      O => sumando_out(27)
    );
  sumando_out_35_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => NlwBufferSignal_sumando_out_35_OBUF_I,
      O => sumando_out(35)
    );
  ROM_datain_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_2_IBUF_488,
      I => ROM_datain_in(2)
    );
  ProtoComp1_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_2_IBUF_488,
      O => ROM_datain_in_2_IBUF_0
    );
  sumando_out_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => NlwBufferSignal_sumando_out_28_OBUF_I,
      O => sumando_out(28)
    );
  sumando_out_36_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => NlwBufferSignal_sumando_out_36_OBUF_I,
      O => sumando_out(36)
    );
  ROM_datain_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_3_IBUF_495,
      I => ROM_datain_in(3)
    );
  ProtoComp1_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_3_IBUF_495,
      O => ROM_datain_in_3_IBUF_0
    );
  sumando_out_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => NlwBufferSignal_sumando_out_29_OBUF_I,
      O => sumando_out(29)
    );
  sumando_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_0_IBUF_500,
      I => sumando_in(0)
    );
  ProtoComp1_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_0_IBUF_500,
      O => sumando_in_0_IBUF_0
    );
  ROM_datain_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_4_IBUF_503,
      I => ROM_datain_in(4)
    );
  ProtoComp1_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_4_IBUF_503,
      O => ROM_datain_in_4_IBUF_0
    );
  sumando_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_1_IBUF_506,
      I => sumando_in(1)
    );
  ProtoComp1_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_1_IBUF_506,
      O => sumando_in_1_IBUF_0
    );
  ROM_datain_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_5_IBUF_509,
      I => ROM_datain_in(5)
    );
  ProtoComp1_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_5_IBUF_509,
      O => ROM_datain_in_5_IBUF_0
    );
  sumando_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD207",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_2_IBUF_512,
      I => sumando_in(2)
    );
  ProtoComp1_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD207",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_2_IBUF_512,
      O => sumando_in_2_IBUF_0
    );
  ROM_datain_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_6_IBUF_515,
      I => ROM_datain_in(6)
    );
  ProtoComp1_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_6_IBUF_515,
      O => ROM_datain_in_6_IBUF_0
    );
  sumando_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_3_IBUF_518,
      I => sumando_in(3)
    );
  ProtoComp1_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_3_IBUF_518,
      O => sumando_in_3_IBUF_0
    );
  ROM_datain_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_7_IBUF_521,
      I => ROM_datain_in(7)
    );
  ProtoComp1_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_7_IBUF_521,
      O => ROM_datain_in_7_IBUF_0
    );
  sumando_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_4_IBUF_524,
      I => sumando_in(4)
    );
  ProtoComp1_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_4_IBUF_524,
      O => sumando_in_4_IBUF_0
    );
  ROM_datain_in_8_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_8_IBUF_527,
      I => ROM_datain_in(8)
    );
  ProtoComp1_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_8_IBUF_527,
      O => ROM_datain_in_8_IBUF_0
    );
  sumando_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_5_IBUF_530,
      I => sumando_in(5)
    );
  ProtoComp1_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_5_IBUF_530,
      O => sumando_in_5_IBUF_0
    );
  ROM_datain_in_9_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_9_IBUF_533,
      I => ROM_datain_in(9)
    );
  ProtoComp1_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_9_IBUF_533,
      O => ROM_datain_in_9_IBUF_0
    );
  sumando_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_6_IBUF_536,
      I => sumando_in(6)
    );
  ProtoComp1_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_6_IBUF_536,
      O => sumando_in_6_IBUF_0
    );
  sumando_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_7_IBUF_539,
      I => sumando_in(7)
    );
  ProtoComp1_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_7_IBUF_539,
      O => sumando_in_7_IBUF_0
    );
  sumando_in_8_IBUF : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_8_IBUF_542,
      I => sumando_in(8)
    );
  ProtoComp1_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_8_IBUF_542,
      O => sumando_in_8_IBUF_0
    );
  sumando_in_9_IBUF : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_9_IBUF_545,
      I => sumando_in(9)
    );
  ProtoComp1_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_9_IBUF_545,
      O => sumando_in_9_IBUF_0
    );
  dataout_valid_prop_OBUF : X_OBUF
    generic map(
      LOC => "PAD243"
    )
    port map (
      I => NlwBufferSignal_dataout_valid_prop_OBUF_I,
      O => dataout_valid_prop
    );
  reg_datain_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_0_IBUF_550,
      I => reg_datain_in(0)
    );
  ProtoComp1_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_0_IBUF_550,
      O => reg_datain_in_0_IBUF_0
    );
  clk_en_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_en_IBUF_553,
      I => clk_en
    );
  ProtoComp1_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_en_IBUF_553,
      O => clk_en_IBUF_0
    );
  reg_datain_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_1_IBUF_556,
      I => reg_datain_in(1)
    );
  ProtoComp1_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_1_IBUF_556,
      O => reg_datain_in_1_IBUF_0
    );
  ROM_datain_in_10_IBUF : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_10_IBUF_559,
      I => ROM_datain_in(10)
    );
  ProtoComp1_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_10_IBUF_559,
      O => ROM_datain_in_10_IBUF_0
    );
  reg_datain_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_0_OBUF_I,
      O => reg_datain_out(0)
    );
  reg_datain_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_2_IBUF_564,
      I => reg_datain_in(2)
    );
  ProtoComp1_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_2_IBUF_564,
      O => reg_datain_in_2_IBUF_0
    );
  ROM_datain_in_11_IBUF : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_11_IBUF_567,
      I => ROM_datain_in(11)
    );
  ProtoComp1_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_11_IBUF_567,
      O => ROM_datain_in_11_IBUF_0
    );
  reg_datain_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_1_OBUF_I,
      O => reg_datain_out(1)
    );
  reg_datain_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_3_IBUF_572,
      I => reg_datain_in(3)
    );
  ProtoComp1_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_3_IBUF_572,
      O => reg_datain_in_3_IBUF_0
    );
  sumando_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => NlwBufferSignal_sumando_out_0_OBUF_I,
      O => sumando_out(0)
    );
  ROM_datain_in_12_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_12_IBUF_577,
      I => ROM_datain_in(12)
    );
  ProtoComp1_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_12_IBUF_577,
      O => ROM_datain_in_12_IBUF_0
    );
  reg_datain_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_2_OBUF_I,
      O => reg_datain_out(2)
    );
  reg_datain_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_4_IBUF_582,
      I => reg_datain_in(4)
    );
  ProtoComp1_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_4_IBUF_582,
      O => reg_datain_in_4_IBUF_0
    );
  sumando_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD3"
    )
    port map (
      I => NlwBufferSignal_sumando_out_1_OBUF_I,
      O => sumando_out(1)
    );
  ROM_datain_in_13_IBUF : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_13_IBUF_587,
      I => ROM_datain_in(13)
    );
  ProtoComp1_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_13_IBUF_587,
      O => ROM_datain_in_13_IBUF_0
    );
  reg_datain_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD66"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_3_OBUF_I,
      O => reg_datain_out(3)
    );
  reg_datain_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_5_IBUF_592,
      I => reg_datain_in(5)
    );
  ProtoComp1_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_5_IBUF_592,
      O => reg_datain_in_5_IBUF_0
    );
  sumando_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => NlwBufferSignal_sumando_out_2_OBUF_I,
      O => sumando_out(2)
    );
  ROM_datain_in_14_IBUF : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_14_IBUF_597,
      I => ROM_datain_in(14)
    );
  ProtoComp1_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_14_IBUF_597,
      O => ROM_datain_in_14_IBUF_0
    );
  reg_datain_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD73"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_4_OBUF_I,
      O => reg_datain_out(4)
    );
  reg_datain_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_6_IBUF_602,
      I => reg_datain_in(6)
    );
  ProtoComp1_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_6_IBUF_602,
      O => reg_datain_in_6_IBUF_0
    );
  sumando_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => NlwBufferSignal_sumando_out_3_OBUF_I,
      O => sumando_out(3)
    );
  ROM_datain_in_15_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      O => ROM_datain_in_15_IBUF_607,
      I => ROM_datain_in(15)
    );
  ProtoComp1_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_datain_in_15_IBUF_607,
      O => ROM_datain_in_15_IBUF_0
    );
  reg_datain_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_5_OBUF_I,
      O => reg_datain_out(5)
    );
  reg_datain_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_7_IBUF_612,
      I => reg_datain_in(7)
    );
  ProtoComp1_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_7_IBUF_612,
      O => reg_datain_in_7_IBUF_0
    );
  sumando_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => NlwBufferSignal_sumando_out_4_OBUF_I,
      O => sumando_out(4)
    );
  reg_datain_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_6_OBUF_I,
      O => reg_datain_out(6)
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD244",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_619,
      I => rst
    );
  ProtoComp1_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD244",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_619,
      O => rst_IBUF_0
    );
  reg_datain_in_8_IBUF : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_8_IBUF_622,
      I => reg_datain_in(8)
    );
  ProtoComp1_IMUX_65 : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_8_IBUF_622,
      O => reg_datain_in_8_IBUF_0
    );
  reg_datain_in_10_IBUF : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_10_IBUF_625,
      I => reg_datain_in(10)
    );
  ProtoComp1_IMUX_66 : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_10_IBUF_625,
      O => reg_datain_in_10_IBUF_0
    );
  sumando_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => NlwBufferSignal_sumando_out_5_OBUF_I,
      O => sumando_out(5)
    );
  reg_datain_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_7_OBUF_I,
      O => reg_datain_out(7)
    );
  ce_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 202 ps
    )
    port map (
      O => ce_IBUF_632,
      I => ce
    );
  ProtoComp1_IMUX_67 : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 202 ps
    )
    port map (
      I => ce_IBUF_632,
      O => ce_IBUF_0
    );
  reg_datain_in_9_IBUF : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_9_IBUF_635,
      I => reg_datain_in(9)
    );
  ProtoComp1_IMUX_68 : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_9_IBUF_635,
      O => reg_datain_in_9_IBUF_0
    );
  reg_datain_in_11_IBUF : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_11_IBUF_638,
      I => reg_datain_in(11)
    );
  ProtoComp1_IMUX_69 : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_11_IBUF_638,
      O => reg_datain_in_11_IBUF_0
    );
  sumando_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => NlwBufferSignal_sumando_out_6_OBUF_I,
      O => sumando_out(6)
    );
  datain_valid_prop_IBUF : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_valid_prop_IBUF_643,
      I => datain_valid_prop
    );
  ProtoComp1_IMUX_70 : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_valid_prop_IBUF_643,
      O => datain_valid_prop_IBUF_0
    );
  sumando_in_10_IBUF : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_10_IBUF_646,
      I => sumando_in(10)
    );
  ProtoComp1_IMUX_71 : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_10_IBUF_646,
      O => sumando_in_10_IBUF_0
    );
  reg_datain_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => NlwBufferSignal_reg_datain_out_8_OBUF_I,
      O => reg_datain_out(8)
    );
  reg_datain_in_12_IBUF : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 202 ps
    )
    port map (
      O => reg_datain_in_12_IBUF_651,
      I => reg_datain_in(12)
    );
  ProtoComp1_IMUX_72 : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_12_IBUF_651,
      O => reg_datain_in_12_IBUF_0
    );
  sumando_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => NlwBufferSignal_sumando_out_7_OBUF_I,
      O => sumando_out(7)
    );
  sumando_in_11_IBUF : X_BUF
    generic map(
      LOC => "PAD217",
      PATHPULSE => 202 ps
    )
    port map (
      O => sumando_in_11_IBUF_656,
      I => sumando_in(11)
    );
  ProtoComp1_IMUX_73 : X_BUF
    generic map(
      LOC => "PAD217",
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_in_11_IBUF_656,
      O => sumando_in_11_IBUF_0
    );
  datainout_r_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_datainout_r_0_CLK,
      I => NlwBufferSignal_datainout_r_0_IN,
      O => datainout_r(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  propagado : X_FF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      CE => Q_n0039_inv,
      CLK => NlwBufferSignal_propagado_CLK,
      I => '1',
      O => propagado_1055,
      RST => rst_IBUF_0,
      SET => GND
    );
  Q_n0039_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => clk_en_IBUF_0,
      ADR4 => datainout_r(0),
      O => Q_n0039_inv
    );
  multiplicando_reg_D_0_7_multiplicando_reg_D_0_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(7),
      O => multiplicando_reg_D_1_7_0
    );
  multiplicando_reg_D_0_7_multiplicando_reg_D_0_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(6),
      O => multiplicando_reg_D_1_6_0
    );
  multiplicando_reg_D_0_7_multiplicando_reg_D_0_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(5),
      O => multiplicando_reg_D_1_5_0
    );
  multiplicando_reg_D_0_7_multiplicando_reg_D_0_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(4),
      O => multiplicando_reg_D_1_4_0
    );
  multiplicando_reg_D_0_7 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_7_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_7_IN,
      O => multiplicando_reg_D_0(7),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(7),
      ADR3 => '1',
      O => multiplicando_reg_D_0_7_rt_676
    );
  multiplicando_reg_D_1_7 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_7_CLK,
      I => multiplicando_reg_D_0_7_rt_676,
      O => multiplicando_reg_D_1(7),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_6 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_6_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_6_IN,
      O => multiplicando_reg_D_0(6),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(6),
      ADR3 => '1',
      O => multiplicando_reg_D_0_6_rt_692
    );
  multiplicando_reg_D_1_6 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_6_CLK,
      I => multiplicando_reg_D_0_6_rt_692,
      O => multiplicando_reg_D_1(6),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_5 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_5_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_5_IN,
      O => multiplicando_reg_D_0(5),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(5),
      ADR3 => '1',
      O => multiplicando_reg_D_0_5_rt_687
    );
  multiplicando_reg_D_1_5 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_5_CLK,
      I => multiplicando_reg_D_0_5_rt_687,
      O => multiplicando_reg_D_1(5),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_4 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_4_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_4_IN,
      O => multiplicando_reg_D_0(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => multiplicando_reg_D_0(4),
      ADR4 => '1',
      O => multiplicando_reg_D_0_4_rt_682
    );
  multiplicando_reg_D_1_4 : X_FF
    generic map(
      LOC => "SLICE_X6Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_4_CLK,
      I => multiplicando_reg_D_0_4_rt_682,
      O => multiplicando_reg_D_1(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_11_multiplicando_reg_D_0_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(11),
      O => multiplicando_reg_D_1_11_0
    );
  multiplicando_reg_D_0_11_multiplicando_reg_D_0_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(10),
      O => multiplicando_reg_D_1_10_0
    );
  multiplicando_reg_D_0_11_multiplicando_reg_D_0_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(9),
      O => multiplicando_reg_D_1_9_0
    );
  multiplicando_reg_D_0_11_multiplicando_reg_D_0_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(8),
      O => multiplicando_reg_D_1_8_0
    );
  multiplicando_reg_D_0_11 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_11_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_11_IN,
      O => multiplicando_reg_D_0(11),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(11),
      ADR3 => '1',
      O => multiplicando_reg_D_0_11_rt_699
    );
  multiplicando_reg_D_1_11 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_11_CLK,
      I => multiplicando_reg_D_0_11_rt_699,
      O => multiplicando_reg_D_1(11),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_10 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_10_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_10_IN,
      O => multiplicando_reg_D_0(10),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(10),
      ADR3 => '1',
      O => multiplicando_reg_D_0_10_rt_715
    );
  multiplicando_reg_D_1_10 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_10_CLK,
      I => multiplicando_reg_D_0_10_rt_715,
      O => multiplicando_reg_D_1(10),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_9_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_9_IN,
      O => multiplicando_reg_D_0(9),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(9),
      ADR3 => '1',
      O => multiplicando_reg_D_0_9_rt_710
    );
  multiplicando_reg_D_1_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_9_CLK,
      I => multiplicando_reg_D_0_9_rt_710,
      O => multiplicando_reg_D_1(9),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_8_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_8_IN,
      O => multiplicando_reg_D_0(8),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(8),
      ADR3 => '1',
      O => multiplicando_reg_D_0_8_rt_705
    );
  multiplicando_reg_D_1_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y23",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_8_CLK,
      I => multiplicando_reg_D_0_8_rt_705,
      O => multiplicando_reg_D_1(8),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_3_multiplicando_reg_D_0_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(3),
      O => multiplicando_reg_D_1_3_0
    );
  multiplicando_reg_D_0_3_multiplicando_reg_D_0_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(2),
      O => multiplicando_reg_D_1_2_0
    );
  multiplicando_reg_D_0_3_multiplicando_reg_D_0_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(1),
      O => multiplicando_reg_D_1_1_0
    );
  multiplicando_reg_D_0_3_multiplicando_reg_D_0_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(0),
      O => multiplicando_reg_D_1_0_0
    );
  multiplicando_reg_D_0_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_3_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_3_IN,
      O => multiplicando_reg_D_0(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(3),
      ADR3 => '1',
      O => multiplicando_reg_D_0_3_rt_722
    );
  multiplicando_reg_D_1_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_3_CLK,
      I => multiplicando_reg_D_0_3_rt_722,
      O => multiplicando_reg_D_1(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_2_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_2_IN,
      O => multiplicando_reg_D_0(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(2),
      ADR3 => '1',
      O => multiplicando_reg_D_0_2_rt_738
    );
  multiplicando_reg_D_1_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_2_CLK,
      I => multiplicando_reg_D_0_2_rt_738,
      O => multiplicando_reg_D_1(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_1_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_1_IN,
      O => multiplicando_reg_D_0(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(1),
      ADR3 => '1',
      O => multiplicando_reg_D_0_1_rt_733
    );
  multiplicando_reg_D_1_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_1_CLK,
      I => multiplicando_reg_D_0_1_rt_733,
      O => multiplicando_reg_D_1(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_0_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_0_IN,
      O => multiplicando_reg_D_0(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(0),
      ADR3 => '1',
      O => multiplicando_reg_D_0_0_rt_728
    );
  multiplicando_reg_D_1_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_0_CLK,
      I => multiplicando_reg_D_0_0_rt_728,
      O => multiplicando_reg_D_1(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_15_multiplicando_reg_D_0_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(15),
      O => multiplicando_reg_D_1_15_0
    );
  multiplicando_reg_D_0_15_multiplicando_reg_D_0_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(14),
      O => multiplicando_reg_D_1_14_0
    );
  multiplicando_reg_D_0_15_multiplicando_reg_D_0_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(13),
      O => multiplicando_reg_D_1_13_0
    );
  multiplicando_reg_D_0_15_multiplicando_reg_D_0_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1(12),
      O => multiplicando_reg_D_1_12_0
    );
  multiplicando_reg_D_0_15 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_15_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_15_IN,
      O => multiplicando_reg_D_0(15),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(15),
      ADR3 => '1',
      O => multiplicando_reg_D_0_15_rt_745
    );
  multiplicando_reg_D_1_15 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_15_CLK,
      I => multiplicando_reg_D_0_15_rt_745,
      O => multiplicando_reg_D_1(15),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_14 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_14_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_14_IN,
      O => multiplicando_reg_D_0(14),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(14),
      ADR3 => '1',
      O => multiplicando_reg_D_0_14_rt_761
    );
  multiplicando_reg_D_1_14 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_14_CLK,
      I => multiplicando_reg_D_0_14_rt_761,
      O => multiplicando_reg_D_1(14),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_13 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_13_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_13_IN,
      O => multiplicando_reg_D_0(13),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(13),
      ADR3 => '1',
      O => multiplicando_reg_D_0_13_rt_756
    );
  multiplicando_reg_D_1_13 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_13_CLK,
      I => multiplicando_reg_D_0_13_rt_756,
      O => multiplicando_reg_D_1(13),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_12 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_0_12_CLK,
      I => NlwBufferSignal_multiplicando_reg_D_0_12_IN,
      O => multiplicando_reg_D_0(12),
      RST => rst_IBUF_0,
      SET => GND
    );
  multiplicando_reg_D_0_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => multiplicando_reg_D_0(12),
      ADR3 => '1',
      O => multiplicando_reg_D_0_12_rt_751
    );
  multiplicando_reg_D_1_12 : X_FF
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_multiplicando_reg_D_1_12_CLK,
      I => multiplicando_reg_D_0_12_rt_751,
      O => multiplicando_reg_D_1(12),
      RST => rst_IBUF_0,
      SET => GND
    );
  NlwBufferBlock_reg_datain_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_9_0,
      O => NlwBufferSignal_reg_datain_out_9_OBUF_I
    );
  NlwBufferBlock_sumando_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_8_OBUF_894,
      O => NlwBufferSignal_sumando_out_8_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_10_0,
      O => NlwBufferSignal_reg_datain_out_10_OBUF_I
    );
  NlwBufferBlock_sumando_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_9_OBUF_899,
      O => NlwBufferSignal_sumando_out_9_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_11_0,
      O => NlwBufferSignal_reg_datain_out_11_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_reg_datain_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_12_0,
      O => NlwBufferSignal_reg_datain_out_12_OBUF_I
    );
  NlwBufferBlock_sumando_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_10_OBUF_1034,
      O => NlwBufferSignal_sumando_out_10_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_13_0,
      O => NlwBufferSignal_reg_datain_out_13_OBUF_I
    );
  NlwBufferBlock_sumando_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_11_OBUF_1033,
      O => NlwBufferSignal_sumando_out_11_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_14_0,
      O => NlwBufferSignal_reg_datain_out_14_OBUF_I
    );
  NlwBufferBlock_sumando_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_12_OBUF_1032,
      O => NlwBufferSignal_sumando_out_12_OBUF_I
    );
  NlwBufferBlock_sumando_out_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_20_OBUF_1024,
      O => NlwBufferSignal_sumando_out_20_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_15_0,
      O => NlwBufferSignal_reg_datain_out_15_OBUF_I
    );
  NlwBufferBlock_sumando_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_13_OBUF_1031,
      O => NlwBufferSignal_sumando_out_13_OBUF_I
    );
  NlwBufferBlock_sumando_out_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_21_OBUF_1023,
      O => NlwBufferSignal_sumando_out_21_OBUF_I
    );
  NlwBufferBlock_sumando_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_14_OBUF_1030,
      O => NlwBufferSignal_sumando_out_14_OBUF_I
    );
  NlwBufferBlock_sumando_out_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_22_OBUF_1022,
      O => NlwBufferSignal_sumando_out_22_OBUF_I
    );
  NlwBufferBlock_sumando_out_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_30_OBUF_1014,
      O => NlwBufferSignal_sumando_out_30_OBUF_I
    );
  NlwBufferBlock_sumando_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_15_OBUF_1029,
      O => NlwBufferSignal_sumando_out_15_OBUF_I
    );
  NlwBufferBlock_sumando_out_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_23_OBUF_1021,
      O => NlwBufferSignal_sumando_out_23_OBUF_I
    );
  NlwBufferBlock_sumando_out_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_31_OBUF_1013,
      O => NlwBufferSignal_sumando_out_31_OBUF_I
    );
  NlwBufferBlock_sumando_out_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_16_OBUF_1028,
      O => NlwBufferSignal_sumando_out_16_OBUF_I
    );
  NlwBufferBlock_sumando_out_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_24_OBUF_1020,
      O => NlwBufferSignal_sumando_out_24_OBUF_I
    );
  NlwBufferBlock_sumando_out_32_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_32_OBUF_1012,
      O => NlwBufferSignal_sumando_out_32_OBUF_I
    );
  NlwBufferBlock_sumando_out_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_17_OBUF_1027,
      O => NlwBufferSignal_sumando_out_17_OBUF_I
    );
  NlwBufferBlock_sumando_out_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_25_OBUF_1019,
      O => NlwBufferSignal_sumando_out_25_OBUF_I
    );
  NlwBufferBlock_sumando_out_33_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_33_OBUF_1011,
      O => NlwBufferSignal_sumando_out_33_OBUF_I
    );
  NlwBufferBlock_sumando_out_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_18_OBUF_1026,
      O => NlwBufferSignal_sumando_out_18_OBUF_I
    );
  NlwBufferBlock_sumando_out_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_26_OBUF_1018,
      O => NlwBufferSignal_sumando_out_26_OBUF_I
    );
  NlwBufferBlock_sumando_out_34_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_34_OBUF_1010,
      O => NlwBufferSignal_sumando_out_34_OBUF_I
    );
  NlwBufferBlock_sumando_out_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_19_OBUF_1025,
      O => NlwBufferSignal_sumando_out_19_OBUF_I
    );
  NlwBufferBlock_sumando_out_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_27_OBUF_1017,
      O => NlwBufferSignal_sumando_out_27_OBUF_I
    );
  NlwBufferBlock_sumando_out_35_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_35_OBUF_1009,
      O => NlwBufferSignal_sumando_out_35_OBUF_I
    );
  NlwBufferBlock_sumando_out_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_28_OBUF_1016,
      O => NlwBufferSignal_sumando_out_28_OBUF_I
    );
  NlwBufferBlock_sumando_out_36_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_36_OBUF_1008,
      O => NlwBufferSignal_sumando_out_36_OBUF_I
    );
  NlwBufferBlock_sumando_out_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_29_OBUF_1015,
      O => NlwBufferSignal_sumando_out_29_OBUF_I
    );
  NlwBufferBlock_dataout_valid_prop_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => propagado_1055,
      O => NlwBufferSignal_dataout_valid_prop_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_0_0,
      O => NlwBufferSignal_reg_datain_out_0_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_1_0,
      O => NlwBufferSignal_reg_datain_out_1_OBUF_I
    );
  NlwBufferBlock_sumando_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_0_OBUF_1042,
      O => NlwBufferSignal_sumando_out_0_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_2_0,
      O => NlwBufferSignal_reg_datain_out_2_OBUF_I
    );
  NlwBufferBlock_sumando_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_1_OBUF_1041,
      O => NlwBufferSignal_sumando_out_1_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_3_0,
      O => NlwBufferSignal_reg_datain_out_3_OBUF_I
    );
  NlwBufferBlock_sumando_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_2_OBUF_1040,
      O => NlwBufferSignal_sumando_out_2_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_4_0,
      O => NlwBufferSignal_reg_datain_out_4_OBUF_I
    );
  NlwBufferBlock_sumando_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_3_OBUF_1039,
      O => NlwBufferSignal_sumando_out_3_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_5_0,
      O => NlwBufferSignal_reg_datain_out_5_OBUF_I
    );
  NlwBufferBlock_sumando_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_4_OBUF_1038,
      O => NlwBufferSignal_sumando_out_4_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_6_0,
      O => NlwBufferSignal_reg_datain_out_6_OBUF_I
    );
  NlwBufferBlock_sumando_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_5_OBUF_1037,
      O => NlwBufferSignal_sumando_out_5_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_7_0,
      O => NlwBufferSignal_reg_datain_out_7_OBUF_I
    );
  NlwBufferBlock_sumando_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_6_OBUF_1036,
      O => NlwBufferSignal_sumando_out_6_OBUF_I
    );
  NlwBufferBlock_reg_datain_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => multiplicando_reg_D_1_8_0,
      O => NlwBufferSignal_reg_datain_out_8_OBUF_I
    );
  NlwBufferBlock_sumando_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sumando_out_7_OBUF_1035,
      O => NlwBufferSignal_sumando_out_7_OBUF_I
    );
  NlwBufferBlock_datainout_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_datainout_r_0_CLK
    );
  NlwBufferBlock_datainout_r_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_valid_prop_IBUF_0,
      O => NlwBufferSignal_datainout_r_0_IN
    );
  NlwBufferBlock_propagado_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_propagado_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_7_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_7_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_7_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_7_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_6_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_6_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_6_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_6_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_5_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_5_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_5_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_5_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_4_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_4_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_4_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_4_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_11_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_11_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_11_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_11_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_10_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_10_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_10_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_10_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_9_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_9_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_9_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_9_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_8_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_8_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_8_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_8_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_3_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_3_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_3_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_3_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_2_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_2_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_2_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_2_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_1_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_1_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_1_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_1_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_0_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_0_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_0_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_0_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_15_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_15_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_15_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_15_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_14_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_14_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_14_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_14_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_13_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_13_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_13_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_13_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_0_12_CLK
    );
  NlwBufferBlock_multiplicando_reg_D_0_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_datain_in_12_IBUF_0,
      O => NlwBufferSignal_multiplicando_reg_D_0_12_IN
    );
  NlwBufferBlock_multiplicando_reg_D_1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_multiplicando_reg_D_1_12_CLK
    );
  NlwBlock_BLOQUE_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_BLOQUE_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

