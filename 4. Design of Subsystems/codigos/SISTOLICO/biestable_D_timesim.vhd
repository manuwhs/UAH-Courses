--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: biestable_D_timesim.vhd
-- /___/   /\     Timestamp: Wed Dec 05 20:24:59 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf biestable_D.pcf -rpw 100 -tpw 0 -ar Structure -tm biestable_D -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim biestable_D.ncd biestable_D_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.19 2011-06-20)
-- Input file	: biestable_D.ncd
-- Output file	: C:\Users\manuel\Desktop\final\Filtro_FIR_Sistologico\netgen\par\biestable_D_timesim.vhd
-- # of Entities	: 1
-- Design Name	: biestable_D
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

entity biestable_D is
  port (
    clk : in STD_LOGIC := 'X'; 
    clk_en : in STD_LOGIC := 'X'; 
    D : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC 
  );
end biestable_D;

architecture Structure of biestable_D is
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Q_OBUF_22 : STD_LOGIC; 
  signal D_IBUF_0 : STD_LOGIC; 
  signal clk_en_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal D_IBUF_6 : STD_LOGIC; 
  signal clk_en_IBUF_9 : STD_LOGIC; 
  signal NlwBufferSignal_Q_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q_IN : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_1,
      I => clk
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1,
      O => clk_BUFGP_IBUFG_0
    );
  Q_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_Q_OBUF_I,
      O => Q
    );
  D_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      O => D_IBUF_6,
      I => D
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      I => D_IBUF_6,
      O => D_IBUF_0
    );
  clk_en_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_en_IBUF_9,
      I => clk_en
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_en_IBUF_9,
      O => clk_en_IBUF_0
    );
  Q_17 : X_SFF
    generic map(
      LOC => "OLOGIC_X0Y5",
      INIT => '0'
    )
    port map (
      CE => clk_en_IBUF_0,
      CLK => NlwBufferSignal_Q_CLK,
      I => NlwBufferSignal_Q_IN,
      O => Q_OBUF_22,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => GND
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
  NlwBufferBlock_Q_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Q_OBUF_22,
      O => NlwBufferSignal_Q_OBUF_I
    );
  NlwBufferBlock_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Q_CLK
    );
  NlwBufferBlock_Q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_IBUF_0,
      O => NlwBufferSignal_Q_IN
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBlock_biestable_D_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

