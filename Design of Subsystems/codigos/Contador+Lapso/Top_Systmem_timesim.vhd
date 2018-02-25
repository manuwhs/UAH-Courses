--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: Top_Systmem_timesim.vhd
-- /___/   /\     Timestamp: Sun Nov 11 17:12:23 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf Top_Systmem.pcf -rpw 100 -tpw 0 -ar Structure -tm Top_Systmem -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Top_Systmem.ncd Top_Systmem_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.19 2011-06-20)
-- Input file	: Top_Systmem.ncd
-- Output file	: C:\Users\manuel\Desktop\final\Top_System\Top_System\netgen\par\Top_Systmem_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Top_Systmem
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

entity Top_Systmem is
  port (
    CLK1 : in STD_LOGIC := 'X'; 
    DIO_SW : in STD_LOGIC_VECTOR ( 1 downto 1 ); 
    DIO_BTN : in STD_LOGIC_VECTOR ( 2 downto 1 ); 
    DIO_LED : out STD_LOGIC_VECTOR ( 8 downto 1 ) 
  );
end Top_Systmem;

architecture Structure of Top_Systmem is
  signal mclk : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_ML_NEW_O : STD_LOGIC; 
  signal DCM_inst_clkin1_0 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_ML_NEW_DIVCLK : STD_LOGIC; 
  signal DCM_inst_clk0 : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_estado_FSM_FFd2_810 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_actualizar_811 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_salida_812 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_estado_FSM_FFd1_813 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv_0 : STD_LOGIC; 
  signal enable_cnt : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_10_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_11_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_19_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_12_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_20_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_13_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_21_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_14_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_22_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_15_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_24_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_16_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_25_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_17_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_18_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_0_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_1_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_2_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_3_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_4_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_5_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_6_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_7_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_8_0 : STD_LOGIC; 
  signal DIO_SW_1_IBUF_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal counter_inst_PWR_7_o_count_reg_5_equal_1_o : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal counter_inst_GND_7_o_count_reg_5_equal_4_o : STD_LOGIC; 
  signal lapso_bueno : STD_LOGIC; 
  signal counter_inst_n0039_inv : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_5_890 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_6_892 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_1_893 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count1_895 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count3_896 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count2_897 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_9_0 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_23_0 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_clear_inv : STD_LOGIC; 
  signal bin2bcd_inst_BCD_uni_2_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_Q : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_Q : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_Q : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_Q : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_Q : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_Q : STD_LOGIC;
 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_Q_920 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_Q_925 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_Q_930 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_Q_935 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_Q_940 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_3 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_4_944 : STD_LOGIC; 
  signal precaler_inst_N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS0 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS1 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS2 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS3 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS4 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS5 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS6 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_STATUS7 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_LOCKED : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLK90 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_PSDONE : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLKDV : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLKFX180 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLK270 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLK180 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLKFX : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLK2X : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLK2X180 : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_PSEN_INT : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLKFB_INT : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_CLKIN_INT : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_PSINCDEC_INT : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_RST_INT : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_PSCLK_INT : STD_LOGIC; 
  signal DCM_inst_dcm_sp_inst_DSSEN : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rt_25 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rt_22 : STD_LOGIC;
 
  signal ProtoComp35_CYINITGND_0 : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rt_13 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rt_50 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rt_47 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rt_44 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rt_35 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rt_72 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rt_69 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rt_66 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rt_57 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rt_94 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rt_91 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rt_88 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rt_79 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rt_116 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rt_113 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rt_110 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rt_101 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rt_138 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rt_135 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rt_132 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rt_123 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rt_154 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rt_151 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rt_149 : STD_LOGIC;
 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta1 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta2 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta3 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta4 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta5 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta6 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta7 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta8 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta9 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta10 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta11 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta12 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta13 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta14 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta15 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta16 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta17 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta18 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta19 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta20 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta21 : STD_LOGIC; 
  signal DIO_SW_1_IBUF_363 : STD_LOGIC; 
  signal DCM_inst_clkin1 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv : STD_LOGIC; 
  signal ProtoComp43_IINV_OUT : STD_LOGIC; 
  signal lapso_bueno_non_inverted : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rstpot_404 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rstpot_403 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rstpot_402 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rstpot_392 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rstpot_427 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rstpot_426 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rstpot_425 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rstpot_415 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rstpot_444 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rstpot_443 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rstpot_442 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rstpot_432 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rstpot_461 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rstpot_460 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rstpot_459 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rstpot_449 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rstpot_478 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rstpot_477 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rstpot_476 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_rstpot_466 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rstpot_500 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rstpot_520 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rstpot_509 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rstpot_504 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i : STD_LOGIC; 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rstpot_583 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rstpot_572 : STD_LOGIC;
 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rstpot_567 : STD_LOGIC;
 
  signal N18_pack_13 : STD_LOGIC; 
  signal N21_pack_10 : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_estado_FSM_FFd1_In : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_estado_1_actualizar_Mux_5_o : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_salida_rstpot_715 : STD_LOGIC; 
  signal bin2bcd_inst_salidas_vdecena_1_pack_11 : STD_LOGIC; 
  signal bin2bcd_inst_Mmux_salidas_vunidad_rs_B_1_pack_9 : STD_LOGIC; 
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_DCM_inst_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIO_LED_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIO_LED_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIO_LED_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIO_LED_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIO_LED_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIO_LED_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIO_LED_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_thresh0_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_CLK : STD_LOGIC;
 
  signal NlwBufferSignal_counter_inst_count_reg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_count_reg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_count_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_count_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_count_reg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_count_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_actualizar_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_salida_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_dec_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_dec_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_dec_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_uni_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_dec_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_dec_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_q_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_uni_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_uni_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_uni_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_bin2bcd_inst_BCD_uni_0_IN : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_precaler_inst_N1_23_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_N1_24_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_25_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_19_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_N1_20_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_21_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_22_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_15_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_N1_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_11_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_N1_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_13_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_7_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_N1_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_9_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_3_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_N1_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_5_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_DI_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_DI_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_O_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_S_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_precaler_inst_N1_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_precaler_inst_N1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_18_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_19_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_20_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_21_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_14_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_15_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_16_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_17_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_10_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_12_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_6_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_2_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_1_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIO_LED_8_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_cuenta : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal counter_inst_count_reg : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output : STD_LOGIC_VECTOR ( 27 downto 1 ); 
  signal counter_inst_q : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_0 : STD_LOGIC_VECTOR ( 26 downto 26 ); 
  signal bin2bcd_inst_BCD_uni : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal bin2bcd_inst_BCD_dec : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal bin2bcd_inst_Mmux_salidas_vunidad_rs_B : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal bin2bcd_inst_Mmux_salidas_vunidad_rs_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal bin2bcd_inst_salidas_vdecena : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_halfsum : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal counter_inst_count_next : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal bin2bcd_inst_salidas_vunidad : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X3Y12"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I,
      O => DCM_inst_dcm_sp_inst_ML_NEW_O
    );
  SP6_BUFIO_INSERT_ML_BUFIO2_0 : X_BUFIO2
    generic map(
      DIVIDE => 1,
      DIVIDE_BYPASS => TRUE,
      I_INVERT => FALSE,
      USE_DOUBLER => FALSE,
      LOC => "BUFIO2_X3Y12"
    )
    port map (
      DIVCLK => DCM_inst_dcm_sp_inst_ML_NEW_DIVCLK,
      I => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I,
      IOCLK => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED,
      SERDESSTROBE => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED
    );
  DCM_inst_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_DCM_inst_clkout1_buf_IN,
      O => mclk
    );
  DCM_inst_dcm_sp_inst_PSENINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => DCM_inst_dcm_sp_inst_PSEN_INT
    );
  DCM_inst_dcm_sp_inst_CLKFB : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_inst_dcm_sp_inst_ML_NEW_O,
      O => DCM_inst_dcm_sp_inst_CLKFB_INT
    );
  DCM_inst_dcm_sp_inst_CLKIN : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_inst_dcm_sp_inst_ML_NEW_DIVCLK,
      O => DCM_inst_dcm_sp_inst_CLKIN_INT
    );
  DCM_inst_dcm_sp_inst_PSINCDECINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => DCM_inst_dcm_sp_inst_PSINCDEC_INT
    );
  DCM_inst_dcm_sp_inst_RSTINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst,
      O => DCM_inst_dcm_sp_inst_RST_INT
    );
  DCM_inst_dcm_sp_inst_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => DCM_inst_dcm_sp_inst_PSCLK_INT
    );
  DCM_inst_dcm_sp_inst : X_DCM_SP
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
      PSCLK => DCM_inst_dcm_sp_inst_PSCLK_INT,
      RST => DCM_inst_dcm_sp_inst_RST_INT,
      PSINCDEC => DCM_inst_dcm_sp_inst_PSINCDEC_INT,
      CLKIN => DCM_inst_dcm_sp_inst_CLKIN_INT,
      CLKFB => DCM_inst_dcm_sp_inst_CLKFB_INT,
      PSEN => DCM_inst_dcm_sp_inst_PSEN_INT,
      DSSEN => DCM_inst_dcm_sp_inst_DSSEN,
      CLK2X180 => DCM_inst_dcm_sp_inst_CLK2X180,
      CLK2X => DCM_inst_dcm_sp_inst_CLK2X,
      CLKFX => DCM_inst_dcm_sp_inst_CLKFX,
      CLK180 => DCM_inst_dcm_sp_inst_CLK180,
      CLK270 => DCM_inst_dcm_sp_inst_CLK270,
      CLK0 => DCM_inst_clk0,
      CLKFX180 => DCM_inst_dcm_sp_inst_CLKFX180,
      CLKDV => DCM_inst_dcm_sp_inst_CLKDV,
      PSDONE => DCM_inst_dcm_sp_inst_PSDONE,
      CLK90 => DCM_inst_dcm_sp_inst_CLK90,
      LOCKED => DCM_inst_dcm_sp_inst_LOCKED,
      STATUS(7) => DCM_inst_dcm_sp_inst_STATUS7,
      STATUS(6) => DCM_inst_dcm_sp_inst_STATUS6,
      STATUS(5) => DCM_inst_dcm_sp_inst_STATUS5,
      STATUS(4) => DCM_inst_dcm_sp_inst_STATUS4,
      STATUS(3) => DCM_inst_dcm_sp_inst_STATUS3,
      STATUS(2) => DCM_inst_dcm_sp_inst_STATUS2,
      STATUS(1) => DCM_inst_dcm_sp_inst_STATUS1,
      STATUS(0) => DCM_inst_dcm_sp_inst_STATUS0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(3),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_3_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(2),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_2_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(1),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_1_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(0),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_0_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(4),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rt_13
    );
  precaler_inst_N1_23_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_23_D5LUT_O_UNCONNECTED
    );
  ProtoComp35_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X34Y64"
    )
    port map (
      O => ProtoComp35_CYINITGND_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux : 
X_CARRY4
    generic map(
      LOC => "SLICE_X34Y64"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp35_CYINITGND_0,
      CO(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_Q,
      CO(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux_CO_2_UNCONNECTED
,
      CO(1) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux_CO_1_UNCONNECTED
,
      CO(0) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux_CO_0_UNCONNECTED
,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(3),
      O(2) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(2),
      O(1) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(1),
      O(0) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(0),
      S(3) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rt_13,
      S(2) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rt_22,
      S(1) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rt_25,
      S(0) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_halfsum(0)
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(3),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rt_22
    );
  precaler_inst_N1_24_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_24_C5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(2),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rt_25
    );
  precaler_inst_N1_25_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_25_B5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_Mxor_i_simple_model_halfsum_0_xo_0_1_INV_0 : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(1),
      ADR5 => '1',
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_halfsum(0)
    );
  precaler_inst_N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y64",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N0_A5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(7),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_7_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(6),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_6_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(5),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_5_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(4),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_4_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(8),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rt_35
    );
  precaler_inst_N1_19_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_19_D5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux : 
