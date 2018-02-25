--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: FSM_Control_timesim.vhd
-- /___/   /\     Timestamp: Wed Dec 05 21:23:55 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf FSM_Control.pcf -rpw 100 -tpw 0 -ar Structure -tm FSM_Control -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim FSM_Control.ncd FSM_Control_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.19 2011-06-20)
-- Input file	: FSM_Control.ncd
-- Output file	: C:\Users\manuel\Desktop\final\Filtro_Mac_prueba\netgen\par\FSM_Control_timesim.vhd
-- # of Entities	: 1
-- Design Name	: FSM_Control
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

entity FSM_Control is
  port (
    datain_valid : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    dataout_valid : out STD_LOGIC; 
    CE_ROM : out STD_LOGIC; 
    CE_reg : out STD_LOGIC; 
    CE_Mult : out STD_LOGIC; 
    CE_Acum : out STD_LOGIC; 
    Addr : out STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end FSM_Control;

architecture Structure of FSM_Control is
  signal estado_FSM_FFd1_244 : STD_LOGIC; 
  signal estado_FSM_FFd2_245 : STD_LOGIC; 
  signal datain_valid_IBUF_0 : STD_LOGIC; 
  signal Addr_1_4_PWR_5_o_equal_5_o : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N19_0 : STD_LOGIC; 
  signal CE_Acum_OBUF_260 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal CE_reg_OBUF_262 : STD_LOGIC; 
  signal Addr_0_263 : STD_LOGIC; 
  signal Addr_1_264 : STD_LOGIC; 
  signal Addr_2_265 : STD_LOGIC; 
  signal Addr_3_266 : STD_LOGIC; 
  signal Addr_4_267 : STD_LOGIC; 
  signal CE_Mult_OBUF_268 : STD_LOGIC; 
  signal Madd_Addr_1_4_GND_5_o_add_5_OUT_cy_2_Q : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Q_n0132_inv : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_5 : STD_LOGIC; 
  signal datain_valid_IBUF_10 : STD_LOGIC; 
  signal rst_IBUF_25 : STD_LOGIC; 
  signal CE_ROM_rstpot_46 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_35_OUT_2_Q : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal estado_FSM_FFd2_In : STD_LOGIC; 
  signal estado_FSM_FFd1_In : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_35_OUT_0_Q : STD_LOGIC; 
  signal N6_pack_8 : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_35_OUT_1_Q : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_35_OUT_4_Q : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_35_OUT_3_Q : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal CE_Mult_rstpot_146 : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_39_OUT_1_Q : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_39_OUT_0_Q : STD_LOGIC; 
  signal estado_1_X_5_o_wide_mux_39_OUT_2_Q : STD_LOGIC; 
  signal retardo_2_pack_11 : STD_LOGIC; 
  signal CE_Acum_rstpot_230 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal NlwBufferSignal_CE_Acum_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dataout_valid_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CE_reg_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Addr_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Addr_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Addr_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Addr_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CE_ROM_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CE_Mult_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Addr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_CE_ROM_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_estado_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_estado_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CE_Mult_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Addr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Addr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Addr_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_retardo_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_retardo_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_retardo_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CE_Acum_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal Addr_1_5 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal retardo : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  CE_Acum_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_CE_Acum_OBUF_I,
      O => CE_Acum
    );
  dataout_valid_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_dataout_valid_OBUF_I,
      O => dataout_valid
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_5,
      I => clk
    );
  ProtoComp5_IMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_5,
      O => clk_BUFGP_IBUFG_0
    );
  CE_reg_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_CE_reg_OBUF_I,
      O => CE_reg
    );
  datain_valid_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => datain_valid_IBUF_10,
      I => datain_valid
    );
  ProtoComp5_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => datain_valid_IBUF_10,
      O => datain_valid_IBUF_0
    );
  Addr_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_Addr_0_OBUF_I,
      O => Addr(0)
    );
  Addr_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => NlwBufferSignal_Addr_1_OBUF_I,
      O => Addr(1)
    );
  Addr_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_Addr_2_OBUF_I,
      O => Addr(2)
    );
  Addr_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => NlwBufferSignal_Addr_3_OBUF_I,
      O => Addr(3)
    );
  Addr_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => NlwBufferSignal_Addr_4_OBUF_I,
      O => Addr(4)
    );
  CE_ROM_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => NlwBufferSignal_CE_ROM_OBUF_I,
      O => CE_ROM
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_25,
      I => rst
    );
  ProtoComp5_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_25,
      O => rst_IBUF_0
    );
  CE_Mult_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_CE_Mult_OBUF_I,
      O => CE_Mult
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
  Addr_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_4_CLK,
      I => NlwBufferSignal_Addr_4_IN,
      O => Addr_4_267,
      RST => GND,
      SET => GND
    );
  CE_ROM_rstpot : X_MUX2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      IA => N23,
      IB => N24,
      O => CE_ROM_rstpot_46,
      SEL => estado_FSM_FFd1_244
    );
  CE_ROM_rstpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"F0F0FFFFF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => estado_FSM_FFd2_245,
      ADR5 => datain_valid_IBUF_0,
      ADR2 => CE_reg_OBUF_262,
      O => N23
    );
  CE_ROM_49 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CE_ROM_CLK,
      I => CE_ROM_rstpot_46,
      O => CE_reg_OBUF_262,
      RST => rst_IBUF_0,
      SET => GND
    );
  CE_ROM_rstpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFFFFF000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => retardo(0),
      ADR5 => CE_reg_OBUF_262,
      ADR4 => retardo(2),
      ADR3 => retardo(1),
      O => N24
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT31 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      IA => N29,
      IB => N30,
      O => estado_1_X_5_o_wide_mux_35_OUT_2_Q,
      SEL => estado_FSM_FFd1_244
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT31_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"D2F0F0F01EF0F0F0"
    )
    port map (
      ADR2 => Addr_1_5(2),
      ADR4 => Addr_1_5(0),
      ADR5 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR1 => estado_FSM_FFd2_245,
      ADR0 => datain_valid_IBUF_0,
      ADR3 => Addr_1_5(1),
      O => N29
    );
  Addr_1_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_1_2_CLK,
      I => estado_1_X_5_o_wide_mux_35_OUT_2_Q,
      O => Addr_1_5(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT31_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"FF00FF00FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Addr_1_5(2),
      ADR4 => N4,
      ADR5 => retardo(2),
      O => N30
    );
  estado_FSM_FFd2_estado_FSM_FFd2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT21_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FFDF002033130020"
    )
    port map (
      ADR0 => datain_valid_IBUF_0,
      ADR4 => Addr_1_5(1),
      ADR2 => Addr_1_5(0),
      ADR3 => estado_FSM_FFd2_245,
      ADR5 => retardo(2),
      ADR1 => estado_FSM_FFd1_244,
      O => N9
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT21_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"C6C6C6CCC6C6C6CC"
    )
    port map (
      ADR1 => Addr_1_5(1),
      ADR0 => Addr_1_5(0),
      ADR4 => estado_FSM_FFd2_245,
      ADR2 => estado_FSM_FFd1_244,
      ADR3 => datain_valid_IBUF_0,
      ADR5 => '1',
      O => N10
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT21_SW3 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"CCCCC6CC"
    )
    port map (
      ADR1 => Addr_1_5(1),
      ADR0 => Addr_1_5(0),
      ADR4 => estado_FSM_FFd2_245,
      ADR2 => estado_FSM_FFd1_244,
      ADR3 => datain_valid_IBUF_0,
      O => N11
    );
  estado_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_estado_FSM_FFd2_CLK,
      I => estado_FSM_FFd2_In,
      O => estado_FSM_FFd2_245,
      RST => rst_IBUF_0,
      SET => GND
    );
  estado_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"00003300FFFF3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => datain_valid_IBUF_0,
      ADR4 => estado_FSM_FFd2_245,
      ADR1 => estado_FSM_FFd1_244,
      ADR5 => Addr_1_4_PWR_5_o_equal_5_o,
      O => estado_FSM_FFd2_In
    );
  estado_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_estado_FSM_FFd1_CLK,
      I => estado_FSM_FFd1_In,
      O => estado_FSM_FFd1_244,
      RST => rst_IBUF_0,
      SET => GND
    );
  estado_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FEFAFFFFCC00CC00"
    )
    port map (
      ADR2 => retardo(0),
      ADR0 => retardo(1),
      ADR4 => retardo(2),
      ADR5 => estado_FSM_FFd1_244,
      ADR1 => estado_FSM_FFd2_245,
      ADR3 => Addr_1_4_PWR_5_o_equal_5_o,
      O => estado_FSM_FFd1_In
    );
  Addr_1_1_Addr_1_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N6_pack_8,
      O => N6
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"A505A606AA0AAA0A"
    )
    port map (
      ADR2 => estado_FSM_FFd1_244,
      ADR0 => Addr_1_5(1),
      ADR4 => datain_valid_IBUF_0,
      ADR1 => estado_FSM_FFd2_245,
      ADR5 => Addr_1_5(0),
      ADR3 => retardo(2),
      O => N8
    );
  Addr_1_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_1_1_CLK,
      I => estado_1_X_5_o_wide_mux_35_OUT_1_Q,
      O => Addr_1_5(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"F0AACCFFF0AACC00"
    )
    port map (
      ADR3 => N4,
      ADR0 => N9,
      ADR2 => N11_0,
      ADR1 => N10,
      ADR4 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR5 => N8,
      O => estado_1_X_5_o_wide_mux_35_OUT_1_Q
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT251_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => retardo(1),
      ADR0 => retardo(0),
      ADR5 => '1',
      O => N4
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT211_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"FFFFFFAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => retardo(2),
      ADR3 => retardo(1),
      ADR0 => retardo(0),
      O => N6_pack_8
    );
  Addr_1_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_1_0_CLK,
      I => estado_1_X_5_o_wide_mux_35_OUT_0_Q,
      O => Addr_1_5(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"F500B144A055B144"
    )
    port map (
      ADR0 => estado_FSM_FFd1_244,
      ADR4 => estado_FSM_FFd2_245,
      ADR1 => datain_valid_IBUF_0,
      ADR3 => Addr_1_5(0),
      ADR5 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR2 => N6,
      O => estado_1_X_5_o_wide_mux_35_OUT_0_Q
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT51 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y5"
    )
    port map (
      IA => N25,
      IB => N26,
      O => estado_1_X_5_o_wide_mux_35_OUT_4_Q,
      SEL => estado_FSM_FFd1_244
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT51_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"F078F0F05A78F0F0"
    )
    port map (
      ADR2 => Addr_1_5(4),
      ADR4 => Addr_1_5(3),
      ADR5 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR3 => estado_FSM_FFd2_245,
      ADR1 => datain_valid_IBUF_0,
      ADR0 => Madd_Addr_1_4_GND_5_o_add_5_OUT_cy_2_Q,
      O => N25
    );
  Addr_1_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_1_4_CLK,
      I => estado_1_X_5_o_wide_mux_35_OUT_4_Q,
      O => Addr_1_5(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT51_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"FFFF0000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Addr_1_5(4),
      ADR5 => N4,
      ADR2 => retardo(2),
      O => N26
    );
  Madd_Addr_1_4_GND_5_o_add_5_OUT_cy_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Addr_1_5(2),
      ADR4 => Addr_1_5(1),
      ADR5 => Addr_1_5(0),
      O => Madd_Addr_1_4_GND_5_o_add_5_OUT_cy_2_Q
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT41 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y6"
    )
    port map (
      IA => N27,
      IB => N28,
      O => estado_1_X_5_o_wide_mux_35_OUT_3_Q,
      SEL => estado_FSM_FFd1_244
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT41_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"F0F03CF00FF03CF0"
    )
    port map (
      ADR0 => '1',
      ADR2 => Addr_1_5(3),
      ADR3 => Madd_Addr_1_4_GND_5_o_add_5_OUT_cy_2_Q,
      ADR5 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR4 => estado_FSM_FFd2_245,
      ADR1 => datain_valid_IBUF_0,
      O => N27
    );
  Addr_1_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_1_3_CLK,
      I => estado_1_X_5_o_wide_mux_35_OUT_3_Q,
      O => Addr_1_5(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_estado_1_X_5_o_wide_mux_35_OUT41_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FFFF0000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Addr_1_5(3),
      ADR5 => N4,
      ADR2 => retardo(2),
      O => N28
    );
  CE_Mult_81 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CE_Mult_CLK,
      I => CE_Mult_rstpot_146,
      O => CE_Mult_OBUF_268,
      RST => rst_IBUF_0,
      SET => GND
    );
  CE_Mult_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"22AA22BAAAAAAAAA"
    )
    port map (
      ADR3 => estado_FSM_FFd1_244,
      ADR1 => retardo(0),
      ADR5 => N19_0,
      ADR0 => CE_Mult_OBUF_268,
      ADR4 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR2 => estado_FSM_FFd2_245,
      O => CE_Mult_rstpot_146
    );
  Addr_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_3_CLK,
      I => NlwBufferSignal_Addr_3_IN,
      O => Addr_3_266,
      RST => GND,
      SET => GND
    );
  Addr_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_2_CLK,
      I => NlwBufferSignal_Addr_2_IN,
      O => Addr_2_265,
      RST => GND,
      SET => GND
    );
  Addr_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_1_CLK,
      I => NlwBufferSignal_Addr_1_IN,
      O => Addr_1_264,
      RST => GND,
      SET => GND
    );
  Addr_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Addr_0_CLK,
      I => NlwBufferSignal_Addr_0_IN,
      O => Addr_0_263,
      RST => GND,
      SET => GND
    );
  retardo_1_retardo_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N19,
      O => N19_0
    );
  retardo_1_retardo_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => retardo_2_pack_11,
      O => retardo(2)
    );
  Addr_1_4_PWR_5_o_equal_5_o_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"00000000C0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Addr_1_5(4),
      ADR2 => Addr_1_5(3),
      ADR5 => Addr_1_5(2),
      ADR4 => Addr_1_5(1),
      ADR3 => Addr_1_5(0),
      O => Addr_1_4_PWR_5_o_equal_5_o
    );
  Q_n0132_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"3704FFCC0404DDCC"
    )
    port map (
      ADR2 => retardo(0),
      ADR0 => retardo(1),
      ADR4 => retardo(2),
      ADR3 => estado_FSM_FFd2_245,
      ADR1 => estado_FSM_FFd1_244,
      ADR5 => Addr_1_4_PWR_5_o_equal_5_o,
      O => Q_n0132_inv
    );
  retardo_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0132_inv,
      CLK => NlwBufferSignal_retardo_1_CLK,
      I => estado_1_X_5_o_wide_mux_39_OUT_1_Q,
      O => retardo(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_estado_1_X_5_o_wide_mux_39_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"5151A2A25151A2A2"
    )
    port map (
      ADR3 => '1',
      ADR0 => retardo(0),
      ADR2 => estado_FSM_FFd1_244,
      ADR4 => retardo(1),
      ADR1 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR5 => '1',
      O => estado_1_X_5_o_wide_mux_39_OUT_1_Q
    );
  CE_Mult_rstpot_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"000000FF"
    )
    port map (
      ADR3 => retardo(2),
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => retardo(1),
      ADR0 => '1',
      O => N19
    );
  retardo_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0132_inv,
      CLK => NlwBufferSignal_retardo_0_CLK,
      I => estado_1_X_5_o_wide_mux_39_OUT_0_Q,
      O => retardo(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_estado_1_X_5_o_wide_mux_39_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"0000BB0F0000BB0F"
    )
    port map (
      ADR3 => estado_FSM_FFd1_244,
      ADR0 => retardo(1),
      ADR1 => retardo(2),
      ADR4 => retardo(0),
      ADR2 => Addr_1_4_PWR_5_o_equal_5_o,
      ADR5 => '1',
      O => estado_1_X_5_o_wide_mux_39_OUT_0_Q
    );
  Mmux_estado_1_X_5_o_wide_mux_39_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"6606880C"
    )
    port map (
      ADR3 => estado_FSM_FFd1_244,
      ADR0 => retardo(1),
      ADR1 => retardo(2),
      ADR4 => retardo(0),
      ADR2 => Addr_1_4_PWR_5_o_equal_5_o,
      O => estado_1_X_5_o_wide_mux_39_OUT_2_Q
    );
  retardo_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0132_inv,
      CLK => NlwBufferSignal_retardo_2_CLK,
      I => estado_1_X_5_o_wide_mux_39_OUT_2_Q,
      O => retardo_2_pack_11,
      RST => rst_IBUF_0,
      SET => GND
    );
  CE_Acum_rstpot : X_MUX2
    generic map(
      LOC => "SLICE_X14Y5"
    )
    port map (
      IA => N21,
      IB => N22,
      O => CE_Acum_rstpot_230,
      SEL => Addr_1_4_PWR_5_o_equal_5_o
    );
  CE_Acum_rstpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"CCC4CCC4CCDCCCCC"
    )
    port map (
      ADR1 => CE_Acum_OBUF_260,
      ADR3 => retardo(2),
      ADR0 => retardo(1),
      ADR2 => retardo(0),
      ADR5 => estado_FSM_FFd1_244,
      ADR4 => estado_FSM_FFd2_245,
      O => N21
    );
  CE_Acum_103 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CE_Acum_CLK,
      I => CE_Acum_rstpot_230,
      O => CE_Acum_OBUF_260,
      RST => rst_IBUF_0,
      SET => GND
    );
  CE_Acum_rstpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"FAFF0000FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => retardo(0),
      ADR3 => retardo(1),
      ADR4 => CE_Acum_OBUF_260,
      ADR2 => retardo(2),
      ADR5 => estado_FSM_FFd1_244,
      O => N22
    );
  NlwBufferBlock_CE_Acum_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CE_Acum_OBUF_260,
      O => NlwBufferSignal_CE_Acum_OBUF_I
    );
  NlwBufferBlock_dataout_valid_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => retardo(2),
      O => NlwBufferSignal_dataout_valid_OBUF_I
    );
  NlwBufferBlock_CE_reg_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CE_reg_OBUF_262,
      O => NlwBufferSignal_CE_reg_OBUF_I
    );
  NlwBufferBlock_Addr_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_0_263,
      O => NlwBufferSignal_Addr_0_OBUF_I
    );
  NlwBufferBlock_Addr_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_1_264,
      O => NlwBufferSignal_Addr_1_OBUF_I
    );
  NlwBufferBlock_Addr_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_2_265,
      O => NlwBufferSignal_Addr_2_OBUF_I
    );
  NlwBufferBlock_Addr_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_3_266,
      O => NlwBufferSignal_Addr_3_OBUF_I
    );
  NlwBufferBlock_Addr_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_4_267,
      O => NlwBufferSignal_Addr_4_OBUF_I
    );
  NlwBufferBlock_CE_ROM_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CE_reg_OBUF_262,
      O => NlwBufferSignal_CE_ROM_OBUF_I
    );
  NlwBufferBlock_CE_Mult_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CE_Mult_OBUF_268,
      O => NlwBufferSignal_CE_Mult_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_Addr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_4_CLK
    );
  NlwBufferBlock_Addr_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_1_5(4),
      O => NlwBufferSignal_Addr_4_IN
    );
  NlwBufferBlock_CE_ROM_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_CE_ROM_CLK
    );
  NlwBufferBlock_Addr_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_1_2_CLK
    );
  NlwBufferBlock_estado_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_estado_FSM_FFd2_CLK
    );
  NlwBufferBlock_estado_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_estado_FSM_FFd1_CLK
    );
  NlwBufferBlock_Addr_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_1_1_CLK
    );
  NlwBufferBlock_Addr_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_1_0_CLK
    );
  NlwBufferBlock_Addr_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_1_4_CLK
    );
  NlwBufferBlock_Addr_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_1_3_CLK
    );
  NlwBufferBlock_CE_Mult_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_CE_Mult_CLK
    );
  NlwBufferBlock_Addr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_3_CLK
    );
  NlwBufferBlock_Addr_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_1_5(3),
      O => NlwBufferSignal_Addr_3_IN
    );
  NlwBufferBlock_Addr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_2_CLK
    );
  NlwBufferBlock_Addr_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_1_5(2),
      O => NlwBufferSignal_Addr_2_IN
    );
  NlwBufferBlock_Addr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_1_CLK
    );
  NlwBufferBlock_Addr_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_1_5(1),
      O => NlwBufferSignal_Addr_1_IN
    );
  NlwBufferBlock_Addr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Addr_0_CLK
    );
  NlwBufferBlock_Addr_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr_1_5(0),
      O => NlwBufferSignal_Addr_0_IN
    );
  NlwBufferBlock_retardo_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_retardo_1_CLK
    );
  NlwBufferBlock_retardo_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_retardo_0_CLK
    );
  NlwBufferBlock_retardo_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_retardo_2_CLK
    );
  NlwBufferBlock_CE_Acum_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_CE_Acum_CLK
    );
  NlwBlock_FSM_Control_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_FSM_Control_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