X_CARRY4
    generic map(
      LOC => "SLICE_X34Y65"
    )
    port map (
      CI => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_3_Q,
      CYINIT => '0',
      CO(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_Q,
      CO(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux_CO_2_UNCONNECTED
,
      CO(1) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux_CO_1_UNCONNECTED
,
      CO(0) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux_CO_0_UNCONNECTED
,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(7),
      O(2) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(6),
      O(1) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(5),
      O(0) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(4),
      S(3) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rt_35,
      S(2) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rt_44,
      S(1) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rt_47,
      S(0) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rt_50
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(7),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rt_44
    );
  precaler_inst_N1_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_20_C5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(6),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rt_47
    );
  precaler_inst_N1_21_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_21_B5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(5),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rt_50
    );
  precaler_inst_N1_22_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_22_A5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(11),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_11_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(10),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_10_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(9),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_9_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(8),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_8_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(12),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rt_57
    );
  precaler_inst_N1_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_15_D5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux : 
X_CARRY4
    generic map(
      LOC => "SLICE_X34Y66"
    )
    port map (
      CI => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_7_Q,
      CYINIT => '0',
      CO(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_Q,
      CO(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux_CO_2_UNCONNECTED
,
      CO(1) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux_CO_1_UNCONNECTED
,
      CO(0) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux_CO_0_UNCONNECTED
,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(11),
      O(2) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(10),
      O(1) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(9),
      O(0) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(8),
      S(3) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rt_57,
      S(2) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rt_66,
      S(1) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rt_69,
      S(0) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rt_72
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(11),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rt_66
    );
  precaler_inst_N1_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_16_C5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(10),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rt_69
    );
  precaler_inst_N1_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_17_B5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(9),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rt_72
    );
  precaler_inst_N1_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_18_A5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(15),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_15_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(14),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_14_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(13),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_13_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(12),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_12_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(16),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rt_79
    );
  precaler_inst_N1_11_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_11_D5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux : 
X_CARRY4
    generic map(
      LOC => "SLICE_X34Y67"
    )
    port map (
      CI => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_11_Q,
      CYINIT => '0',
      CO(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_Q,
      CO(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux_CO_2_UNCONNECTED
,
      CO(1) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux_CO_1_UNCONNECTED
,
      CO(0) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux_CO_0_UNCONNECTED
,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(15),
      O(2) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(14),
      O(1) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(13),
      O(0) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(12),
      S(3) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rt_79,
      S(2) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rt_88,
      S(1) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rt_91,
      S(0) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rt_94
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(15),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rt_88
    );
  precaler_inst_N1_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_12_C5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(14),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rt_91
    );
  precaler_inst_N1_13_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_13_B5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(13),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rt_94
    );
  precaler_inst_N1_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_14_A5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(19),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_19_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(18),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_18_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(17),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_17_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(16),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_16_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(20),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rt_101
    );
  precaler_inst_N1_7_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_7_D5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux : 
X_CARRY4
    generic map(
      LOC => "SLICE_X34Y68"
    )
    port map (
      CI => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_15_Q,
      CYINIT => '0',
      CO(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_Q,
      CO(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux_CO_2_UNCONNECTED
,
      CO(1) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux_CO_1_UNCONNECTED
,
      CO(0) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux_CO_0_UNCONNECTED
,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(19),
      O(2) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(18),
      O(1) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(17),
      O(0) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(16),
      S(3) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rt_101,
      S(2) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rt_110,
      S(1) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rt_113,
      S(0) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rt_116
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(19),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rt_110
    );
  precaler_inst_N1_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_8_C5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(18),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rt_113
    );
  precaler_inst_N1_9_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_9_B5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(17),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rt_116
    );
  precaler_inst_N1_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_10_A5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(23),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_23_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(22),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_22_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(21),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_21_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(20),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_20_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(24),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rt_123
    );
  precaler_inst_N1_3_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_3_D5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux : 
X_CARRY4
    generic map(
      LOC => "SLICE_X34Y69"
    )
    port map (
      CI => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_19_Q,
      CYINIT => '0',
      CO(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_Q,
      CO(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux_CO_2_UNCONNECTED
,
      CO(1) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux_CO_1_UNCONNECTED
,
      CO(0) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux_CO_0_UNCONNECTED
,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(23),
      O(2) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(22),
      O(1) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(21),
      O(0) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(20),
      S(3) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rt_123,
      S(2) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rt_132,
      S(1) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rt_135,
      S(0) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rt_138
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(23),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rt_132
    );
  precaler_inst_N1_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_4_C5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(22),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rt_135
    );
  precaler_inst_N1_5_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_5_B5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(21),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rt_138
    );
  precaler_inst_N1_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_6_A5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(26),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(25),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_25_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(24),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_24_0
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop : 
X_CARRY4
    generic map(
      LOC => "SLICE_X34Y70"
    )
    port map (
      CI => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_carry_simple_23_Q,
      CYINIT => '0',
      CO(3) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_3_UNCONNECTED
,
      CO(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_2_UNCONNECTED
,
      CO(1) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_1_UNCONNECTED
,
      CO(0) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_CO_0_UNCONNECTED
,
      DI(3) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_DI_3_UNCONNECTED
,
      DI(2) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_DI_2_UNCONNECTED
,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_O_3_UNCONNECTED
,
      O(2) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(26),
      O(1) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(25),
      O(0) => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next(24),
      S(3) => 
NLW_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_simple_model_i_gt_1_carryxortop_S_3_UNCONNECTED
,
      S(2) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rt_149,
      S(1) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rt_151,
      S(0) => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rt_154
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y70",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(27),
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rt_149
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y70",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(26),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rt_151
    );
  precaler_inst_N1_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_B5LUT_O_UNCONNECTED
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rt : 
X_LUT6
    generic map(
      LOC => "SLICE_X34Y70",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(25),
      ADR5 => '1',
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rt_154
    );
  precaler_inst_N1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_precaler_inst_N1_2_A5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_3 : X_FF
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_3_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta3,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(3),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"A5A50000A5A50000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(3),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(3)
    );
  DIO_LED_8_OBUF_1_18_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_18_D5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_2 : X_FF
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_2_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta2,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(2),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y18"
    )
    port map (
      CI => '0',
      CYINIT => counter_inst_FSM_lapso_inst_antirebote_inst_clear_inv,
      CO(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_Q_920,
      CO(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta3,
      O(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta2,
      O(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta1,
      O(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta,
      S(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(3),
      S(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(2),
      S(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(1),
      S(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(0)
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"AA550000AA550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(2),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(2)
    );
  DIO_LED_8_OBUF_1_19_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_19_C5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_1 : X_FF
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_1_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta1,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(1),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"AA550000AA550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(1),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(1)
    );
  DIO_LED_8_OBUF_1_20_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_20_B5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_0 : X_FF
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_0_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(0),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"8888444488884444"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(0)
    );
  DIO_LED_8_OBUF_1_21_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_21_A5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_7 : X_FF
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_7_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta7,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(7),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"F00F0000F00F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(7),
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(7)
    );
  DIO_LED_8_OBUF_1_14_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_14_D5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_6 : X_FF
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_6_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta6,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(6),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y19"
    )
    port map (
      CI => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_3_Q_920,
      CYINIT => '0',
      CO(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_Q_925,
      CO(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta7,
      O(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta6,
      O(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta5,
      O(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta4,
      S(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(7),
      S(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(6),
      S(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(5),
      S(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(4)
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"AA550000AA550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(6),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(6)
    );
  DIO_LED_8_OBUF_1_15_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_15_C5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_5 : X_FF
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_5_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta5,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(5),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"F00000F0F00000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(5),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(5)
    );
  DIO_LED_8_OBUF_1_16_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_16_B5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_4 : X_FF
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_4_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta4,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(4),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"9900990099009900"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(4),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(4)
    );
  DIO_LED_8_OBUF_1_17_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_17_A5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_11 : X_FF
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_11_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta11,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(11),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"CC330000CC330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(11),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(11)
    );
  DIO_LED_8_OBUF_1_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_10_D5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_10 : X_FF
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_10_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta10,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(10),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y20"
    )
    port map (
      CI => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_7_Q_925,
      CYINIT => '0',
      CO(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_Q_930,
      CO(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta11,
      O(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta10,
      O(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta9,
      O(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta8,
      S(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(11),
      S(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(10),
      S(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(9),
      S(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(8)
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"CC330000CC330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(10),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(10)
    );
  DIO_LED_8_OBUF_1_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_11_C5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_9 : X_FF
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_9_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta9,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(9),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"F0000F00F0000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(9),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(9)
    );
  DIO_LED_8_OBUF_1_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_12_B5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_8 : X_FF
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_8_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta8,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(8),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"CC330000CC330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(8),
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(8)
    );
  DIO_LED_8_OBUF_1_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_13_A5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_15 : X_FF
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_15_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta15,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(15),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"A5A50000A5A50000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(15),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(15)
    );
  DIO_LED_8_OBUF_1_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_6_D5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_14 : X_FF
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_14_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta14,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(14),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y21"
    )
    port map (
      CI => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_11_Q_930,
      CYINIT => '0',
      CO(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_Q_935,
      CO(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta15,
      O(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta14,
      O(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta13,
      O(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta12,
      S(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(15),
      S(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(14),
      S(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(13),
      S(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(12)
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"9999000099990000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(14),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(14)
    );
  DIO_LED_8_OBUF_1_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_7_C5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_13 : X_FF
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_13_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta13,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(13),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"F00F0000F00F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(13),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(13)
    );
  DIO_LED_8_OBUF_1_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_8_B5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_12 : X_FF
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_12_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta12,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(12),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"A500A500A500A500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(12),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(12)
    );
  DIO_LED_8_OBUF_1_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_9_A5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_19 : X_FF
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_19_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta19,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(19),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"F00F0000F00F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(19),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(19)
    );
  DIO_LED_8_OBUF_1_2_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_2_D5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_18 : X_FF
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_18_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta18,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(18),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y22"
    )
    port map (
      CI => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_15_Q_935,
      CYINIT => '0',
      CO(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_Q_940,
      CO(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta19,
      O(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta18,
      O(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta17,
      O(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta16,
      S(3) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(19),
      S(2) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(18),
      S(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(17),
      S(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(16)
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"CC330000CC330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(18),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(18)
    );
  DIO_LED_8_OBUF_1_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_3_C5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_17 : X_FF
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_17_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta17,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(17),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"F0000F00F0000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(17),
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(17)
    );
  DIO_LED_8_OBUF_1_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_4_B5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_16 : X_FF
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_16_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta16,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(16),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"C300C300C300C300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(16),
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(16)
    );
  DIO_LED_8_OBUF_1_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_1_5_A5LUT_O_UNCONNECTED
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y23"
    )
    port map (
      CI => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_cy_19_Q_940,
      CYINIT => '0',
      CO(3) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_3_UNCONNECTED,
      CO(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_CO_0_UNCONNECTED,
      DI(3) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_DI_3_UNCONNECTED,
      DI(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_DI_2_UNCONNECTED,
      DI(1) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_O_3_UNCONNECTED,
      O(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_O_2_UNCONNECTED,
      O(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta21,
      O(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta20,
      S(3) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_S_3_UNCONNECTED,
      S(2) => NLW_counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_xor_21_S_2_UNCONNECTED,
      S(1) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(21),
      S(0) => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(20)
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_21 : X_FF
    generic map(
      LOC => "SLICE_X48Y23",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_21_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta21,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(21),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y23",
      INIT => X"F00F0000F00F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(21),
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(21)
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_20 : X_FF
    generic map(
      LOC => "SLICE_X48Y23",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_20_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta20,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(20),
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y23",
      INIT => X"A500A500A500A500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(20),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => '1',
      O => counter_inst_FSM_lapso_inst_antirebote_inst_Mcount_cuenta_lut(20)
    );
  DIO_LED_8_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DIO_LED_8_OBUF_A5LUT_O_UNCONNECTED
    );
  DIO_SW_1_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIO_SW_1_IBUF_363,
      I => DIO_SW(1)
    );
  ProtoComp41_IMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIO_SW_1_IBUF_363,
      O => DIO_SW_1_IBUF_0
    );
  DCM_inst_clkin1_buf : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 202 ps
    )
    port map (
      O => DCM_inst_clkin1,
      I => CLK1
    );
  ProtoComp41_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_inst_clkin1,
      O => DCM_inst_clkin1_0
    );
  DIO_LED_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_DIO_LED_1_OBUF_I,
      O => DIO_LED(1)
    );
  IBUFG_inst : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv,
      I => DIO_BTN(1)
    );
  ProtoComp41_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv_0
    );
  DIO_LED_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_DIO_LED_2_OBUF_I,
      O => DIO_LED(2)
    );
  DIO_BTN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      O => lapso_bueno_non_inverted,
      I => DIO_BTN(2)
    );
  ProtoComp43_IMUX : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp43_IINV_OUT,
      O => lapso_bueno
    );
  ProtoComp43_IINV : X_INV
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      I => lapso_bueno_non_inverted,
      O => ProtoComp43_IINV_OUT
    );
  DIO_LED_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_DIO_LED_3_OBUF_I,
      O => DIO_LED(3)
    );
  DIO_LED_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_DIO_LED_4_OBUF_I,
      O => DIO_LED(4)
    );
  DIO_LED_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_DIO_LED_5_OBUF_I,
      O => DIO_LED(5)
    );
  DIO_LED_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => NlwBufferSignal_DIO_LED_6_OBUF_I,
      O => DIO_LED(6)
    );
  DIO_LED_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_DIO_LED_7_OBUF_I,
      O => DIO_LED(7)
    );
  DIO_LED_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => '0',
      O => DIO_LED(8)
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8 : X_FF
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rstpot_403
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(8),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => X"3300330033003300"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_7_0,
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_rstpot_403

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rstpot_402
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(7),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_6_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_rstpot_402

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rstpot_404
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(6),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_5_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_rstpot_404

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rstpot_392
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(5),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y65",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_4_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_rstpot_392

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_7 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y66",
      INIT => X"0000000000000005"
    )
    port map (
      ADR1 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_9_0,
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_8_0,
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_10_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_11_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_12_0,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_6_892
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rstpot_426
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(15),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_14_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_rstpot_426

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rstpot_425
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(14),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_13_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_rstpot_425

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rstpot_427
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(13),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_12_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_rstpot_427

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rstpot_415
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(12),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y67",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_11_0,
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_rstpot_415

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rstpot_443
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(19),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_18_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_rstpot_443

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rstpot_442
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(18),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_17_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_rstpot_442

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rstpot_444
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(17),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_16_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_rstpot_444

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rstpot_432
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(16),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y68",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_15_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_rstpot_432

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rstpot_460
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(23),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_22_0,
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_rstpot_460

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rstpot_459
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(22),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => X"00AA00AA00AA00AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_21_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_rstpot_459

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rstpot_461
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(21),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => X"00000000AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_20_0,
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_rstpot_461

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20 : 
X_FF
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rstpot_449
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(20),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_19_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_rstpot_449

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4 : X_FF
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rstpot_477
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(4),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_3_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_rstpot_477

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3 : X_FF
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rstpot_476
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(3),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_2_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_rstpot_476

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2 : X_FF
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rstpot_478
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(2),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_1_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_rstpot_478

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1 : X_FF
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_rstpot_466
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(1),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y64",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_0_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_rstpot_466

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_2 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y65",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_0_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_1_0,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_1_893
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count2 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y66",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(24),
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(23),
      ADR5 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(1),
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(25),
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(3),
      ADR1 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(2),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count2_897
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y67",
      INIT => X"C000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(7),
      ADR5 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(6),
      ADR1 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(27),
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(14),
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(8),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count1_895
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27 : 
X_FF
    generic map(
      LOC => "SLICE_X36Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rstpot_500
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(27),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y67",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_rstpot_500

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26 : 
X_FF
    generic map(
      LOC => "SLICE_X36Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rstpot_504
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(26),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y68",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_25_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_rstpot_504

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25 : 
X_FF
    generic map(
      LOC => "SLICE_X36Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rstpot_509
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(25),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y68",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_24_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_rstpot_509

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y68",
      INIT => X"EAAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => rst,
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(4),
      ADR5 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(5),
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count1_895,
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count3_896,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count2_897,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24 : 
X_FF
    generic map(
      LOC => "SLICE_X36Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rstpot_520
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(24),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X36Y68",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_23_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_rstpot_520

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_5 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y69",
      INIT => X"00000000A0000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_18_0,
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_19_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_20_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_21_0,
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_22_0,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_4_944
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_4 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y69",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_24_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_23_0,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_3
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y69",
      INIT => X"FBFFFFFFFFFFFFFF"
    )
    port map (
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_15_0,
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_16_0,
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_17_0,
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_25_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_26_0,
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_1_893,
      O => precaler_inst_N2
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_thresh0_i : X_SFF
    generic map(
      LOC => "SLICE_X36Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_thresh0_i_CLK,
      I => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i,
      O => enable_cnt,
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_8 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y69",
      INIT => X"0000800000000000"
    )
    port map (
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_5_890,
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_0(26),
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_6_892,
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_3,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_4_944,
      ADR4 => precaler_inst_N2,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i
    );
  counter_inst_Mmux_count_next_rs_xor_2_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y81",
      INIT => X"0F0FFFFF8F0FFFFF"
    )
    port map (
      ADR4 => counter_inst_count_reg(1),
      ADR3 => counter_inst_count_reg(3),
      ADR0 => counter_inst_count_reg(5),
      ADR1 => counter_inst_count_reg(4),
      ADR5 => counter_inst_count_reg(2),
      ADR2 => counter_inst_count_reg(0),
      O => N6
    );
  counter_inst_Mmux_count_next_rs_xor_2_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y81",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_count_reg(1),
      ADR5 => counter_inst_count_reg(0),
      O => N5
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_1 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y65",
      INIT => X"8000000000000000"
    )
    port map (
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_2_0,
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_3_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_4_0,
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_5_0,
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_6_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_7_0,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_0(26)
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11 : 
X_FF
    generic map(
      LOC => "SLICE_X37Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rstpot_567
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(11),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X37Y66",
      INIT => X"3300330033003300"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_10_0,
      ADR1 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_rstpot_567

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10 : 
X_FF
    generic map(
      LOC => "SLICE_X37Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rstpot_572
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(10),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X37Y66",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_9_0,
      ADR3 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_rstpot_572

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y66",
      INIT => X"FF80FF00FF00FF00"
    )
    port map (
      ADR3 => rst,
      ADR1 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(4),
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(5),
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count1_895,
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count3_896,
      ADR0 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count2_897,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9 : X_FF
    generic map(
      LOC => "SLICE_X37Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_CLK
,
      I => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rstpot_583
,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(9),
      RST => GND,
      SET => GND
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rstpot : 
X_LUT6
    generic map(
      LOC => "SLICE_X37Y66",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_8_0,
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count4_842,
      O => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_rstpot_583

    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_6 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y67",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_14_0,
      ADR5 => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_next_13_0,
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_thresh0_i_26_5_890
    );
  precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count3 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y68",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(16),
      ADR2 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(15),
      ADR5 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(19),
      ADR1 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(17),
      ADR3 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(22),
      ADR0 => 
precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output(21),
      O => precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_clear_count3_896
    );
  counter_inst_count_reg_5_counter_inst_count_reg_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N18_pack_13,
      O => N18
    );
  counter_inst_count_reg_5_counter_inst_count_reg_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N21_pack_10,
      O => N21
    );
  counter_inst_Mmux_count_next_rs_xor_5_11_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => counter_inst_count_reg(4),
      ADR2 => counter_inst_count_reg(3),
      ADR4 => counter_inst_count_reg(2),
      ADR3 => counter_inst_count_reg(1),
      ADR0 => counter_inst_count_reg(0),
      ADR5 => '1',
      O => N17
    );
  counter_inst_Mmux_count_next_rs_xor_5_11_SW5 : X_LUT5
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => X"80000000"
    )
    port map (
      ADR1 => counter_inst_count_reg(4),
      ADR2 => counter_inst_count_reg(3),
      ADR4 => counter_inst_count_reg(2),
      ADR3 => counter_inst_count_reg(1),
      ADR0 => counter_inst_count_reg(0),
      O => N18_pack_13
    );
  counter_inst_count_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => '0'
    )
    port map (
      CE => enable_cnt,
      CLK => NlwBufferSignal_counter_inst_count_reg_5_CLK,
      I => counter_inst_count_next(5),
      O => counter_inst_count_reg(5),
      RST => rst,
      SET => GND
    );
  counter_inst_Mmux_count_next_rs_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => X"307433BB337730B8"
    )
    port map (
      ADR1 => DIO_SW_1_IBUF_0,
      ADR5 => N17,
      ADR2 => counter_inst_GND_7_o_count_reg_5_equal_4_o,
      ADR4 => counter_inst_count_reg(5),
      ADR3 => counter_inst_PWR_7_o_count_reg_5_equal_1_o,
      ADR0 => N18,
      O => counter_inst_count_next(5)
    );
  counter_inst_Mmux_count_next_rs_xor_4_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => X"0000001100000011"
    )
    port map (
      ADR2 => '1',
      ADR1 => counter_inst_count_reg(3),
      ADR3 => counter_inst_count_reg(2),
      ADR4 => counter_inst_count_reg(1),
      ADR0 => counter_inst_count_reg(0),
      ADR5 => '1',
      O => N20
    );
  counter_inst_Mmux_count_next_rs_xor_4_11_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => X"88000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => counter_inst_count_reg(3),
      ADR3 => counter_inst_count_reg(2),
      ADR4 => counter_inst_count_reg(1),
      ADR0 => counter_inst_count_reg(0),
      O => N21_pack_10
    );
  counter_inst_count_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => '0'
    )
    port map (
      CE => enable_cnt,
      CLK => NlwBufferSignal_counter_inst_count_reg_4_CLK,
      I => counter_inst_count_next(4),
      O => counter_inst_count_reg(4),
      RST => rst,
      SET => GND
    );
  counter_inst_Mmux_count_next_rs_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => X"03300330AAFFFFAA"
    )
    port map (
      ADR5 => DIO_SW_1_IBUF_0,
      ADR4 => N20,
      ADR0 => counter_inst_GND_7_o_count_reg_5_equal_4_o,
      ADR3 => counter_inst_count_reg(4),
      ADR1 => counter_inst_PWR_7_o_count_reg_5_equal_1_o,
      ADR2 => N21,
      O => counter_inst_count_next(4)
    );
  counter_inst_PWR_7_o_count_reg_5_equal_1_o_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => X"4000000000000000"
    )
    port map (
      ADR4 => counter_inst_count_reg(5),
      ADR2 => counter_inst_count_reg(4),
      ADR5 => counter_inst_count_reg(3),
      ADR0 => counter_inst_count_reg(2),
      ADR3 => counter_inst_count_reg(1),
      ADR1 => counter_inst_count_reg(0),
      O => counter_inst_PWR_7_o_count_reg_5_equal_1_o
    );
  counter_inst_Mmux_count_next_rs_xor_1_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => X"FFFF5F5FFFFF5F5F"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => counter_inst_count_reg(4),
      ADR0 => counter_inst_count_reg(3),
      ADR4 => counter_inst_count_reg(2),
      O => N10
    );
  counter_inst_count_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => '0'
    )
    port map (
      CE => enable_cnt,
      CLK => NlwBufferSignal_counter_inst_count_reg_1_CLK,
      I => counter_inst_count_next(1),
      O => counter_inst_count_reg(1),
      RST => rst,
      SET => GND
    );
  counter_inst_Mmux_count_next_rs_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => X"12123212A5A5A5A5"
    )
    port map (
      ADR1 => counter_inst_PWR_7_o_count_reg_5_equal_1_o,
      ADR5 => DIO_SW_1_IBUF_0,
      ADR0 => counter_inst_count_reg(0),
      ADR2 => counter_inst_count_reg(1),
      ADR3 => counter_inst_count_reg(5),
      ADR4 => N10,
      O => counter_inst_count_next(1)
    );
  counter_inst_count_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => '0'
    )
    port map (
      CE => enable_cnt,
      CLK => NlwBufferSignal_counter_inst_count_reg_0_CLK,
      I => counter_inst_count_next(0),
      O => counter_inst_count_reg(0),
      RST => rst,
      SET => GND
    );
  counter_inst_Mmux_count_next_rs_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => counter_inst_count_reg(0),
      ADR4 => '1',
      ADR3 => '1',
      O => counter_inst_count_next(0)
    );
  counter_inst_Mmux_count_next_rs_xor_3_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => X"D555556655555566"
    )
    port map (
      ADR0 => counter_inst_count_reg(3),
      ADR4 => counter_inst_count_reg(0),
      ADR1 => DIO_SW_1_IBUF_0,
      ADR3 => counter_inst_count_reg(1),
      ADR2 => counter_inst_count_reg(4),
      ADR5 => counter_inst_count_reg(5),
      O => N23
    );
  counter_inst_count_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => '0'
    )
    port map (
      CE => enable_cnt,
      CLK => NlwBufferSignal_counter_inst_count_reg_3_CLK,
      I => counter_inst_count_next(3),
      O => counter_inst_count_reg(3),
      RST => rst,
      SET => GND
    );
  counter_inst_Mmux_count_next_rs_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => X"70F080007FFF8F0F"
    )
    port map (
      ADR2 => counter_inst_count_reg(2),
      ADR5 => N23,
      ADR0 => counter_inst_count_reg(1),
      ADR4 => counter_inst_count_reg(3),
      ADR1 => counter_inst_count_reg(0),
      ADR3 => DIO_SW_1_IBUF_0,
      O => counter_inst_count_next(3)
    );
  counter_inst_GND_7_o_count_reg_5_equal_4_o_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => X"0000000000000001"
    )
    port map (
      ADR4 => counter_inst_count_reg(5),
      ADR2 => counter_inst_count_reg(4),
      ADR3 => counter_inst_count_reg(3),
      ADR0 => counter_inst_count_reg(2),
      ADR1 => counter_inst_count_reg(1),
      ADR5 => counter_inst_count_reg(0),
      O => counter_inst_GND_7_o_count_reg_5_equal_4_o
    );
  counter_inst_count_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => '0'
    )
    port map (
      CE => enable_cnt,
      CLK => NlwBufferSignal_counter_inst_count_reg_2_CLK,
      I => counter_inst_count_next(2),
      O => counter_inst_count_reg(2),
      RST => rst,
      SET => GND
    );
  counter_inst_Mmux_count_next_rs_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => X"FBFBC8FB04043704"
    )
    port map (
      ADR1 => DIO_SW_1_IBUF_0,
      ADR0 => N6,
      ADR2 => counter_inst_PWR_7_o_count_reg_5_equal_1_o,
      ADR5 => counter_inst_count_reg(2),
      ADR3 => N5,
      ADR4 => counter_inst_GND_7_o_count_reg_5_equal_4_o,
      O => counter_inst_count_next(2)
    );
  counter_inst_FSM_lapso_inst_estado_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X46Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_CLK,
      I => NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_IN,
      O => counter_inst_FSM_lapso_inst_estado_FSM_FFd2_810,
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_estado_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X46Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd1_CLK,
      I => counter_inst_FSM_lapso_inst_estado_FSM_FFd1_In,
      O => counter_inst_FSM_lapso_inst_estado_FSM_FFd1_813,
      RST => rst,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_estado_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y34",
      INIT => X"F3F3F3F30C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => counter_inst_FSM_lapso_inst_estado_FSM_FFd1_813,
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_salida_812,
      ADR1 => counter_inst_FSM_lapso_inst_estado_FSM_FFd2_810,
      O => counter_inst_FSM_lapso_inst_estado_FSM_FFd1_In
    );
  counter_inst_FSM_lapso_inst_actualizar : X_FF
    generic map(
      LOC => "SLICE_X46Y35",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_actualizar_CLK,
      I => counter_inst_FSM_lapso_inst_estado_1_actualizar_Mux_5_o,
      O => counter_inst_FSM_lapso_inst_actualizar_811,
      SET => rst,
      RST => GND
    );
  counter_inst_FSM_lapso_inst_Mmux_estado_1_actualizar_Mux_5_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y35",
      INIT => X"FCF3FCF330C030C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => counter_inst_FSM_lapso_inst_estado_FSM_FFd2_810,
      ADR5 => counter_inst_FSM_lapso_inst_actualizar_811,
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_salida_812,
      ADR2 => counter_inst_FSM_lapso_inst_estado_FSM_FFd1_813,
      O => counter_inst_FSM_lapso_inst_estado_1_actualizar_Mux_5_o
    );
  rst1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y40",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv_0,
      O => rst
    );
  counter_inst_n0039_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y43",
      INIT => X"F0F0000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv_0,
      ADR5 => enable_cnt,
      ADR4 => counter_inst_FSM_lapso_inst_actualizar_811,
      O => counter_inst_n0039_inv
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_salida : X_FF
    generic map(
      LOC => "SLICE_X48Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_salida_CLK,
      I => counter_inst_FSM_lapso_inst_antirebote_inst_salida_rstpot_715,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_salida_812,
      RST => GND,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_salida_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X48Y24",
      INIT => X"FFF7FFF780008000"
    )
    port map (
      ADR4 => '1',
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(21),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR5 => counter_inst_FSM_lapso_inst_antirebote_inst_salida_812,
      ADR2 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR1 => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv_0,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_salida_rstpot_715
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y18",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv_0,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_CLK,
      I => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_IN,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      RST => GND,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y18",
      INIT => X"55FFAAFF55FFAAFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      ADR3 => counter_inst_FSM_lapso_inst_antirebote_inst_cuenta(21),
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      O => counter_inst_FSM_lapso_inst_antirebote_inst_n0023_inv
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0 : X_FF
    generic map(
      LOC => "SLICE_X49Y18",
      INIT => '0'
    )
    port map (
      CE => counter_inst_FSM_lapso_inst_antirebote_inst_rst_inv_0,
      CLK => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_CLK,
      I => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_IN,
      O => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      RST => GND,
      SET => GND
    );
  counter_inst_FSM_lapso_inst_antirebote_inst_clear_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y18",
      INIT => X"AAAAAAAA55555555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      ADR4 => '1',
      ADR0 => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(1),
      O => counter_inst_FSM_lapso_inst_antirebote_inst_clear_inv
    );
  bin2bcd_inst_BCD_dec_2_bin2bcd_inst_BCD_dec_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_salidas_vdecena_1_pack_11,
      O => bin2bcd_inst_salidas_vdecena(1)
    );
  bin2bcd_inst_BCD_dec_2_bin2bcd_inst_BCD_dec_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_Mmux_salidas_vunidad_rs_B_1_pack_9,
      O => bin2bcd_inst_Mmux_salidas_vunidad_rs_B(1)
    );
  bin2bcd_inst_BCD_dec_2 : X_SFF
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_bin2bcd_inst_BCD_dec_2_CLK,
      I => bin2bcd_inst_salidas_vdecena(2),
      O => bin2bcd_inst_BCD_dec(2),
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  bin2bcd_inst_Mmux_salidas_vdecena_2_0_31 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => X"FFF00000FFF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => counter_inst_q(5),
      ADR2 => counter_inst_q(3),
      ADR3 => counter_inst_q(4),
      ADR5 => '1',
      O => bin2bcd_inst_salidas_vdecena(2)
    );
  bin2bcd_inst_salidas_vdecena_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => X"000FFC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => counter_inst_q(2),
      ADR4 => counter_inst_q(5),
      ADR2 => counter_inst_q(3),
      ADR3 => counter_inst_q(4),
      O => bin2bcd_inst_salidas_vdecena_1_pack_11
    );
  bin2bcd_inst_BCD_dec_1 : X_SFF
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_bin2bcd_inst_BCD_dec_1_CLK,
      I => NlwBufferSignal_bin2bcd_inst_BCD_dec_1_IN,
      O => bin2bcd_inst_BCD_dec(1),
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  bin2bcd_inst_Mmux_salidas_vunidad_rs_lut_3_2 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => X"3CBF2C0B3CBF2C0B"
    )
    port map (
      ADR2 => counter_inst_q(4),
      ADR1 => counter_inst_q(3),
      ADR0 => counter_inst_q(1),
      ADR3 => counter_inst_q(5),
      ADR4 => counter_inst_q(2),
      ADR5 => '1',
      O => bin2bcd_inst_Mmux_salidas_vunidad_rs_lut(3)
    );
  bin2bcd_inst_Mmux_salidas_vunidad_B11 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => X"F38CE338"
    )
    port map (
      ADR2 => counter_inst_q(4),
      ADR1 => counter_inst_q(3),
      ADR0 => counter_inst_q(1),
      ADR3 => counter_inst_q(5),
      ADR4 => counter_inst_q(2),
      O => bin2bcd_inst_Mmux_salidas_vunidad_rs_B_1_pack_9
    );
  bin2bcd_inst_BCD_uni_3 : X_SFF
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_bin2bcd_inst_BCD_uni_3_CLK,
      I => bin2bcd_inst_salidas_vunidad(3),
      O => bin2bcd_inst_BCD_uni(3),
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  bin2bcd_inst_Mmux_salidas_vunidad_rs_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => X"2BD42BD422DD22DD"
    )
    port map (
      ADR4 => '1',
      ADR3 => bin2bcd_inst_Mmux_salidas_vunidad_rs_lut(3),
      ADR1 => counter_inst_q(2),
      ADR2 => counter_inst_q(1),
      ADR0 => bin2bcd_inst_salidas_vdecena(1),
      ADR5 => bin2bcd_inst_Mmux_salidas_vunidad_rs_B(1),
      O => bin2bcd_inst_salidas_vunidad(3)
    );
  bin2bcd_inst_BCD_dec_0 : X_SFF
    generic map(
      LOC => "SLICE_X50Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_bin2bcd_inst_BCD_dec_0_CLK,
      I => NlwBufferSignal_bin2bcd_inst_BCD_dec_0_IN,
      O => bin2bcd_inst_BCD_dec(0),
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  counter_inst_q_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y46",
      INIT => '0'
    )
    port map (
      CE => counter_inst_n0039_inv,
      CLK => NlwBufferSignal_counter_inst_q_3_CLK,
      I => NlwBufferSignal_counter_inst_q_3_IN,
      O => counter_inst_q(3),
      RST => GND,
      SET => GND
    );
  counter_inst_q_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y46",
      INIT => '0'
    )
    port map (
      CE => counter_inst_n0039_inv,
      CLK => NlwBufferSignal_counter_inst_q_2_CLK,
      I => NlwBufferSignal_counter_inst_q_2_IN,
      O => counter_inst_q(2),
      RST => GND,
      SET => GND
    );
  counter_inst_q_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y46",
      INIT => '0'
    )
    port map (
      CE => counter_inst_n0039_inv,
      CLK => NlwBufferSignal_counter_inst_q_1_CLK,
      I => NlwBufferSignal_counter_inst_q_1_IN,
      O => counter_inst_q(1),
      RST => GND,
      SET => GND
    );
  counter_inst_q_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y46",
      INIT => '0'
    )
    port map (
      CE => counter_inst_n0039_inv,
      CLK => NlwBufferSignal_counter_inst_q_0_CLK,
      I => NlwBufferSignal_counter_inst_q_0_IN,
      O => counter_inst_q(0),
      RST => GND,
      SET => GND
    );
  counter_inst_q_5 : X_FF
    generic map(
      LOC => "SLICE_X50Y47",
      INIT => '0'
    )
    port map (
      CE => counter_inst_n0039_inv,
      CLK => NlwBufferSignal_counter_inst_q_5_CLK,
      I => NlwBufferSignal_counter_inst_q_5_IN,
      O => counter_inst_q(5),
      RST => GND,
      SET => GND
    );
  counter_inst_q_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y47",
      INIT => '0'
    )
    port map (
      CE => counter_inst_n0039_inv,
      CLK => NlwBufferSignal_counter_inst_q_4_CLK,
      I => NlwBufferSignal_counter_inst_q_4_IN,
      O => counter_inst_q(4),
      RST => GND,
      SET => GND
    );
  bin2bcd_inst_BCD_uni_1_bin2bcd_inst_BCD_uni_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_uni(2),
      O => bin2bcd_inst_BCD_uni_2_0
    );
  bin2bcd_inst_BCD_uni_1 : X_SFF
    generic map(
      LOC => "SLICE_X51Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_bin2bcd_inst_BCD_uni_1_CLK,
      I => bin2bcd_inst_salidas_vunidad(1),
      O => bin2bcd_inst_BCD_uni(1),
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  bin2bcd_inst_Mmux_salidas_vunidad_rs_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y45",
      INIT => X"63611C8663611C86"
    )
    port map (
      ADR1 => counter_inst_q(1),
      ADR4 => counter_inst_q(5),
      ADR0 => counter_inst_q(4),
      ADR2 => counter_inst_q(3),
      ADR3 => counter_inst_q(2),
      ADR5 => '1',
      O => bin2bcd_inst_salidas_vunidad(1)
    );
  bin2bcd_inst_Mmux_salidas_vunidad_rs_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X51Y45",
      INIT => X"D92445A2"
    )
    port map (
      ADR1 => counter_inst_q(1),
      ADR4 => counter_inst_q(5),
      ADR0 => counter_inst_q(4),
      ADR2 => counter_inst_q(3),
      ADR3 => counter_inst_q(2),
      O => bin2bcd_inst_salidas_vunidad(2)
    );
  bin2bcd_inst_BCD_uni_2 : X_SFF
    generic map(
      LOC => "SLICE_X51Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_bin2bcd_inst_BCD_uni_2_CLK,
      I => bin2bcd_inst_salidas_vunidad(2),
      O => bin2bcd_inst_BCD_uni(2),
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  bin2bcd_inst_BCD_uni_0 : X_SFF
    generic map(
      LOC => "SLICE_X51Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_bin2bcd_inst_BCD_uni_0_CLK,
      I => NlwBufferSignal_bin2bcd_inst_BCD_uni_0_IN,
      O => bin2bcd_inst_BCD_uni(0),
      SRST => rst,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_inst_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I
    );
  NlwBufferBlock_DCM_inst_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DCM_inst_clk0,
      O => NlwBufferSignal_DCM_inst_clkout1_buf_IN
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_3_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_2_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_1_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_0_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_7_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_6_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_5_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_4_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_11_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_10_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_9_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_8_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_15_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_14_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_13_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_12_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_19_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_18_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_17_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_16_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_21_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_cuenta_20_CLK
    );
  NlwBufferBlock_DIO_LED_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_uni(0),
      O => NlwBufferSignal_DIO_LED_1_OBUF_I
    );
  NlwBufferBlock_DIO_LED_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_uni(1),
      O => NlwBufferSignal_DIO_LED_2_OBUF_I
    );
  NlwBufferBlock_DIO_LED_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_uni_2_0,
      O => NlwBufferSignal_DIO_LED_3_OBUF_I
    );
  NlwBufferBlock_DIO_LED_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_uni(3),
      O => NlwBufferSignal_DIO_LED_4_OBUF_I
    );
  NlwBufferBlock_DIO_LED_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_dec(0),
      O => NlwBufferSignal_DIO_LED_5_OBUF_I
    );
  NlwBufferBlock_DIO_LED_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_dec(1),
      O => NlwBufferSignal_DIO_LED_6_OBUF_I
    );
  NlwBufferBlock_DIO_LED_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_BCD_dec(2),
      O => NlwBufferSignal_DIO_LED_7_OBUF_I
    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_8_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_7_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_6_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_5_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_15_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_14_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_13_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_12_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_19_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_18_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_17_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_16_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_23_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_22_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_21_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_20_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_4_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_3_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_2_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_1_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_27_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_26_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_25_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_24_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_thresh0_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_q_thresh0_i_CLK
    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_11_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_10_CLK

    );
  NlwBufferBlock_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_CLK : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => 
NlwBufferSignal_precaler_inst_U0_i_synth_i_baseblox_i_baseblox_counter_the_addsub_no_pipelining_the_addsub_i_lut4_i_lut4_addsub_i_q_i_simple_qreg_fd_output_9_CLK

    );
  NlwBufferBlock_counter_inst_count_reg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_count_reg_5_CLK
    );
  NlwBufferBlock_counter_inst_count_reg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_count_reg_4_CLK
    );
  NlwBufferBlock_counter_inst_count_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_count_reg_1_CLK
    );
  NlwBufferBlock_counter_inst_count_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_count_reg_0_CLK
    );
  NlwBufferBlock_counter_inst_count_reg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_count_reg_3_CLK
    );
  NlwBufferBlock_counter_inst_count_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_count_reg_2_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_FSM_lapso_inst_antirebote_inst_salida_812,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd2_IN
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_estado_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_estado_FSM_FFd1_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_actualizar_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_actualizar_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_salida_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_salida_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D(0),
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_1_IN
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_CLK
    );
  NlwBufferBlock_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => lapso_bueno,
      O => NlwBufferSignal_counter_inst_FSM_lapso_inst_antirebote_inst_biestables_D_0_IN
    );
  NlwBufferBlock_bin2bcd_inst_BCD_dec_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_bin2bcd_inst_BCD_dec_2_CLK
    );
  NlwBufferBlock_bin2bcd_inst_BCD_dec_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_bin2bcd_inst_BCD_dec_1_CLK
    );
  NlwBufferBlock_bin2bcd_inst_BCD_dec_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_salidas_vdecena(1),
      O => NlwBufferSignal_bin2bcd_inst_BCD_dec_1_IN
    );
  NlwBufferBlock_bin2bcd_inst_BCD_uni_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_bin2bcd_inst_BCD_uni_3_CLK
    );
  NlwBufferBlock_bin2bcd_inst_BCD_dec_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_bin2bcd_inst_BCD_dec_0_CLK
    );
  NlwBufferBlock_bin2bcd_inst_BCD_dec_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => bin2bcd_inst_Mmux_salidas_vunidad_rs_B(1),
      O => NlwBufferSignal_bin2bcd_inst_BCD_dec_0_IN
    );
  NlwBufferBlock_counter_inst_q_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_q_3_CLK
    );
  NlwBufferBlock_counter_inst_q_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_count_reg(3),
      O => NlwBufferSignal_counter_inst_q_3_IN
    );
  NlwBufferBlock_counter_inst_q_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_q_2_CLK
    );
  NlwBufferBlock_counter_inst_q_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_count_reg(2),
      O => NlwBufferSignal_counter_inst_q_2_IN
    );
  NlwBufferBlock_counter_inst_q_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_q_1_CLK
    );
  NlwBufferBlock_counter_inst_q_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_count_reg(1),
      O => NlwBufferSignal_counter_inst_q_1_IN
    );
  NlwBufferBlock_counter_inst_q_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_q_0_CLK
    );
  NlwBufferBlock_counter_inst_q_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_count_reg(0),
      O => NlwBufferSignal_counter_inst_q_0_IN
    );
  NlwBufferBlock_counter_inst_q_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_q_5_CLK
    );
  NlwBufferBlock_counter_inst_q_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_count_reg(5),
      O => NlwBufferSignal_counter_inst_q_5_IN
    );
  NlwBufferBlock_counter_inst_q_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_counter_inst_q_4_CLK
    );
  NlwBufferBlock_counter_inst_q_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_count_reg(4),
      O => NlwBufferSignal_counter_inst_q_4_IN
    );
  NlwBufferBlock_bin2bcd_inst_BCD_uni_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_bin2bcd_inst_BCD_uni_1_CLK
    );
  NlwBufferBlock_bin2bcd_inst_BCD_uni_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_bin2bcd_inst_BCD_uni_2_CLK
    );
  NlwBufferBlock_bin2bcd_inst_BCD_uni_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => mclk,
      O => NlwBufferSignal_bin2bcd_inst_BCD_uni_0_CLK
    );
  NlwBufferBlock_bin2bcd_inst_BCD_uni_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_q(0),
      O => NlwBufferSignal_bin2bcd_inst_BCD_uni_0_IN
    );
  NlwBlock_Top_Systmem_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Top_Systmem_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

