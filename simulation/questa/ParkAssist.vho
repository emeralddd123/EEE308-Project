-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "09/02/2023 17:53:20"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ParkAssist IS
    PORT (
	pulse_pin : IN std_logic_vector(2 DOWNTO 0);
	trigger_pin : BUFFER std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	red : BUFFER std_logic_vector(3 DOWNTO 0);
	grn : BUFFER std_logic_vector(3 DOWNTO 0);
	blu : BUFFER std_logic_vector(3 DOWNTO 0);
	hsync : BUFFER std_logic;
	vsync : BUFFER std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ParkAssist;

-- Design Ports Information
-- trigger_pin[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger_pin[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger_pin[2]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grn[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grn[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grn[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grn[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blu[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blu[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blu[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blu[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pulse_pin[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_pin[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_pin[2]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ParkAssist IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulse_pin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_trigger_pin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_grn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_blu : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \vga_inst|disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_inst|disp_clk|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pulse_pin[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulse_pin[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulse_pin[2]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[0]~69_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[3]~28\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[4]~29_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[4]~30\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[5]~31_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[5]~32\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[6]~33_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[6]~34\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[7]~35_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[7]~36\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[8]~37_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[8]~38\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[9]~39_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[9]~40\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[10]~41_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[10]~42\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[11]~43_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[11]~44\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[12]~45_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[12]~46\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[13]~47_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[13]~48\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[14]~49_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[14]~50\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[15]~51_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[15]~52\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[16]~53_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[16]~54\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[17]~55_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[17]~56\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[18]~57_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[18]~58\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[19]~59_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[19]~60\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[20]~61_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[20]~62\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[21]~63_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[21]~64\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[22]~65_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~1_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[22]~66\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[23]~67_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~0_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~2_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~3_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigger~2_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~4_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~5_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~6_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|Equal0~7_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[1]~23_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[1]~24\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[2]~25_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[2]~26\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count[3]~27_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigger~0_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigger~1_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigger~3_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigger~4_combout\ : std_logic;
SIGNAL \pulse_pin[1]~input_o\ : std_logic;
SIGNAL \pulse_pin[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[0]~55_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[0]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[1]~21_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[1]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[1]~22\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[2]~23_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[2]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[2]~24\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[3]~25_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[3]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[3]~26\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[4]~27_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[4]~28\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[5]~29_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[5]~30\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[6]~31_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[6]~32\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[7]~33_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[7]~34\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[8]~35_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[8]~36\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[9]~37_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[9]~38\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[10]~39_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[10]~40\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[11]~41_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[11]~42\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[12]~43_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[12]~44\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[13]~45_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[13]~46\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[14]~47_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[14]~48\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[15]~49_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[15]~50\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[16]~51_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[16]~52\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[17]~53_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[17]~54\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[18]~56_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[18]~57\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[19]~58_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~1_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~3_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~5_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~7_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~9_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~11_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~13_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~15_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~17_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~19_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~21_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~23_cout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~25\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~27\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~29\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~31\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~33\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~35\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~36_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[19]~59\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[20]~60_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[20]~61\ : std_logic;
SIGNAL \range_sensor_map|distan1|Counter_pulse|count[21]~62_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~37\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~39\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~41\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~43\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~44_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~42_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~27_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~38_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~28_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~40_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~26_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~34_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~32_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~30_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~24_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~26_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Add0~28_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|LessThan0~0_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|LessThan0~1_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|LessThan0~2_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|LessThan0~3_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~17_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~2_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~1_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~18_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~19_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~6_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~8_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~5_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan0~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~7_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~3_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~15_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~16_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan3~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~4_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan6~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan6~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~13_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~9_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~10_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~11_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~20_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~21_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan3~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan5~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~12_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~14_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~20_combout\ : std_logic;
SIGNAL \vga_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan8~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan5~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~19_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|Add5~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~17_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~18_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~22_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~23_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~16_combout\ : std_logic;
SIGNAL \vga_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan1~20_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~24_combout\ : std_logic;
SIGNAL \range_sensor_map|distan1|Distance~25_combout\ : std_logic;
SIGNAL \vga_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \vga_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \vga_inst|hposition[0]~12_combout\ : std_logic;
SIGNAL \vga_inst|hposition[10]~33\ : std_logic;
SIGNAL \vga_inst|hposition[11]~34_combout\ : std_logic;
SIGNAL \vga_inst|LessThan15~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan15~2_combout\ : std_logic;
SIGNAL \vga_inst|hposition[0]~13\ : std_logic;
SIGNAL \vga_inst|hposition[1]~14_combout\ : std_logic;
SIGNAL \vga_inst|hposition[1]~15\ : std_logic;
SIGNAL \vga_inst|hposition[2]~16_combout\ : std_logic;
SIGNAL \vga_inst|hposition[2]~17\ : std_logic;
SIGNAL \vga_inst|hposition[3]~18_combout\ : std_logic;
SIGNAL \vga_inst|hposition[3]~19\ : std_logic;
SIGNAL \vga_inst|hposition[4]~20_combout\ : std_logic;
SIGNAL \vga_inst|hposition[4]~21\ : std_logic;
SIGNAL \vga_inst|hposition[5]~22_combout\ : std_logic;
SIGNAL \vga_inst|hposition[5]~23\ : std_logic;
SIGNAL \vga_inst|hposition[6]~24_combout\ : std_logic;
SIGNAL \vga_inst|hposition[6]~25\ : std_logic;
SIGNAL \vga_inst|hposition[7]~26_combout\ : std_logic;
SIGNAL \vga_inst|hposition[7]~27\ : std_logic;
SIGNAL \vga_inst|hposition[8]~28_combout\ : std_logic;
SIGNAL \vga_inst|hposition[8]~29\ : std_logic;
SIGNAL \vga_inst|hposition[9]~30_combout\ : std_logic;
SIGNAL \vga_inst|hposition[9]~31\ : std_logic;
SIGNAL \vga_inst|hposition[10]~32_combout\ : std_logic;
SIGNAL \vga_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \vga_inst|vposition[0]~12_combout\ : std_logic;
SIGNAL \vga_inst|vposition[5]~23\ : std_logic;
SIGNAL \vga_inst|vposition[6]~24_combout\ : std_logic;
SIGNAL \vga_inst|vposition[6]~25\ : std_logic;
SIGNAL \vga_inst|vposition[7]~26_combout\ : std_logic;
SIGNAL \vga_inst|vposition[7]~27\ : std_logic;
SIGNAL \vga_inst|vposition[8]~28_combout\ : std_logic;
SIGNAL \vga_inst|vposition[8]~29\ : std_logic;
SIGNAL \vga_inst|vposition[9]~30_combout\ : std_logic;
SIGNAL \vga_inst|LessThan16~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan16~1_combout\ : std_logic;
SIGNAL \vga_inst|vposition[9]~31\ : std_logic;
SIGNAL \vga_inst|vposition[10]~32_combout\ : std_logic;
SIGNAL \vga_inst|vposition[10]~33\ : std_logic;
SIGNAL \vga_inst|vposition[11]~34_combout\ : std_logic;
SIGNAL \vga_inst|LessThan16~2_combout\ : std_logic;
SIGNAL \vga_inst|vposition[0]~13\ : std_logic;
SIGNAL \vga_inst|vposition[1]~14_combout\ : std_logic;
SIGNAL \vga_inst|vposition[1]~15\ : std_logic;
SIGNAL \vga_inst|vposition[2]~16_combout\ : std_logic;
SIGNAL \vga_inst|vposition[2]~17\ : std_logic;
SIGNAL \vga_inst|vposition[3]~18_combout\ : std_logic;
SIGNAL \vga_inst|vposition[3]~19\ : std_logic;
SIGNAL \vga_inst|vposition[4]~20_combout\ : std_logic;
SIGNAL \vga_inst|vposition[4]~21\ : std_logic;
SIGNAL \vga_inst|vposition[5]~22_combout\ : std_logic;
SIGNAL \vga_inst|LessThan5~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~1_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~2_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~7_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~8_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~9_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~10_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~21_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan6~2_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|bcd~15_combout\ : std_logic;
SIGNAL \vga_inst|LessThan1~19_combout\ : std_logic;
SIGNAL \vga_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~11_combout\ : std_logic;
SIGNAL \vga_inst|red[1]~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv1|LessThan8~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \vga_inst|red[1]~1_combout\ : std_logic;
SIGNAL \vga_inst|red[1]~2_combout\ : std_logic;
SIGNAL \vga_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \vga_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \vga_inst|LessThan1~21_combout\ : std_logic;
SIGNAL \vga_inst|red[1]~3_combout\ : std_logic;
SIGNAL \vga_inst|LessThan11~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan11~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan15~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan10~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan10~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan10~2_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~3_combout\ : std_logic;
SIGNAL \pulse_pin[0]~input_o\ : std_logic;
SIGNAL \pulse_pin[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[0]~55_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[0]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[1]~21_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[1]~22\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[2]~23_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[2]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[2]~24\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[3]~25_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[3]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[3]~26\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[4]~27_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[4]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[4]~28\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[5]~29_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[5]~30\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[6]~31_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[6]~32\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[7]~33_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[7]~34\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[8]~35_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[8]~36\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[9]~37_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[9]~38\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[10]~39_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[10]~40\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[11]~41_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[11]~42\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[12]~43_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[12]~44\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[13]~45_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[13]~46\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[14]~47_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[14]~48\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[15]~49_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[15]~50\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[16]~51_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[16]~52\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[17]~53_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[17]~54\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[18]~56_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[18]~57\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[19]~58_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[19]~59\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[20]~60_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[20]~61\ : std_logic;
SIGNAL \range_sensor_map|distan0|Counter_pulse|count[21]~62_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~1_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~3_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~5_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~7_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~9_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~11_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~13_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~15_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~17_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~19_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~21_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~23_cout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~25\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~27\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~29\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~31\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~33\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~35\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~37\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~39\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~41\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~43\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~44_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~42_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~28_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~20_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~38_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~36_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~40_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|LessThan0~2_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~32_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~34_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~30_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~24_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Add0~26_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|LessThan0~0_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|LessThan0~1_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~21_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~26_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~25_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|LessThan0~3_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~17_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~27_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~2_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~18_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~19_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~4_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~9_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~10_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~15_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~16_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~11_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~13_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~12_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~18_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~20_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~22_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~23_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~19_combout\ : std_logic;
SIGNAL \vga_inst|LessThan7~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|LessThan0~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~8_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~6_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~5_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~7_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~3_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|LessThan3~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|LessThan6~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|LessThan6~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~21_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~15_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~16_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~14_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|LessThan8~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan8~5_combout\ : std_logic;
SIGNAL \vga_inst|LessThan8~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|bcd~17_combout\ : std_logic;
SIGNAL \vga_inst|LessThan8~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv0|LessThan8~0_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~4_combout\ : std_logic;
SIGNAL \vga_inst|LessThan8~2_combout\ : std_logic;
SIGNAL \range_sensor_map|distan0|Distance~24_combout\ : std_logic;
SIGNAL \vga_inst|LessThan8~3_combout\ : std_logic;
SIGNAL \vga_inst|LessThan8~4_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~6_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~12_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~13_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~14_combout\ : std_logic;
SIGNAL \vga_inst|LessThan9~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan9~0_combout\ : std_logic;
SIGNAL \vga_inst|output_logic~5_combout\ : std_logic;
SIGNAL \vga_inst|red[1]~4_combout\ : std_logic;
SIGNAL \vga_inst|grn[1]~0_combout\ : std_logic;
SIGNAL \vga_inst|grn[1]~1_combout\ : std_logic;
SIGNAL \vga_inst|display_things~0_combout\ : std_logic;
SIGNAL \vga_inst|display_things~1_combout\ : std_logic;
SIGNAL \vga_inst|hsync~q\ : std_logic;
SIGNAL \vga_inst|display_things~2_combout\ : std_logic;
SIGNAL \vga_inst|display_things~3_combout\ : std_logic;
SIGNAL \vga_inst|vsync~q\ : std_logic;
SIGNAL \pulse_pin[2]~input_o\ : std_logic;
SIGNAL \pulse_pin[2]~inputclkctrl_outclk\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[0]~55_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[0]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[1]~21_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[1]~22\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[2]~23_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[2]~feeder_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[2]~24\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[3]~25_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[3]~26\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[4]~27_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[4]~28\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[5]~29_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[5]~30\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[6]~31_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[6]~32\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[7]~33_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[7]~34\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[8]~35_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[8]~36\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[9]~37_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[9]~38\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[10]~39_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[10]~40\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[11]~41_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[11]~42\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[12]~43_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[12]~44\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[13]~45_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[13]~46\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[14]~47_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[14]~48\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[15]~49_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[15]~50\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[16]~51_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[16]~52\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[17]~53_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[17]~54\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[18]~56_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[18]~57\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[19]~58_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[19]~59\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[20]~60_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~1_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~3_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~5_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~7_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~9_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~11_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~13_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~15_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~17_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~19_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~21_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~23_cout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~25\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~27\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~29\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~31\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~33\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~35\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~37\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~38_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[20]~61\ : std_logic;
SIGNAL \range_sensor_map|distan2|Counter_pulse|count[21]~62_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~39\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~41\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~42_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~43\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~44_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~27_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~36_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~25_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~40_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~26_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|LessThan0~2_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~34_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~17_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~32_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~30_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~28_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~26_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Add0~24_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|LessThan0~0_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|LessThan0~1_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~18_combout\ : std_logic;
SIGNAL \vga_inst|LessThan14~2_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan0~0_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|LessThan0~3_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~20_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~2_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~19_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~4_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~5_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~3_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~10_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~8_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~9_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan6~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan6~1_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~15_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~16_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan3~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan5~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~6_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan8~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~12_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~13_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~11_combout\ : std_logic;
SIGNAL \vga_inst|LessThan14~3_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~7_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan8~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|dist[6]~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan14~4_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|Add5~0_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~15_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~16_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~23_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~24_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|LessThan5~1_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~17_combout\ : std_logic;
SIGNAL \range_sensor_map|BCD_conv2|bcd~14_combout\ : std_logic;
SIGNAL \vga_inst|LessThan13~3_combout\ : std_logic;
SIGNAL \vga_inst|LessThan14~6_combout\ : std_logic;
SIGNAL \vga_inst|LessThan14~5_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~21_combout\ : std_logic;
SIGNAL \range_sensor_map|distan2|Distance~22_combout\ : std_logic;
SIGNAL \vga_inst|LessThan12~6_combout\ : std_logic;
SIGNAL \vga_inst|LessThan12~3_combout\ : std_logic;
SIGNAL \vga_inst|LessThan12~19_combout\ : std_logic;
SIGNAL \vga_inst|LessThan13~1_combout\ : std_logic;
SIGNAL \vga_inst|LessThan13~2_combout\ : std_logic;
SIGNAL \vga_inst|LessThan13~0_combout\ : std_logic;
SIGNAL \vga_inst|LessThan13~4_combout\ : std_logic;
SIGNAL \vga_inst|HEX0[4]~0_combout\ : std_logic;
SIGNAL \vga_inst|HEX1[0]~0_combout\ : std_logic;
SIGNAL \vga_inst|HEX3[3]~0_combout\ : std_logic;
SIGNAL \vga_inst|HEX3[4]~1_combout\ : std_logic;
SIGNAL \vga_inst|HEX4[0]~0_combout\ : std_logic;
SIGNAL \vga_inst|HEX0[4]~1_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|trigg|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \range_sensor_map|distan1|Distance\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga_inst|vposition\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_inst|hposition\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \range_sensor_map|distan0|Counter_pulse|count\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \range_sensor_map|distan1|Counter_pulse|count\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \range_sensor_map|distan0|Distance\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \range_sensor_map|distan2|Counter_pulse|count\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \range_sensor_map|distan2|Distance\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \vga_inst|ALT_INV_HEX0[4]~1_combout\ : std_logic;
SIGNAL \range_sensor_map|trig0|ALT_INV_trigger~4_combout\ : std_logic;

BEGIN

ww_pulse_pin <= pulse_pin;
trigger_pin <= ww_trigger_pin;
ww_clk <= clk;
red <= ww_red;
grn <= ww_grn;
blu <= ww_blu;
hsync <= ww_hsync;
vsync <= ww_vsync;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vga_inst|disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk\(0) <= \vga_inst|disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(0);
\vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk\(1) <= \vga_inst|disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(1);
\vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk\(2) <= \vga_inst|disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(2);
\vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk\(3) <= \vga_inst|disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(3);
\vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk\(4) <= \vga_inst|disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\pulse_pin[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulse_pin[1]~input_o\);

\pulse_pin[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulse_pin[0]~input_o\);

\vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\pulse_pin[2]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulse_pin[2]~input_o\);
\ALT_INV_pulse_pin[2]~inputclkctrl_outclk\ <= NOT \pulse_pin[2]~inputclkctrl_outclk\;
\ALT_INV_pulse_pin[0]~inputclkctrl_outclk\ <= NOT \pulse_pin[0]~inputclkctrl_outclk\;
\ALT_INV_pulse_pin[1]~inputclkctrl_outclk\ <= NOT \pulse_pin[1]~inputclkctrl_outclk\;
\range_sensor_map|trig0|ALT_INV_Equal0~7_combout\ <= NOT \range_sensor_map|trig0|Equal0~7_combout\;
\vga_inst|ALT_INV_HEX0[4]~1_combout\ <= NOT \vga_inst|HEX0[4]~1_combout\;
\range_sensor_map|trig0|ALT_INV_trigger~4_combout\ <= NOT \range_sensor_map|trig0|trigger~4_combout\;

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y3_N9
\trigger_pin[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \range_sensor_map|trig0|trigger~4_combout\,
	devoe => ww_devoe,
	o => ww_trigger_pin(0));

-- Location: IOOBUF_X0_Y10_N16
\trigger_pin[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \range_sensor_map|trig0|trigger~4_combout\,
	devoe => ww_devoe,
	o => ww_trigger_pin(1));

-- Location: IOOBUF_X24_Y0_N30
\trigger_pin[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \range_sensor_map|trig0|trigger~4_combout\,
	devoe => ww_devoe,
	o => ww_trigger_pin(2));

-- Location: IOOBUF_X78_Y25_N2
\red[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOOBUF_X0_Y12_N16
\red[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|red[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X0_Y13_N9
\red[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|red[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X0_Y12_N2
\red[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|red[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X40_Y0_N30
\grn[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_grn(0));

-- Location: IOOBUF_X0_Y16_N9
\grn[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|grn[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_grn(1));

-- Location: IOOBUF_X0_Y16_N23
\grn[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|grn[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_grn(2));

-- Location: IOOBUF_X0_Y16_N16
\grn[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|grn[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_grn(3));

-- Location: IOOBUF_X36_Y0_N9
\blu[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_blu(0));

-- Location: IOOBUF_X69_Y0_N9
\blu[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_blu(1));

-- Location: IOOBUF_X78_Y18_N23
\blu[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_blu(2));

-- Location: IOOBUF_X58_Y0_N30
\blu[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_blu(3));

-- Location: IOOBUF_X0_Y13_N16
\hsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|hsync~q\,
	devoe => ww_devoe,
	o => ww_hsync);

-- Location: IOOBUF_X0_Y16_N2
\vsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|vsync~q\,
	devoe => ww_devoe,
	o => ww_vsync);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX0[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX0[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX0[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX3[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX3[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|LessThan12~19_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX3[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX3[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX3[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|ALT_INV_HEX0[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX0[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX0[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX3[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|ALT_INV_HEX0[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_inst|HEX4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y8_N8
\range_sensor_map|trig0|trigg|count[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[0]~69_combout\ = !\range_sensor_map|trig0|trigg|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|trig0|trigg|count\(0),
	combout => \range_sensor_map|trig0|trigg|count[0]~69_combout\);

-- Location: LCCOMB_X8_Y8_N14
\range_sensor_map|trig0|trigg|count[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[3]~27_combout\ = (\range_sensor_map|trig0|trigg|count\(3) & (\range_sensor_map|trig0|trigg|count[2]~26\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(3) & (!\range_sensor_map|trig0|trigg|count[2]~26\ & VCC))
-- \range_sensor_map|trig0|trigg|count[3]~28\ = CARRY((\range_sensor_map|trig0|trigg|count\(3) & !\range_sensor_map|trig0|trigg|count[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(3),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[2]~26\,
	combout => \range_sensor_map|trig0|trigg|count[3]~27_combout\,
	cout => \range_sensor_map|trig0|trigg|count[3]~28\);

-- Location: LCCOMB_X8_Y8_N16
\range_sensor_map|trig0|trigg|count[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[4]~29_combout\ = (\range_sensor_map|trig0|trigg|count\(4) & (!\range_sensor_map|trig0|trigg|count[3]~28\)) # (!\range_sensor_map|trig0|trigg|count\(4) & ((\range_sensor_map|trig0|trigg|count[3]~28\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[4]~30\ = CARRY((!\range_sensor_map|trig0|trigg|count[3]~28\) # (!\range_sensor_map|trig0|trigg|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(4),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[3]~28\,
	combout => \range_sensor_map|trig0|trigg|count[4]~29_combout\,
	cout => \range_sensor_map|trig0|trigg|count[4]~30\);

-- Location: FF_X8_Y8_N17
\range_sensor_map|trig0|trigg|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[4]~29_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(4));

-- Location: LCCOMB_X8_Y8_N18
\range_sensor_map|trig0|trigg|count[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[5]~31_combout\ = (\range_sensor_map|trig0|trigg|count\(5) & (\range_sensor_map|trig0|trigg|count[4]~30\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(5) & (!\range_sensor_map|trig0|trigg|count[4]~30\ & VCC))
-- \range_sensor_map|trig0|trigg|count[5]~32\ = CARRY((\range_sensor_map|trig0|trigg|count\(5) & !\range_sensor_map|trig0|trigg|count[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(5),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[4]~30\,
	combout => \range_sensor_map|trig0|trigg|count[5]~31_combout\,
	cout => \range_sensor_map|trig0|trigg|count[5]~32\);

-- Location: FF_X8_Y8_N19
\range_sensor_map|trig0|trigg|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[5]~31_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(5));

-- Location: LCCOMB_X8_Y8_N20
\range_sensor_map|trig0|trigg|count[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[6]~33_combout\ = (\range_sensor_map|trig0|trigg|count\(6) & (!\range_sensor_map|trig0|trigg|count[5]~32\)) # (!\range_sensor_map|trig0|trigg|count\(6) & ((\range_sensor_map|trig0|trigg|count[5]~32\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[6]~34\ = CARRY((!\range_sensor_map|trig0|trigg|count[5]~32\) # (!\range_sensor_map|trig0|trigg|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(6),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[5]~32\,
	combout => \range_sensor_map|trig0|trigg|count[6]~33_combout\,
	cout => \range_sensor_map|trig0|trigg|count[6]~34\);

-- Location: FF_X8_Y8_N21
\range_sensor_map|trig0|trigg|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[6]~33_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(6));

-- Location: LCCOMB_X8_Y8_N22
\range_sensor_map|trig0|trigg|count[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[7]~35_combout\ = (\range_sensor_map|trig0|trigg|count\(7) & (\range_sensor_map|trig0|trigg|count[6]~34\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(7) & (!\range_sensor_map|trig0|trigg|count[6]~34\ & VCC))
-- \range_sensor_map|trig0|trigg|count[7]~36\ = CARRY((\range_sensor_map|trig0|trigg|count\(7) & !\range_sensor_map|trig0|trigg|count[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(7),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[6]~34\,
	combout => \range_sensor_map|trig0|trigg|count[7]~35_combout\,
	cout => \range_sensor_map|trig0|trigg|count[7]~36\);

-- Location: FF_X8_Y8_N23
\range_sensor_map|trig0|trigg|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[7]~35_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(7));

-- Location: LCCOMB_X8_Y8_N24
\range_sensor_map|trig0|trigg|count[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[8]~37_combout\ = (\range_sensor_map|trig0|trigg|count\(8) & (!\range_sensor_map|trig0|trigg|count[7]~36\)) # (!\range_sensor_map|trig0|trigg|count\(8) & ((\range_sensor_map|trig0|trigg|count[7]~36\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[8]~38\ = CARRY((!\range_sensor_map|trig0|trigg|count[7]~36\) # (!\range_sensor_map|trig0|trigg|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(8),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[7]~36\,
	combout => \range_sensor_map|trig0|trigg|count[8]~37_combout\,
	cout => \range_sensor_map|trig0|trigg|count[8]~38\);

-- Location: FF_X8_Y8_N25
\range_sensor_map|trig0|trigg|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[8]~37_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(8));

-- Location: LCCOMB_X8_Y8_N26
\range_sensor_map|trig0|trigg|count[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[9]~39_combout\ = (\range_sensor_map|trig0|trigg|count\(9) & (\range_sensor_map|trig0|trigg|count[8]~38\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(9) & (!\range_sensor_map|trig0|trigg|count[8]~38\ & VCC))
-- \range_sensor_map|trig0|trigg|count[9]~40\ = CARRY((\range_sensor_map|trig0|trigg|count\(9) & !\range_sensor_map|trig0|trigg|count[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(9),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[8]~38\,
	combout => \range_sensor_map|trig0|trigg|count[9]~39_combout\,
	cout => \range_sensor_map|trig0|trigg|count[9]~40\);

-- Location: FF_X8_Y8_N27
\range_sensor_map|trig0|trigg|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[9]~39_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(9));

-- Location: LCCOMB_X8_Y8_N28
\range_sensor_map|trig0|trigg|count[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[10]~41_combout\ = (\range_sensor_map|trig0|trigg|count\(10) & (!\range_sensor_map|trig0|trigg|count[9]~40\)) # (!\range_sensor_map|trig0|trigg|count\(10) & ((\range_sensor_map|trig0|trigg|count[9]~40\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[10]~42\ = CARRY((!\range_sensor_map|trig0|trigg|count[9]~40\) # (!\range_sensor_map|trig0|trigg|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(10),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[9]~40\,
	combout => \range_sensor_map|trig0|trigg|count[10]~41_combout\,
	cout => \range_sensor_map|trig0|trigg|count[10]~42\);

-- Location: FF_X8_Y8_N29
\range_sensor_map|trig0|trigg|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[10]~41_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(10));

-- Location: LCCOMB_X8_Y8_N30
\range_sensor_map|trig0|trigg|count[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[11]~43_combout\ = (\range_sensor_map|trig0|trigg|count\(11) & (\range_sensor_map|trig0|trigg|count[10]~42\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(11) & (!\range_sensor_map|trig0|trigg|count[10]~42\ & VCC))
-- \range_sensor_map|trig0|trigg|count[11]~44\ = CARRY((\range_sensor_map|trig0|trigg|count\(11) & !\range_sensor_map|trig0|trigg|count[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(11),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[10]~42\,
	combout => \range_sensor_map|trig0|trigg|count[11]~43_combout\,
	cout => \range_sensor_map|trig0|trigg|count[11]~44\);

-- Location: FF_X8_Y8_N31
\range_sensor_map|trig0|trigg|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[11]~43_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(11));

-- Location: LCCOMB_X8_Y7_N0
\range_sensor_map|trig0|trigg|count[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[12]~45_combout\ = (\range_sensor_map|trig0|trigg|count\(12) & (!\range_sensor_map|trig0|trigg|count[11]~44\)) # (!\range_sensor_map|trig0|trigg|count\(12) & ((\range_sensor_map|trig0|trigg|count[11]~44\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[12]~46\ = CARRY((!\range_sensor_map|trig0|trigg|count[11]~44\) # (!\range_sensor_map|trig0|trigg|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(12),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[11]~44\,
	combout => \range_sensor_map|trig0|trigg|count[12]~45_combout\,
	cout => \range_sensor_map|trig0|trigg|count[12]~46\);

-- Location: FF_X8_Y7_N1
\range_sensor_map|trig0|trigg|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[12]~45_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(12));

-- Location: LCCOMB_X8_Y7_N2
\range_sensor_map|trig0|trigg|count[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[13]~47_combout\ = (\range_sensor_map|trig0|trigg|count\(13) & (\range_sensor_map|trig0|trigg|count[12]~46\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(13) & (!\range_sensor_map|trig0|trigg|count[12]~46\ & VCC))
-- \range_sensor_map|trig0|trigg|count[13]~48\ = CARRY((\range_sensor_map|trig0|trigg|count\(13) & !\range_sensor_map|trig0|trigg|count[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(13),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[12]~46\,
	combout => \range_sensor_map|trig0|trigg|count[13]~47_combout\,
	cout => \range_sensor_map|trig0|trigg|count[13]~48\);

-- Location: FF_X8_Y7_N3
\range_sensor_map|trig0|trigg|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[13]~47_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(13));

-- Location: LCCOMB_X8_Y7_N4
\range_sensor_map|trig0|trigg|count[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[14]~49_combout\ = (\range_sensor_map|trig0|trigg|count\(14) & (!\range_sensor_map|trig0|trigg|count[13]~48\)) # (!\range_sensor_map|trig0|trigg|count\(14) & ((\range_sensor_map|trig0|trigg|count[13]~48\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[14]~50\ = CARRY((!\range_sensor_map|trig0|trigg|count[13]~48\) # (!\range_sensor_map|trig0|trigg|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(14),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[13]~48\,
	combout => \range_sensor_map|trig0|trigg|count[14]~49_combout\,
	cout => \range_sensor_map|trig0|trigg|count[14]~50\);

-- Location: FF_X8_Y7_N5
\range_sensor_map|trig0|trigg|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[14]~49_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(14));

-- Location: LCCOMB_X8_Y7_N6
\range_sensor_map|trig0|trigg|count[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[15]~51_combout\ = (\range_sensor_map|trig0|trigg|count\(15) & (\range_sensor_map|trig0|trigg|count[14]~50\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(15) & (!\range_sensor_map|trig0|trigg|count[14]~50\ & VCC))
-- \range_sensor_map|trig0|trigg|count[15]~52\ = CARRY((\range_sensor_map|trig0|trigg|count\(15) & !\range_sensor_map|trig0|trigg|count[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(15),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[14]~50\,
	combout => \range_sensor_map|trig0|trigg|count[15]~51_combout\,
	cout => \range_sensor_map|trig0|trigg|count[15]~52\);

-- Location: FF_X8_Y7_N7
\range_sensor_map|trig0|trigg|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[15]~51_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(15));

-- Location: LCCOMB_X8_Y7_N8
\range_sensor_map|trig0|trigg|count[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[16]~53_combout\ = (\range_sensor_map|trig0|trigg|count\(16) & (!\range_sensor_map|trig0|trigg|count[15]~52\)) # (!\range_sensor_map|trig0|trigg|count\(16) & ((\range_sensor_map|trig0|trigg|count[15]~52\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[16]~54\ = CARRY((!\range_sensor_map|trig0|trigg|count[15]~52\) # (!\range_sensor_map|trig0|trigg|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(16),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[15]~52\,
	combout => \range_sensor_map|trig0|trigg|count[16]~53_combout\,
	cout => \range_sensor_map|trig0|trigg|count[16]~54\);

-- Location: FF_X8_Y7_N9
\range_sensor_map|trig0|trigg|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[16]~53_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(16));

-- Location: LCCOMB_X8_Y7_N10
\range_sensor_map|trig0|trigg|count[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[17]~55_combout\ = (\range_sensor_map|trig0|trigg|count\(17) & (\range_sensor_map|trig0|trigg|count[16]~54\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(17) & (!\range_sensor_map|trig0|trigg|count[16]~54\ & VCC))
-- \range_sensor_map|trig0|trigg|count[17]~56\ = CARRY((\range_sensor_map|trig0|trigg|count\(17) & !\range_sensor_map|trig0|trigg|count[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(17),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[16]~54\,
	combout => \range_sensor_map|trig0|trigg|count[17]~55_combout\,
	cout => \range_sensor_map|trig0|trigg|count[17]~56\);

-- Location: FF_X8_Y7_N11
\range_sensor_map|trig0|trigg|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[17]~55_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(17));

-- Location: LCCOMB_X8_Y7_N12
\range_sensor_map|trig0|trigg|count[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[18]~57_combout\ = (\range_sensor_map|trig0|trigg|count\(18) & (!\range_sensor_map|trig0|trigg|count[17]~56\)) # (!\range_sensor_map|trig0|trigg|count\(18) & ((\range_sensor_map|trig0|trigg|count[17]~56\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[18]~58\ = CARRY((!\range_sensor_map|trig0|trigg|count[17]~56\) # (!\range_sensor_map|trig0|trigg|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(18),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[17]~56\,
	combout => \range_sensor_map|trig0|trigg|count[18]~57_combout\,
	cout => \range_sensor_map|trig0|trigg|count[18]~58\);

-- Location: FF_X8_Y7_N13
\range_sensor_map|trig0|trigg|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[18]~57_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(18));

-- Location: LCCOMB_X8_Y7_N14
\range_sensor_map|trig0|trigg|count[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[19]~59_combout\ = (\range_sensor_map|trig0|trigg|count\(19) & (\range_sensor_map|trig0|trigg|count[18]~58\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(19) & (!\range_sensor_map|trig0|trigg|count[18]~58\ & VCC))
-- \range_sensor_map|trig0|trigg|count[19]~60\ = CARRY((\range_sensor_map|trig0|trigg|count\(19) & !\range_sensor_map|trig0|trigg|count[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(19),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[18]~58\,
	combout => \range_sensor_map|trig0|trigg|count[19]~59_combout\,
	cout => \range_sensor_map|trig0|trigg|count[19]~60\);

-- Location: FF_X8_Y7_N15
\range_sensor_map|trig0|trigg|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[19]~59_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(19));

-- Location: LCCOMB_X8_Y7_N16
\range_sensor_map|trig0|trigg|count[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[20]~61_combout\ = (\range_sensor_map|trig0|trigg|count\(20) & (!\range_sensor_map|trig0|trigg|count[19]~60\)) # (!\range_sensor_map|trig0|trigg|count\(20) & ((\range_sensor_map|trig0|trigg|count[19]~60\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[20]~62\ = CARRY((!\range_sensor_map|trig0|trigg|count[19]~60\) # (!\range_sensor_map|trig0|trigg|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(20),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[19]~60\,
	combout => \range_sensor_map|trig0|trigg|count[20]~61_combout\,
	cout => \range_sensor_map|trig0|trigg|count[20]~62\);

-- Location: FF_X8_Y7_N17
\range_sensor_map|trig0|trigg|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[20]~61_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(20));

-- Location: LCCOMB_X8_Y7_N18
\range_sensor_map|trig0|trigg|count[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[21]~63_combout\ = (\range_sensor_map|trig0|trigg|count\(21) & (\range_sensor_map|trig0|trigg|count[20]~62\ $ (GND))) # (!\range_sensor_map|trig0|trigg|count\(21) & (!\range_sensor_map|trig0|trigg|count[20]~62\ & VCC))
-- \range_sensor_map|trig0|trigg|count[21]~64\ = CARRY((\range_sensor_map|trig0|trigg|count\(21) & !\range_sensor_map|trig0|trigg|count[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(21),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[20]~62\,
	combout => \range_sensor_map|trig0|trigg|count[21]~63_combout\,
	cout => \range_sensor_map|trig0|trigg|count[21]~64\);

-- Location: FF_X8_Y7_N19
\range_sensor_map|trig0|trigg|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[21]~63_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(21));

-- Location: LCCOMB_X8_Y7_N20
\range_sensor_map|trig0|trigg|count[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[22]~65_combout\ = (\range_sensor_map|trig0|trigg|count\(22) & (!\range_sensor_map|trig0|trigg|count[21]~64\)) # (!\range_sensor_map|trig0|trigg|count\(22) & ((\range_sensor_map|trig0|trigg|count[21]~64\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[22]~66\ = CARRY((!\range_sensor_map|trig0|trigg|count[21]~64\) # (!\range_sensor_map|trig0|trigg|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(22),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[21]~64\,
	combout => \range_sensor_map|trig0|trigg|count[22]~65_combout\,
	cout => \range_sensor_map|trig0|trigg|count[22]~66\);

-- Location: FF_X8_Y7_N21
\range_sensor_map|trig0|trigg|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[22]~65_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(22));

-- Location: LCCOMB_X8_Y7_N26
\range_sensor_map|trig0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~1_combout\ = (!\range_sensor_map|trig0|trigg|count\(22) & (\range_sensor_map|trig0|trigg|count\(21) & (\range_sensor_map|trig0|trigg|count\(19) & \range_sensor_map|trig0|trigg|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(22),
	datab => \range_sensor_map|trig0|trigg|count\(21),
	datac => \range_sensor_map|trig0|trigg|count\(19),
	datad => \range_sensor_map|trig0|trigg|count\(20),
	combout => \range_sensor_map|trig0|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y7_N22
\range_sensor_map|trig0|trigg|count[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[23]~67_combout\ = \range_sensor_map|trig0|trigg|count\(23) $ (!\range_sensor_map|trig0|trigg|count[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(23),
	cin => \range_sensor_map|trig0|trigg|count[22]~66\,
	combout => \range_sensor_map|trig0|trigg|count[23]~67_combout\);

-- Location: FF_X8_Y7_N23
\range_sensor_map|trig0|trigg|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[23]~67_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(23));

-- Location: LCCOMB_X8_Y7_N24
\range_sensor_map|trig0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~0_combout\ = (\range_sensor_map|trig0|trigg|count\(17) & (\range_sensor_map|trig0|trigg|count\(18) & (!\range_sensor_map|trig0|trigg|count\(16) & \range_sensor_map|trig0|trigg|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(17),
	datab => \range_sensor_map|trig0|trigg|count\(18),
	datac => \range_sensor_map|trig0|trigg|count\(16),
	datad => \range_sensor_map|trig0|trigg|count\(15),
	combout => \range_sensor_map|trig0|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y7_N28
\range_sensor_map|trig0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~2_combout\ = (\range_sensor_map|trig0|Equal0~1_combout\ & (\range_sensor_map|trig0|trigg|count\(23) & \range_sensor_map|trig0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|Equal0~1_combout\,
	datac => \range_sensor_map|trig0|trigg|count\(23),
	datad => \range_sensor_map|trig0|Equal0~0_combout\,
	combout => \range_sensor_map|trig0|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y8_N6
\range_sensor_map|trig0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~3_combout\ = (!\range_sensor_map|trig0|trigg|count\(1) & (!\range_sensor_map|trig0|trigg|count\(0) & !\range_sensor_map|trig0|trigg|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(1),
	datac => \range_sensor_map|trig0|trigg|count\(0),
	datad => \range_sensor_map|trig0|trigg|count\(2),
	combout => \range_sensor_map|trig0|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y8_N2
\range_sensor_map|trig0|trigger~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigger~2_combout\ = (!\range_sensor_map|trig0|trigg|count\(9) & (!\range_sensor_map|trig0|trigg|count\(6) & (!\range_sensor_map|trig0|trigg|count\(7) & !\range_sensor_map|trig0|trigg|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(9),
	datab => \range_sensor_map|trig0|trigg|count\(6),
	datac => \range_sensor_map|trig0|trigg|count\(7),
	datad => \range_sensor_map|trig0|trigg|count\(8),
	combout => \range_sensor_map|trig0|trigger~2_combout\);

-- Location: LCCOMB_X8_Y8_N0
\range_sensor_map|trig0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~4_combout\ = (!\range_sensor_map|trig0|trigg|count\(5) & (!\range_sensor_map|trig0|trigg|count\(4) & (!\range_sensor_map|trig0|trigg|count\(11) & !\range_sensor_map|trig0|trigg|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(5),
	datab => \range_sensor_map|trig0|trigg|count\(4),
	datac => \range_sensor_map|trig0|trigg|count\(11),
	datad => \range_sensor_map|trig0|trigg|count\(10),
	combout => \range_sensor_map|trig0|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y8_N0
\range_sensor_map|trig0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~5_combout\ = (!\range_sensor_map|trig0|trigg|count\(13) & (!\range_sensor_map|trig0|trigg|count\(12) & \range_sensor_map|trig0|trigg|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|trig0|trigg|count\(13),
	datac => \range_sensor_map|trig0|trigg|count\(12),
	datad => \range_sensor_map|trig0|trigg|count\(14),
	combout => \range_sensor_map|trig0|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y8_N2
\range_sensor_map|trig0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~6_combout\ = (\range_sensor_map|trig0|trigger~2_combout\ & (\range_sensor_map|trig0|Equal0~4_combout\ & \range_sensor_map|trig0|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigger~2_combout\,
	datac => \range_sensor_map|trig0|Equal0~4_combout\,
	datad => \range_sensor_map|trig0|Equal0~5_combout\,
	combout => \range_sensor_map|trig0|Equal0~6_combout\);

-- Location: LCCOMB_X9_Y8_N18
\range_sensor_map|trig0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|Equal0~7_combout\ = (\range_sensor_map|trig0|trigg|count\(3) & (\range_sensor_map|trig0|Equal0~2_combout\ & (\range_sensor_map|trig0|Equal0~3_combout\ & \range_sensor_map|trig0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(3),
	datab => \range_sensor_map|trig0|Equal0~2_combout\,
	datac => \range_sensor_map|trig0|Equal0~3_combout\,
	datad => \range_sensor_map|trig0|Equal0~6_combout\,
	combout => \range_sensor_map|trig0|Equal0~7_combout\);

-- Location: FF_X8_Y8_N9
\range_sensor_map|trig0|trigg|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[0]~69_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(0));

-- Location: LCCOMB_X8_Y8_N10
\range_sensor_map|trig0|trigg|count[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[1]~23_combout\ = (\range_sensor_map|trig0|trigg|count\(1) & (\range_sensor_map|trig0|trigg|count\(0) $ (VCC))) # (!\range_sensor_map|trig0|trigg|count\(1) & (\range_sensor_map|trig0|trigg|count\(0) & VCC))
-- \range_sensor_map|trig0|trigg|count[1]~24\ = CARRY((\range_sensor_map|trig0|trigg|count\(1) & \range_sensor_map|trig0|trigg|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(1),
	datab => \range_sensor_map|trig0|trigg|count\(0),
	datad => VCC,
	combout => \range_sensor_map|trig0|trigg|count[1]~23_combout\,
	cout => \range_sensor_map|trig0|trigg|count[1]~24\);

-- Location: FF_X8_Y8_N11
\range_sensor_map|trig0|trigg|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[1]~23_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(1));

-- Location: LCCOMB_X8_Y8_N12
\range_sensor_map|trig0|trigg|count[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigg|count[2]~25_combout\ = (\range_sensor_map|trig0|trigg|count\(2) & (!\range_sensor_map|trig0|trigg|count[1]~24\)) # (!\range_sensor_map|trig0|trigg|count\(2) & ((\range_sensor_map|trig0|trigg|count[1]~24\) # (GND)))
-- \range_sensor_map|trig0|trigg|count[2]~26\ = CARRY((!\range_sensor_map|trig0|trigg|count[1]~24\) # (!\range_sensor_map|trig0|trigg|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(2),
	datad => VCC,
	cin => \range_sensor_map|trig0|trigg|count[1]~24\,
	combout => \range_sensor_map|trig0|trigg|count[2]~25_combout\,
	cout => \range_sensor_map|trig0|trigg|count[2]~26\);

-- Location: FF_X8_Y8_N13
\range_sensor_map|trig0|trigg|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[2]~25_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(2));

-- Location: FF_X8_Y8_N15
\range_sensor_map|trig0|trigg|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|trig0|trigg|count[3]~27_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|trig0|trigg|count\(3));

-- Location: LCCOMB_X9_Y8_N16
\range_sensor_map|trig0|trigger~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigger~0_combout\ = (\range_sensor_map|trig0|trigg|count\(12) & (\range_sensor_map|trig0|trigg|count\(11) & (\range_sensor_map|trig0|trigg|count\(13) & \range_sensor_map|trig0|trigg|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(12),
	datab => \range_sensor_map|trig0|trigg|count\(11),
	datac => \range_sensor_map|trig0|trigg|count\(13),
	datad => \range_sensor_map|trig0|trigg|count\(10),
	combout => \range_sensor_map|trig0|trigger~0_combout\);

-- Location: LCCOMB_X8_Y8_N4
\range_sensor_map|trig0|trigger~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigger~1_combout\ = (\range_sensor_map|trig0|trigg|count\(5) & (((\range_sensor_map|trig0|trigg|count\(3)) # (\range_sensor_map|trig0|trigg|count\(4))) # (!\range_sensor_map|trig0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|Equal0~3_combout\,
	datab => \range_sensor_map|trig0|trigg|count\(5),
	datac => \range_sensor_map|trig0|trigg|count\(3),
	datad => \range_sensor_map|trig0|trigg|count\(4),
	combout => \range_sensor_map|trig0|trigger~1_combout\);

-- Location: LCCOMB_X9_Y8_N30
\range_sensor_map|trig0|trigger~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigger~3_combout\ = (\range_sensor_map|trig0|trigger~0_combout\ & (!\range_sensor_map|trig0|trigg|count\(14) & ((\range_sensor_map|trig0|trigger~1_combout\) # (!\range_sensor_map|trig0|trigger~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigger~2_combout\,
	datab => \range_sensor_map|trig0|trigger~0_combout\,
	datac => \range_sensor_map|trig0|trigger~1_combout\,
	datad => \range_sensor_map|trig0|trigg|count\(14),
	combout => \range_sensor_map|trig0|trigger~3_combout\);

-- Location: LCCOMB_X9_Y8_N12
\range_sensor_map|trig0|trigger~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|trig0|trigger~4_combout\ = (\range_sensor_map|trig0|Equal0~2_combout\ & ((\range_sensor_map|trig0|trigger~3_combout\) # ((!\range_sensor_map|trig0|trigg|count\(3) & \range_sensor_map|trig0|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|trig0|trigg|count\(3),
	datab => \range_sensor_map|trig0|Equal0~6_combout\,
	datac => \range_sensor_map|trig0|trigger~3_combout\,
	datad => \range_sensor_map|trig0|Equal0~2_combout\,
	combout => \range_sensor_map|trig0|trigger~4_combout\);

-- Location: IOIBUF_X0_Y18_N22
\pulse_pin[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse_pin(1),
	o => \pulse_pin[1]~input_o\);

-- Location: CLKCTRL_G4
\pulse_pin[1]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulse_pin[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulse_pin[1]~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y18_N4
\range_sensor_map|distan1|Counter_pulse|count[0]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[0]~55_combout\ = \pulse_pin[1]~input_o\ $ (\range_sensor_map|distan1|Counter_pulse|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_pin[1]~input_o\,
	datac => \range_sensor_map|distan1|Counter_pulse|count\(0),
	combout => \range_sensor_map|distan1|Counter_pulse|count[0]~55_combout\);

-- Location: LCCOMB_X9_Y18_N6
\range_sensor_map|distan1|Counter_pulse|count[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[0]~feeder_combout\ = \range_sensor_map|distan1|Counter_pulse|count[0]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count[0]~55_combout\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[0]~feeder_combout\);

-- Location: FF_X9_Y18_N7
\range_sensor_map|distan1|Counter_pulse|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[0]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(0));

-- Location: LCCOMB_X8_Y18_N12
\range_sensor_map|distan1|Counter_pulse|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[1]~21_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(0) & (\range_sensor_map|distan1|Counter_pulse|count\(1) $ (VCC))) # (!\range_sensor_map|distan1|Counter_pulse|count\(0) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(1) & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[1]~22\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(0) & \range_sensor_map|distan1|Counter_pulse|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(0),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(1),
	datad => VCC,
	combout => \range_sensor_map|distan1|Counter_pulse|count[1]~21_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[1]~22\);

-- Location: LCCOMB_X9_Y18_N0
\range_sensor_map|distan1|Counter_pulse|count[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[1]~feeder_combout\ = \range_sensor_map|distan1|Counter_pulse|count[1]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan1|Counter_pulse|count[1]~21_combout\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[1]~feeder_combout\);

-- Location: FF_X9_Y18_N1
\range_sensor_map|distan1|Counter_pulse|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[1]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(1));

-- Location: LCCOMB_X8_Y18_N14
\range_sensor_map|distan1|Counter_pulse|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[2]~23_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(2) & (!\range_sensor_map|distan1|Counter_pulse|count[1]~22\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(2) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[1]~22\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[2]~24\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[1]~22\) # (!\range_sensor_map|distan1|Counter_pulse|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[1]~22\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[2]~23_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[2]~24\);

-- Location: LCCOMB_X9_Y18_N2
\range_sensor_map|distan1|Counter_pulse|count[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[2]~feeder_combout\ = \range_sensor_map|distan1|Counter_pulse|count[2]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan1|Counter_pulse|count[2]~23_combout\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[2]~feeder_combout\);

-- Location: FF_X9_Y18_N3
\range_sensor_map|distan1|Counter_pulse|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[2]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(2));

-- Location: LCCOMB_X8_Y18_N16
\range_sensor_map|distan1|Counter_pulse|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[3]~25_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(3) & (\range_sensor_map|distan1|Counter_pulse|count[2]~24\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(3) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[2]~24\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[3]~26\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(3) & !\range_sensor_map|distan1|Counter_pulse|count[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(3),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[2]~24\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[3]~25_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[3]~26\);

-- Location: LCCOMB_X9_Y18_N8
\range_sensor_map|distan1|Counter_pulse|count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[3]~feeder_combout\ = \range_sensor_map|distan1|Counter_pulse|count[3]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan1|Counter_pulse|count[3]~25_combout\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[3]~feeder_combout\);

-- Location: FF_X9_Y18_N9
\range_sensor_map|distan1|Counter_pulse|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[3]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(3));

-- Location: LCCOMB_X8_Y18_N18
\range_sensor_map|distan1|Counter_pulse|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[4]~27_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(4) & (!\range_sensor_map|distan1|Counter_pulse|count[3]~26\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(4) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[3]~26\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[4]~28\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[3]~26\) # (!\range_sensor_map|distan1|Counter_pulse|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(4),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[3]~26\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[4]~27_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[4]~28\);

-- Location: FF_X8_Y18_N19
\range_sensor_map|distan1|Counter_pulse|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[4]~27_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(4));

-- Location: LCCOMB_X8_Y18_N20
\range_sensor_map|distan1|Counter_pulse|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[5]~29_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(5) & (\range_sensor_map|distan1|Counter_pulse|count[4]~28\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(5) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[4]~28\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[5]~30\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(5) & !\range_sensor_map|distan1|Counter_pulse|count[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(5),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[4]~28\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[5]~29_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[5]~30\);

-- Location: FF_X8_Y18_N21
\range_sensor_map|distan1|Counter_pulse|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[5]~29_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(5));

-- Location: LCCOMB_X8_Y18_N22
\range_sensor_map|distan1|Counter_pulse|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[6]~31_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(6) & (!\range_sensor_map|distan1|Counter_pulse|count[5]~30\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(6) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[5]~30\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[6]~32\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[5]~30\) # (!\range_sensor_map|distan1|Counter_pulse|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[5]~30\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[6]~31_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[6]~32\);

-- Location: FF_X8_Y18_N23
\range_sensor_map|distan1|Counter_pulse|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[6]~31_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(6));

-- Location: LCCOMB_X8_Y18_N24
\range_sensor_map|distan1|Counter_pulse|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[7]~33_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(7) & (\range_sensor_map|distan1|Counter_pulse|count[6]~32\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(7) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[6]~32\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[7]~34\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(7) & !\range_sensor_map|distan1|Counter_pulse|count[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(7),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[6]~32\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[7]~33_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[7]~34\);

-- Location: FF_X8_Y18_N25
\range_sensor_map|distan1|Counter_pulse|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[7]~33_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(7));

-- Location: LCCOMB_X8_Y18_N26
\range_sensor_map|distan1|Counter_pulse|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[8]~35_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(8) & (!\range_sensor_map|distan1|Counter_pulse|count[7]~34\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(8) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[7]~34\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[8]~36\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[7]~34\) # (!\range_sensor_map|distan1|Counter_pulse|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(8),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[7]~34\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[8]~35_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[8]~36\);

-- Location: FF_X8_Y18_N27
\range_sensor_map|distan1|Counter_pulse|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[8]~35_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(8));

-- Location: LCCOMB_X8_Y18_N28
\range_sensor_map|distan1|Counter_pulse|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[9]~37_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(9) & (\range_sensor_map|distan1|Counter_pulse|count[8]~36\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(9) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[8]~36\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[9]~38\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(9) & !\range_sensor_map|distan1|Counter_pulse|count[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(9),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[8]~36\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[9]~37_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[9]~38\);

-- Location: FF_X8_Y18_N29
\range_sensor_map|distan1|Counter_pulse|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[9]~37_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(9));

-- Location: LCCOMB_X8_Y18_N30
\range_sensor_map|distan1|Counter_pulse|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[10]~39_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(10) & (!\range_sensor_map|distan1|Counter_pulse|count[9]~38\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(10) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[9]~38\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[10]~40\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[9]~38\) # (!\range_sensor_map|distan1|Counter_pulse|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(10),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[9]~38\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[10]~39_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[10]~40\);

-- Location: FF_X8_Y18_N31
\range_sensor_map|distan1|Counter_pulse|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[10]~39_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(10));

-- Location: LCCOMB_X8_Y17_N0
\range_sensor_map|distan1|Counter_pulse|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[11]~41_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(11) & (\range_sensor_map|distan1|Counter_pulse|count[10]~40\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(11) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[10]~40\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[11]~42\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(11) & !\range_sensor_map|distan1|Counter_pulse|count[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[10]~40\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[11]~41_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[11]~42\);

-- Location: FF_X8_Y17_N1
\range_sensor_map|distan1|Counter_pulse|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[11]~41_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(11));

-- Location: LCCOMB_X8_Y17_N2
\range_sensor_map|distan1|Counter_pulse|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[12]~43_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(12) & (!\range_sensor_map|distan1|Counter_pulse|count[11]~42\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(12) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[11]~42\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[12]~44\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[11]~42\) # (!\range_sensor_map|distan1|Counter_pulse|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(12),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[11]~42\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[12]~43_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[12]~44\);

-- Location: FF_X8_Y17_N3
\range_sensor_map|distan1|Counter_pulse|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[12]~43_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(12));

-- Location: LCCOMB_X8_Y17_N4
\range_sensor_map|distan1|Counter_pulse|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[13]~45_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(13) & (\range_sensor_map|distan1|Counter_pulse|count[12]~44\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(13) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[12]~44\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[13]~46\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(13) & !\range_sensor_map|distan1|Counter_pulse|count[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[12]~44\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[13]~45_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[13]~46\);

-- Location: FF_X8_Y17_N5
\range_sensor_map|distan1|Counter_pulse|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[13]~45_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(13));

-- Location: LCCOMB_X8_Y17_N6
\range_sensor_map|distan1|Counter_pulse|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[14]~47_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(14) & (!\range_sensor_map|distan1|Counter_pulse|count[13]~46\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(14) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[13]~46\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[14]~48\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[13]~46\) # (!\range_sensor_map|distan1|Counter_pulse|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(14),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[13]~46\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[14]~47_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[14]~48\);

-- Location: FF_X8_Y17_N7
\range_sensor_map|distan1|Counter_pulse|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[14]~47_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(14));

-- Location: LCCOMB_X8_Y17_N8
\range_sensor_map|distan1|Counter_pulse|count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[15]~49_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(15) & (\range_sensor_map|distan1|Counter_pulse|count[14]~48\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(15) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[14]~48\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[15]~50\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(15) & !\range_sensor_map|distan1|Counter_pulse|count[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(15),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[14]~48\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[15]~49_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[15]~50\);

-- Location: FF_X8_Y17_N9
\range_sensor_map|distan1|Counter_pulse|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[15]~49_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(15));

-- Location: LCCOMB_X8_Y17_N10
\range_sensor_map|distan1|Counter_pulse|count[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[16]~51_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(16) & (!\range_sensor_map|distan1|Counter_pulse|count[15]~50\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(16) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[15]~50\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[16]~52\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[15]~50\) # (!\range_sensor_map|distan1|Counter_pulse|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(16),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[15]~50\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[16]~51_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[16]~52\);

-- Location: FF_X8_Y17_N11
\range_sensor_map|distan1|Counter_pulse|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[16]~51_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(16));

-- Location: LCCOMB_X8_Y17_N12
\range_sensor_map|distan1|Counter_pulse|count[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[17]~53_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(17) & (\range_sensor_map|distan1|Counter_pulse|count[16]~52\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(17) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[16]~52\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[17]~54\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(17) & !\range_sensor_map|distan1|Counter_pulse|count[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(17),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[16]~52\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[17]~53_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[17]~54\);

-- Location: FF_X8_Y17_N13
\range_sensor_map|distan1|Counter_pulse|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[17]~53_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(17));

-- Location: LCCOMB_X8_Y17_N14
\range_sensor_map|distan1|Counter_pulse|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[18]~56_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(18) & (!\range_sensor_map|distan1|Counter_pulse|count[17]~54\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(18) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[17]~54\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[18]~57\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[17]~54\) # (!\range_sensor_map|distan1|Counter_pulse|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[17]~54\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[18]~56_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[18]~57\);

-- Location: FF_X8_Y17_N15
\range_sensor_map|distan1|Counter_pulse|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[18]~56_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(18));

-- Location: LCCOMB_X8_Y17_N16
\range_sensor_map|distan1|Counter_pulse|count[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[19]~58_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(19) & (\range_sensor_map|distan1|Counter_pulse|count[18]~57\ $ (GND))) # (!\range_sensor_map|distan1|Counter_pulse|count\(19) & 
-- (!\range_sensor_map|distan1|Counter_pulse|count[18]~57\ & VCC))
-- \range_sensor_map|distan1|Counter_pulse|count[19]~59\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(19) & !\range_sensor_map|distan1|Counter_pulse|count[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(19),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[18]~57\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[19]~58_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[19]~59\);

-- Location: FF_X8_Y17_N17
\range_sensor_map|distan1|Counter_pulse|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[19]~58_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(19));

-- Location: LCCOMB_X9_Y18_N10
\range_sensor_map|distan1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~1_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(0) & \range_sensor_map|distan1|Counter_pulse|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(0),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(1),
	datad => VCC,
	cout => \range_sensor_map|distan1|Add0~1_cout\);

-- Location: LCCOMB_X9_Y18_N12
\range_sensor_map|distan1|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~3_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(1) & (!\range_sensor_map|distan1|Counter_pulse|count\(2) & !\range_sensor_map|distan1|Add0~1_cout\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(1) & 
-- ((!\range_sensor_map|distan1|Add0~1_cout\) # (!\range_sensor_map|distan1|Counter_pulse|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(1),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~1_cout\,
	cout => \range_sensor_map|distan1|Add0~3_cout\);

-- Location: LCCOMB_X9_Y18_N14
\range_sensor_map|distan1|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~5_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(3) & ((\range_sensor_map|distan1|Counter_pulse|count\(2)) # (!\range_sensor_map|distan1|Add0~3_cout\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(3) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(2) & !\range_sensor_map|distan1|Add0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(3),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~3_cout\,
	cout => \range_sensor_map|distan1|Add0~5_cout\);

-- Location: LCCOMB_X9_Y18_N16
\range_sensor_map|distan1|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~7_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(3) & (!\range_sensor_map|distan1|Counter_pulse|count\(4) & !\range_sensor_map|distan1|Add0~5_cout\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(3) & 
-- ((!\range_sensor_map|distan1|Add0~5_cout\) # (!\range_sensor_map|distan1|Counter_pulse|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(3),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(4),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~5_cout\,
	cout => \range_sensor_map|distan1|Add0~7_cout\);

-- Location: LCCOMB_X9_Y18_N18
\range_sensor_map|distan1|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~9_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(4) & ((\range_sensor_map|distan1|Counter_pulse|count\(5)) # (!\range_sensor_map|distan1|Add0~7_cout\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(4) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(5) & !\range_sensor_map|distan1|Add0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(4),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(5),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~7_cout\,
	cout => \range_sensor_map|distan1|Add0~9_cout\);

-- Location: LCCOMB_X9_Y18_N20
\range_sensor_map|distan1|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~11_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(5) & (!\range_sensor_map|distan1|Counter_pulse|count\(6) & !\range_sensor_map|distan1|Add0~9_cout\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(5) & 
-- ((!\range_sensor_map|distan1|Add0~9_cout\) # (!\range_sensor_map|distan1|Counter_pulse|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(5),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~9_cout\,
	cout => \range_sensor_map|distan1|Add0~11_cout\);

-- Location: LCCOMB_X9_Y18_N22
\range_sensor_map|distan1|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~13_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(7) & ((\range_sensor_map|distan1|Counter_pulse|count\(6)) # (!\range_sensor_map|distan1|Add0~11_cout\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(7) 
-- & (\range_sensor_map|distan1|Counter_pulse|count\(6) & !\range_sensor_map|distan1|Add0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(7),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~11_cout\,
	cout => \range_sensor_map|distan1|Add0~13_cout\);

-- Location: LCCOMB_X9_Y18_N24
\range_sensor_map|distan1|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~15_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(8) & (!\range_sensor_map|distan1|Counter_pulse|count\(7) & !\range_sensor_map|distan1|Add0~13_cout\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(8) & 
-- ((!\range_sensor_map|distan1|Add0~13_cout\) # (!\range_sensor_map|distan1|Counter_pulse|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(8),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(7),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~13_cout\,
	cout => \range_sensor_map|distan1|Add0~15_cout\);

-- Location: LCCOMB_X9_Y18_N26
\range_sensor_map|distan1|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~17_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(8) & ((\range_sensor_map|distan1|Counter_pulse|count\(9)) # (!\range_sensor_map|distan1|Add0~15_cout\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(8) 
-- & (\range_sensor_map|distan1|Counter_pulse|count\(9) & !\range_sensor_map|distan1|Add0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(8),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(9),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~15_cout\,
	cout => \range_sensor_map|distan1|Add0~17_cout\);

-- Location: LCCOMB_X9_Y18_N28
\range_sensor_map|distan1|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~19_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(9) & (!\range_sensor_map|distan1|Counter_pulse|count\(10) & !\range_sensor_map|distan1|Add0~17_cout\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(9) & 
-- ((!\range_sensor_map|distan1|Add0~17_cout\) # (!\range_sensor_map|distan1|Counter_pulse|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(9),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(10),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~17_cout\,
	cout => \range_sensor_map|distan1|Add0~19_cout\);

-- Location: LCCOMB_X9_Y18_N30
\range_sensor_map|distan1|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~21_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(11) & ((\range_sensor_map|distan1|Counter_pulse|count\(10)) # (!\range_sensor_map|distan1|Add0~19_cout\))) # 
-- (!\range_sensor_map|distan1|Counter_pulse|count\(11) & (\range_sensor_map|distan1|Counter_pulse|count\(10) & !\range_sensor_map|distan1|Add0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(11),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(10),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~19_cout\,
	cout => \range_sensor_map|distan1|Add0~21_cout\);

-- Location: LCCOMB_X9_Y17_N0
\range_sensor_map|distan1|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~23_cout\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(12) & (!\range_sensor_map|distan1|Counter_pulse|count\(11) & !\range_sensor_map|distan1|Add0~21_cout\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(12) 
-- & ((!\range_sensor_map|distan1|Add0~21_cout\) # (!\range_sensor_map|distan1|Counter_pulse|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(12),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~21_cout\,
	cout => \range_sensor_map|distan1|Add0~23_cout\);

-- Location: LCCOMB_X9_Y17_N2
\range_sensor_map|distan1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~24_combout\ = ((\range_sensor_map|distan1|Counter_pulse|count\(12) $ (\range_sensor_map|distan1|Counter_pulse|count\(13) $ (!\range_sensor_map|distan1|Add0~23_cout\)))) # (GND)
-- \range_sensor_map|distan1|Add0~25\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(12) & ((\range_sensor_map|distan1|Counter_pulse|count\(13)) # (!\range_sensor_map|distan1|Add0~23_cout\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(12) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(13) & !\range_sensor_map|distan1|Add0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(12),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~23_cout\,
	combout => \range_sensor_map|distan1|Add0~24_combout\,
	cout => \range_sensor_map|distan1|Add0~25\);

-- Location: LCCOMB_X9_Y17_N4
\range_sensor_map|distan1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~26_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(13) & ((\range_sensor_map|distan1|Counter_pulse|count\(14) & (\range_sensor_map|distan1|Add0~25\ & VCC)) # (!\range_sensor_map|distan1|Counter_pulse|count\(14) & 
-- (!\range_sensor_map|distan1|Add0~25\)))) # (!\range_sensor_map|distan1|Counter_pulse|count\(13) & ((\range_sensor_map|distan1|Counter_pulse|count\(14) & (!\range_sensor_map|distan1|Add0~25\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(14) & 
-- ((\range_sensor_map|distan1|Add0~25\) # (GND)))))
-- \range_sensor_map|distan1|Add0~27\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(13) & (!\range_sensor_map|distan1|Counter_pulse|count\(14) & !\range_sensor_map|distan1|Add0~25\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(13) & 
-- ((!\range_sensor_map|distan1|Add0~25\) # (!\range_sensor_map|distan1|Counter_pulse|count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(13),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(14),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~25\,
	combout => \range_sensor_map|distan1|Add0~26_combout\,
	cout => \range_sensor_map|distan1|Add0~27\);

-- Location: LCCOMB_X9_Y17_N6
\range_sensor_map|distan1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~28_combout\ = ((\range_sensor_map|distan1|Counter_pulse|count\(15) $ (\range_sensor_map|distan1|Counter_pulse|count\(14) $ (!\range_sensor_map|distan1|Add0~27\)))) # (GND)
-- \range_sensor_map|distan1|Add0~29\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(15) & ((\range_sensor_map|distan1|Counter_pulse|count\(14)) # (!\range_sensor_map|distan1|Add0~27\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(15) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(14) & !\range_sensor_map|distan1|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(15),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(14),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~27\,
	combout => \range_sensor_map|distan1|Add0~28_combout\,
	cout => \range_sensor_map|distan1|Add0~29\);

-- Location: LCCOMB_X9_Y17_N8
\range_sensor_map|distan1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~30_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(15) & ((\range_sensor_map|distan1|Counter_pulse|count\(16) & (\range_sensor_map|distan1|Add0~29\ & VCC)) # (!\range_sensor_map|distan1|Counter_pulse|count\(16) & 
-- (!\range_sensor_map|distan1|Add0~29\)))) # (!\range_sensor_map|distan1|Counter_pulse|count\(15) & ((\range_sensor_map|distan1|Counter_pulse|count\(16) & (!\range_sensor_map|distan1|Add0~29\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(16) & 
-- ((\range_sensor_map|distan1|Add0~29\) # (GND)))))
-- \range_sensor_map|distan1|Add0~31\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(15) & (!\range_sensor_map|distan1|Counter_pulse|count\(16) & !\range_sensor_map|distan1|Add0~29\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(15) & 
-- ((!\range_sensor_map|distan1|Add0~29\) # (!\range_sensor_map|distan1|Counter_pulse|count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(15),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(16),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~29\,
	combout => \range_sensor_map|distan1|Add0~30_combout\,
	cout => \range_sensor_map|distan1|Add0~31\);

-- Location: LCCOMB_X9_Y17_N10
\range_sensor_map|distan1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~32_combout\ = ((\range_sensor_map|distan1|Counter_pulse|count\(17) $ (\range_sensor_map|distan1|Counter_pulse|count\(16) $ (!\range_sensor_map|distan1|Add0~31\)))) # (GND)
-- \range_sensor_map|distan1|Add0~33\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(17) & ((\range_sensor_map|distan1|Counter_pulse|count\(16)) # (!\range_sensor_map|distan1|Add0~31\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(17) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(16) & !\range_sensor_map|distan1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(17),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(16),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~31\,
	combout => \range_sensor_map|distan1|Add0~32_combout\,
	cout => \range_sensor_map|distan1|Add0~33\);

-- Location: LCCOMB_X9_Y17_N12
\range_sensor_map|distan1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~34_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(17) & ((\range_sensor_map|distan1|Counter_pulse|count\(18) & (\range_sensor_map|distan1|Add0~33\ & VCC)) # (!\range_sensor_map|distan1|Counter_pulse|count\(18) & 
-- (!\range_sensor_map|distan1|Add0~33\)))) # (!\range_sensor_map|distan1|Counter_pulse|count\(17) & ((\range_sensor_map|distan1|Counter_pulse|count\(18) & (!\range_sensor_map|distan1|Add0~33\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(18) & 
-- ((\range_sensor_map|distan1|Add0~33\) # (GND)))))
-- \range_sensor_map|distan1|Add0~35\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(17) & (!\range_sensor_map|distan1|Counter_pulse|count\(18) & !\range_sensor_map|distan1|Add0~33\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(17) & 
-- ((!\range_sensor_map|distan1|Add0~33\) # (!\range_sensor_map|distan1|Counter_pulse|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(17),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~33\,
	combout => \range_sensor_map|distan1|Add0~34_combout\,
	cout => \range_sensor_map|distan1|Add0~35\);

-- Location: LCCOMB_X9_Y17_N14
\range_sensor_map|distan1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~36_combout\ = ((\range_sensor_map|distan1|Counter_pulse|count\(19) $ (\range_sensor_map|distan1|Counter_pulse|count\(18) $ (!\range_sensor_map|distan1|Add0~35\)))) # (GND)
-- \range_sensor_map|distan1|Add0~37\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(19) & ((\range_sensor_map|distan1|Counter_pulse|count\(18)) # (!\range_sensor_map|distan1|Add0~35\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(19) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(18) & !\range_sensor_map|distan1|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(19),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~35\,
	combout => \range_sensor_map|distan1|Add0~36_combout\,
	cout => \range_sensor_map|distan1|Add0~37\);

-- Location: LCCOMB_X8_Y17_N18
\range_sensor_map|distan1|Counter_pulse|count[20]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[20]~60_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(20) & (!\range_sensor_map|distan1|Counter_pulse|count[19]~59\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(20) & 
-- ((\range_sensor_map|distan1|Counter_pulse|count[19]~59\) # (GND)))
-- \range_sensor_map|distan1|Counter_pulse|count[20]~61\ = CARRY((!\range_sensor_map|distan1|Counter_pulse|count[19]~59\) # (!\range_sensor_map|distan1|Counter_pulse|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan1|Counter_pulse|count[19]~59\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[20]~60_combout\,
	cout => \range_sensor_map|distan1|Counter_pulse|count[20]~61\);

-- Location: FF_X8_Y17_N19
\range_sensor_map|distan1|Counter_pulse|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[20]~60_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(20));

-- Location: LCCOMB_X8_Y17_N20
\range_sensor_map|distan1|Counter_pulse|count[21]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Counter_pulse|count[21]~62_combout\ = \range_sensor_map|distan1|Counter_pulse|count[20]~61\ $ (!\range_sensor_map|distan1|Counter_pulse|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan1|Counter_pulse|count\(21),
	cin => \range_sensor_map|distan1|Counter_pulse|count[20]~61\,
	combout => \range_sensor_map|distan1|Counter_pulse|count[21]~62_combout\);

-- Location: FF_X8_Y17_N21
\range_sensor_map|distan1|Counter_pulse|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Counter_pulse|count[21]~62_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Counter_pulse|count\(21));

-- Location: LCCOMB_X9_Y17_N16
\range_sensor_map|distan1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~38_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(19) & ((\range_sensor_map|distan1|Counter_pulse|count\(20) & (\range_sensor_map|distan1|Add0~37\ & VCC)) # (!\range_sensor_map|distan1|Counter_pulse|count\(20) & 
-- (!\range_sensor_map|distan1|Add0~37\)))) # (!\range_sensor_map|distan1|Counter_pulse|count\(19) & ((\range_sensor_map|distan1|Counter_pulse|count\(20) & (!\range_sensor_map|distan1|Add0~37\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(20) & 
-- ((\range_sensor_map|distan1|Add0~37\) # (GND)))))
-- \range_sensor_map|distan1|Add0~39\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(19) & (!\range_sensor_map|distan1|Counter_pulse|count\(20) & !\range_sensor_map|distan1|Add0~37\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(19) & 
-- ((!\range_sensor_map|distan1|Add0~37\) # (!\range_sensor_map|distan1|Counter_pulse|count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(19),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~37\,
	combout => \range_sensor_map|distan1|Add0~38_combout\,
	cout => \range_sensor_map|distan1|Add0~39\);

-- Location: LCCOMB_X9_Y17_N18
\range_sensor_map|distan1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~40_combout\ = ((\range_sensor_map|distan1|Counter_pulse|count\(20) $ (\range_sensor_map|distan1|Counter_pulse|count\(21) $ (!\range_sensor_map|distan1|Add0~39\)))) # (GND)
-- \range_sensor_map|distan1|Add0~41\ = CARRY((\range_sensor_map|distan1|Counter_pulse|count\(20) & ((\range_sensor_map|distan1|Counter_pulse|count\(21)) # (!\range_sensor_map|distan1|Add0~39\))) # (!\range_sensor_map|distan1|Counter_pulse|count\(20) & 
-- (\range_sensor_map|distan1|Counter_pulse|count\(21) & !\range_sensor_map|distan1|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Counter_pulse|count\(20),
	datab => \range_sensor_map|distan1|Counter_pulse|count\(21),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~39\,
	combout => \range_sensor_map|distan1|Add0~40_combout\,
	cout => \range_sensor_map|distan1|Add0~41\);

-- Location: LCCOMB_X9_Y17_N20
\range_sensor_map|distan1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~42_combout\ = (\range_sensor_map|distan1|Counter_pulse|count\(21) & (!\range_sensor_map|distan1|Add0~41\)) # (!\range_sensor_map|distan1|Counter_pulse|count\(21) & ((\range_sensor_map|distan1|Add0~41\) # (GND)))
-- \range_sensor_map|distan1|Add0~43\ = CARRY((!\range_sensor_map|distan1|Add0~41\) # (!\range_sensor_map|distan1|Counter_pulse|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Counter_pulse|count\(21),
	datad => VCC,
	cin => \range_sensor_map|distan1|Add0~41\,
	combout => \range_sensor_map|distan1|Add0~42_combout\,
	cout => \range_sensor_map|distan1|Add0~43\);

-- Location: LCCOMB_X9_Y17_N22
\range_sensor_map|distan1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Add0~44_combout\ = !\range_sensor_map|distan1|Add0~43\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \range_sensor_map|distan1|Add0~43\,
	combout => \range_sensor_map|distan1|Add0~44_combout\);

-- Location: LCCOMB_X9_Y17_N26
\range_sensor_map|distan1|Distance~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~27_combout\ = (\range_sensor_map|distan1|Add0~36_combout\) # ((\range_sensor_map|distan1|Add0~44_combout\) # (\range_sensor_map|distan1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Add0~36_combout\,
	datac => \range_sensor_map|distan1|Add0~44_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~27_combout\);

-- Location: FF_X9_Y17_N27
\range_sensor_map|distan1|Distance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(6));

-- Location: LCCOMB_X9_Y17_N28
\range_sensor_map|distan1|Distance~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~28_combout\ = (\range_sensor_map|distan1|Add0~38_combout\) # ((\range_sensor_map|distan1|Add0~44_combout\) # (\range_sensor_map|distan1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Add0~38_combout\,
	datac => \range_sensor_map|distan1|Add0~44_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~28_combout\);

-- Location: FF_X9_Y17_N29
\range_sensor_map|distan1|Distance[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(7));

-- Location: LCCOMB_X9_Y17_N24
\range_sensor_map|distan1|Distance~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~26_combout\ = (\range_sensor_map|distan1|Add0~40_combout\) # ((\range_sensor_map|distan1|Add0~44_combout\) # (\range_sensor_map|distan1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Add0~40_combout\,
	datac => \range_sensor_map|distan1|Add0~44_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~26_combout\);

-- Location: FF_X9_Y17_N25
\range_sensor_map|distan1|Distance[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(8));

-- Location: LCCOMB_X9_Y17_N30
\range_sensor_map|distan1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|LessThan0~0_combout\ = (\range_sensor_map|distan1|Add0~28_combout\) # ((\range_sensor_map|distan1|Add0~24_combout\ & \range_sensor_map|distan1|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Add0~24_combout\,
	datac => \range_sensor_map|distan1|Add0~26_combout\,
	datad => \range_sensor_map|distan1|Add0~28_combout\,
	combout => \range_sensor_map|distan1|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y17_N4
\range_sensor_map|distan1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|LessThan0~1_combout\ = (\range_sensor_map|distan1|Add0~34_combout\) # ((\range_sensor_map|distan1|Add0~32_combout\) # ((\range_sensor_map|distan1|Add0~30_combout\ & \range_sensor_map|distan1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~34_combout\,
	datab => \range_sensor_map|distan1|Add0~32_combout\,
	datac => \range_sensor_map|distan1|Add0~30_combout\,
	datad => \range_sensor_map|distan1|LessThan0~0_combout\,
	combout => \range_sensor_map|distan1|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y17_N26
\range_sensor_map|distan1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|LessThan0~2_combout\ = (\range_sensor_map|distan1|Add0~36_combout\ & (\range_sensor_map|distan1|Add0~38_combout\ & \range_sensor_map|distan1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~36_combout\,
	datac => \range_sensor_map|distan1|Add0~38_combout\,
	datad => \range_sensor_map|distan1|Add0~40_combout\,
	combout => \range_sensor_map|distan1|LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y17_N18
\range_sensor_map|distan1|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|LessThan0~3_combout\ = (\range_sensor_map|distan1|Add0~42_combout\) # (\range_sensor_map|distan1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Add0~42_combout\,
	datad => \range_sensor_map|distan1|Add0~44_combout\,
	combout => \range_sensor_map|distan1|LessThan0~3_combout\);

-- Location: LCCOMB_X10_Y17_N14
\range_sensor_map|distan1|Distance~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~17_combout\ = (\range_sensor_map|distan1|Add0~34_combout\) # ((\range_sensor_map|distan1|LessThan0~3_combout\) # ((\range_sensor_map|distan1|LessThan0~1_combout\ & \range_sensor_map|distan1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~34_combout\,
	datab => \range_sensor_map|distan1|LessThan0~1_combout\,
	datac => \range_sensor_map|distan1|LessThan0~2_combout\,
	datad => \range_sensor_map|distan1|LessThan0~3_combout\,
	combout => \range_sensor_map|distan1|Distance~17_combout\);

-- Location: FF_X10_Y17_N15
\range_sensor_map|distan1|Distance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(5));

-- Location: LCCOMB_X9_Y19_N12
\range_sensor_map|BCD_conv1|bcd~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~2_combout\ = (\range_sensor_map|distan1|Distance\(6) & (!\range_sensor_map|distan1|Distance\(8) & ((\range_sensor_map|distan1|Distance\(5)) # (!\range_sensor_map|distan1|Distance\(7))))) # 
-- (!\range_sensor_map|distan1|Distance\(6) & (\range_sensor_map|distan1|Distance\(8) & ((\range_sensor_map|distan1|Distance\(7)) # (!\range_sensor_map|distan1|Distance\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(6),
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	datad => \range_sensor_map|distan1|Distance\(5),
	combout => \range_sensor_map|BCD_conv1|bcd~2_combout\);

-- Location: LCCOMB_X9_Y19_N24
\range_sensor_map|BCD_conv1|bcd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~0_combout\ = (\range_sensor_map|distan1|Distance\(7) & ((\range_sensor_map|distan1|Distance\(6) & (!\range_sensor_map|distan1|Distance\(8) & !\range_sensor_map|distan1|Distance\(5))) # 
-- (!\range_sensor_map|distan1|Distance\(6) & (\range_sensor_map|distan1|Distance\(8) & \range_sensor_map|distan1|Distance\(5))))) # (!\range_sensor_map|distan1|Distance\(7) & (\range_sensor_map|distan1|Distance\(5) $ 
-- (((!\range_sensor_map|distan1|Distance\(6) & \range_sensor_map|distan1|Distance\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(6),
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	datad => \range_sensor_map|distan1|Distance\(5),
	combout => \range_sensor_map|BCD_conv1|bcd~0_combout\);

-- Location: LCCOMB_X9_Y19_N26
\range_sensor_map|BCD_conv1|bcd~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~1_combout\ = (\range_sensor_map|distan1|Distance\(7) & (!\range_sensor_map|distan1|Distance\(5) & (\range_sensor_map|distan1|Distance\(6) $ (!\range_sensor_map|distan1|Distance\(8))))) # 
-- (!\range_sensor_map|distan1|Distance\(7) & (!\range_sensor_map|distan1|Distance\(6) & (\range_sensor_map|distan1|Distance\(8) & \range_sensor_map|distan1|Distance\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(6),
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	datad => \range_sensor_map|distan1|Distance\(5),
	combout => \range_sensor_map|BCD_conv1|bcd~1_combout\);

-- Location: LCCOMB_X10_Y17_N10
\range_sensor_map|distan1|Distance~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~18_combout\ = (\range_sensor_map|distan1|Add0~32_combout\) # (\range_sensor_map|distan1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~32_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~18_combout\);

-- Location: LCCOMB_X10_Y17_N0
\range_sensor_map|distan1|Distance~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~19_combout\ = (\range_sensor_map|distan1|Add0~44_combout\) # ((\range_sensor_map|distan1|Distance~18_combout\) # ((\range_sensor_map|distan1|LessThan0~2_combout\ & \range_sensor_map|distan1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|LessThan0~2_combout\,
	datab => \range_sensor_map|distan1|Add0~44_combout\,
	datac => \range_sensor_map|distan1|LessThan0~1_combout\,
	datad => \range_sensor_map|distan1|Distance~18_combout\,
	combout => \range_sensor_map|distan1|Distance~19_combout\);

-- Location: FF_X10_Y17_N1
\range_sensor_map|distan1|Distance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(4));

-- Location: LCCOMB_X9_Y19_N20
\range_sensor_map|BCD_conv1|bcd~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~6_combout\ = \range_sensor_map|BCD_conv1|bcd~1_combout\ $ (((\range_sensor_map|BCD_conv1|bcd~2_combout\ & ((\range_sensor_map|BCD_conv1|bcd~0_combout\) # (\range_sensor_map|distan1|Distance\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~2_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~0_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~1_combout\,
	datad => \range_sensor_map|distan1|Distance\(4),
	combout => \range_sensor_map|BCD_conv1|bcd~6_combout\);

-- Location: LCCOMB_X9_Y19_N28
\range_sensor_map|BCD_conv1|bcd~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~8_combout\ = (\range_sensor_map|distan1|Distance\(6) & (\range_sensor_map|distan1|Distance\(7) & ((\range_sensor_map|distan1|Distance\(5)) # (!\range_sensor_map|distan1|Distance\(8))))) # 
-- (!\range_sensor_map|distan1|Distance\(6) & ((\range_sensor_map|distan1|Distance\(7) & (!\range_sensor_map|distan1|Distance\(8) & \range_sensor_map|distan1|Distance\(5))) # (!\range_sensor_map|distan1|Distance\(7) & 
-- (\range_sensor_map|distan1|Distance\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(6),
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	datad => \range_sensor_map|distan1|Distance\(5),
	combout => \range_sensor_map|BCD_conv1|bcd~8_combout\);

-- Location: LCCOMB_X9_Y19_N8
\range_sensor_map|BCD_conv1|bcd~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~5_combout\ = (\range_sensor_map|distan1|Distance\(6) & (\range_sensor_map|distan1|Distance\(7) & (\range_sensor_map|distan1|Distance\(8) & \range_sensor_map|distan1|Distance\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(6),
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	datad => \range_sensor_map|distan1|Distance\(5),
	combout => \range_sensor_map|BCD_conv1|bcd~5_combout\);

-- Location: LCCOMB_X9_Y19_N18
\range_sensor_map|BCD_conv1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan0~0_combout\ = ((!\range_sensor_map|distan1|Distance\(7) & !\range_sensor_map|distan1|Distance\(6))) # (!\range_sensor_map|distan1|Distance\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	datad => \range_sensor_map|distan1|Distance\(6),
	combout => \range_sensor_map|BCD_conv1|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y19_N10
\range_sensor_map|BCD_conv1|bcd~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~7_combout\ = (\range_sensor_map|BCD_conv1|bcd~5_combout\) # ((\range_sensor_map|BCD_conv1|bcd~6_combout\ & \range_sensor_map|BCD_conv1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~6_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~5_combout\,
	datad => \range_sensor_map|BCD_conv1|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~7_combout\);

-- Location: LCCOMB_X9_Y19_N30
\range_sensor_map|BCD_conv1|bcd~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~3_combout\ = (\range_sensor_map|BCD_conv1|bcd~1_combout\) # ((\range_sensor_map|BCD_conv1|bcd~2_combout\ & ((\range_sensor_map|BCD_conv1|bcd~0_combout\) # (\range_sensor_map|distan1|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~2_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~0_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~1_combout\,
	datad => \range_sensor_map|distan1|Distance\(4),
	combout => \range_sensor_map|BCD_conv1|bcd~3_combout\);

-- Location: LCCOMB_X10_Y17_N28
\range_sensor_map|distan1|Distance~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~15_combout\ = (\range_sensor_map|distan1|Add0~30_combout\) # (\range_sensor_map|distan1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~30_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~15_combout\);

-- Location: LCCOMB_X10_Y17_N12
\range_sensor_map|distan1|Distance~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~16_combout\ = (\range_sensor_map|distan1|Add0~44_combout\) # ((\range_sensor_map|distan1|Distance~15_combout\) # ((\range_sensor_map|distan1|LessThan0~1_combout\ & \range_sensor_map|distan1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~44_combout\,
	datab => \range_sensor_map|distan1|LessThan0~1_combout\,
	datac => \range_sensor_map|distan1|LessThan0~2_combout\,
	datad => \range_sensor_map|distan1|Distance~15_combout\,
	combout => \range_sensor_map|distan1|Distance~16_combout\);

-- Location: FF_X10_Y17_N13
\range_sensor_map|distan1|Distance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(3));

-- Location: LCCOMB_X9_Y19_N0
\range_sensor_map|BCD_conv1|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan3~0_combout\ = (\range_sensor_map|BCD_conv1|bcd~3_combout\ & ((\range_sensor_map|BCD_conv1|bcd~0_combout\ & (\range_sensor_map|distan1|Distance\(3) & \range_sensor_map|distan1|Distance\(4))) # 
-- (!\range_sensor_map|BCD_conv1|bcd~0_combout\ & ((!\range_sensor_map|distan1|Distance\(4)))))) # (!\range_sensor_map|BCD_conv1|bcd~3_combout\ & (\range_sensor_map|BCD_conv1|bcd~0_combout\ & ((\range_sensor_map|distan1|Distance\(3)) # 
-- (\range_sensor_map|distan1|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~3_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~0_combout\,
	datac => \range_sensor_map|distan1|Distance\(3),
	datad => \range_sensor_map|distan1|Distance\(4),
	combout => \range_sensor_map|BCD_conv1|LessThan3~0_combout\);

-- Location: LCCOMB_X9_Y19_N22
\range_sensor_map|BCD_conv1|bcd~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~4_combout\ = (\range_sensor_map|BCD_conv1|bcd~2_combout\ & (!\range_sensor_map|BCD_conv1|bcd~0_combout\ & ((!\range_sensor_map|distan1|Distance\(4))))) # (!\range_sensor_map|BCD_conv1|bcd~2_combout\ & 
-- (\range_sensor_map|BCD_conv1|bcd~1_combout\ & ((\range_sensor_map|BCD_conv1|bcd~0_combout\) # (\range_sensor_map|distan1|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~2_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~0_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~1_combout\,
	datad => \range_sensor_map|distan1|Distance\(4),
	combout => \range_sensor_map|BCD_conv1|bcd~4_combout\);

-- Location: LCCOMB_X8_Y19_N4
\range_sensor_map|BCD_conv1|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan6~0_combout\ = (\range_sensor_map|BCD_conv1|bcd~7_combout\) # (\range_sensor_map|BCD_conv1|LessThan3~0_combout\ $ (\range_sensor_map|BCD_conv1|bcd~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv1|bcd~7_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv1|bcd~4_combout\,
	combout => \range_sensor_map|BCD_conv1|LessThan6~0_combout\);

-- Location: LCCOMB_X8_Y19_N22
\range_sensor_map|BCD_conv1|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan6~1_combout\ = (\range_sensor_map|BCD_conv1|bcd~8_combout\ & (\range_sensor_map|BCD_conv1|LessThan6~0_combout\ & ((\range_sensor_map|BCD_conv1|bcd~6_combout\) # (\range_sensor_map|BCD_conv1|LessThan0~0_combout\)))) # 
-- (!\range_sensor_map|BCD_conv1|bcd~8_combout\ & (!\range_sensor_map|BCD_conv1|bcd~6_combout\ & ((!\range_sensor_map|BCD_conv1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~6_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~8_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan6~0_combout\,
	datad => \range_sensor_map|BCD_conv1|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv1|LessThan6~1_combout\);

-- Location: LCCOMB_X8_Y19_N10
\range_sensor_map|BCD_conv1|bcd~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~13_combout\ = \range_sensor_map|BCD_conv1|bcd~7_combout\ $ (((\range_sensor_map|BCD_conv1|LessThan6~1_combout\ & (\range_sensor_map|BCD_conv1|LessThan3~0_combout\ $ (!\range_sensor_map|BCD_conv1|bcd~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~7_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv1|bcd~4_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~13_combout\);

-- Location: LCCOMB_X9_Y19_N2
\range_sensor_map|BCD_conv1|bcd~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~9_combout\ = (\range_sensor_map|BCD_conv1|bcd~2_combout\ & (!\range_sensor_map|distan1|Distance\(4) & ((\range_sensor_map|BCD_conv1|bcd~0_combout\) # (\range_sensor_map|BCD_conv1|bcd~1_combout\)))) # 
-- (!\range_sensor_map|BCD_conv1|bcd~2_combout\ & ((\range_sensor_map|BCD_conv1|bcd~1_combout\ $ (\range_sensor_map|distan1|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~2_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~0_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~1_combout\,
	datad => \range_sensor_map|distan1|Distance\(4),
	combout => \range_sensor_map|BCD_conv1|bcd~9_combout\);

-- Location: LCCOMB_X9_Y19_N16
\range_sensor_map|BCD_conv1|bcd~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~10_combout\ = (\range_sensor_map|BCD_conv1|bcd~0_combout\ & ((\range_sensor_map|distan1|Distance\(4)) # ((!\range_sensor_map|BCD_conv1|bcd~2_combout\ & !\range_sensor_map|BCD_conv1|bcd~1_combout\)))) # 
-- (!\range_sensor_map|BCD_conv1|bcd~0_combout\ & (((\range_sensor_map|BCD_conv1|bcd~1_combout\ & !\range_sensor_map|distan1|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~2_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~0_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~1_combout\,
	datad => \range_sensor_map|distan1|Distance\(4),
	combout => \range_sensor_map|BCD_conv1|bcd~10_combout\);

-- Location: LCCOMB_X7_Y19_N4
\range_sensor_map|BCD_conv1|bcd~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~11_combout\ = (\range_sensor_map|BCD_conv1|bcd~10_combout\ & (((!\range_sensor_map|BCD_conv1|bcd~9_combout\ & !\range_sensor_map|distan1|Distance\(3))))) # (!\range_sensor_map|BCD_conv1|bcd~10_combout\ & 
-- (\range_sensor_map|BCD_conv1|bcd~4_combout\ & ((\range_sensor_map|BCD_conv1|bcd~9_combout\) # (\range_sensor_map|distan1|Distance\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~4_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~9_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~10_combout\,
	datad => \range_sensor_map|distan1|Distance\(3),
	combout => \range_sensor_map|BCD_conv1|bcd~11_combout\);

-- Location: LCCOMB_X10_Y17_N16
\range_sensor_map|distan1|Distance~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~20_combout\ = (\range_sensor_map|distan1|Add0~28_combout\) # (\range_sensor_map|distan1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan1|Add0~28_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~20_combout\);

-- Location: LCCOMB_X10_Y17_N6
\range_sensor_map|distan1|Distance~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~21_combout\ = (\range_sensor_map|distan1|Add0~44_combout\) # ((\range_sensor_map|distan1|Distance~20_combout\) # ((\range_sensor_map|distan1|LessThan0~1_combout\ & \range_sensor_map|distan1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~44_combout\,
	datab => \range_sensor_map|distan1|LessThan0~1_combout\,
	datac => \range_sensor_map|distan1|LessThan0~2_combout\,
	datad => \range_sensor_map|distan1|Distance~20_combout\,
	combout => \range_sensor_map|distan1|Distance~21_combout\);

-- Location: FF_X10_Y17_N7
\range_sensor_map|distan1|Distance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(2));

-- Location: LCCOMB_X7_Y19_N28
\range_sensor_map|BCD_conv1|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan3~1_combout\ = (\range_sensor_map|BCD_conv1|bcd~4_combout\) # ((\range_sensor_map|BCD_conv1|bcd~10_combout\ & ((\range_sensor_map|BCD_conv1|bcd~9_combout\) # (\range_sensor_map|distan1|Distance\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~4_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~9_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~10_combout\,
	datad => \range_sensor_map|distan1|Distance\(3),
	combout => \range_sensor_map|BCD_conv1|LessThan3~1_combout\);

-- Location: LCCOMB_X7_Y19_N22
\range_sensor_map|BCD_conv1|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan5~0_combout\ = (\range_sensor_map|BCD_conv1|LessThan3~1_combout\ & ((\range_sensor_map|BCD_conv1|bcd~9_combout\ & (\range_sensor_map|distan1|Distance\(2) & \range_sensor_map|distan1|Distance\(3))) # 
-- (!\range_sensor_map|BCD_conv1|bcd~9_combout\ & ((!\range_sensor_map|distan1|Distance\(3)))))) # (!\range_sensor_map|BCD_conv1|LessThan3~1_combout\ & (\range_sensor_map|BCD_conv1|bcd~9_combout\ & ((\range_sensor_map|distan1|Distance\(2)) # 
-- (\range_sensor_map|distan1|Distance\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(2),
	datab => \range_sensor_map|BCD_conv1|LessThan3~1_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~9_combout\,
	datad => \range_sensor_map|distan1|Distance\(3),
	combout => \range_sensor_map|BCD_conv1|LessThan5~0_combout\);

-- Location: LCCOMB_X7_Y19_N18
\range_sensor_map|BCD_conv1|bcd~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~12_combout\ = \range_sensor_map|BCD_conv1|bcd~11_combout\ $ (!\range_sensor_map|BCD_conv1|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv1|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan5~0_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~12_combout\);

-- Location: LCCOMB_X8_Y19_N8
\range_sensor_map|BCD_conv1|bcd~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~14_combout\ = (\range_sensor_map|BCD_conv1|bcd~8_combout\ & (!\range_sensor_map|BCD_conv1|LessThan6~0_combout\ & ((\range_sensor_map|BCD_conv1|bcd~6_combout\) # (\range_sensor_map|BCD_conv1|LessThan0~0_combout\)))) # 
-- (!\range_sensor_map|BCD_conv1|bcd~8_combout\ & (!\range_sensor_map|BCD_conv1|bcd~6_combout\ & (\range_sensor_map|BCD_conv1|LessThan6~0_combout\ & !\range_sensor_map|BCD_conv1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~6_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~8_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan6~0_combout\,
	datad => \range_sensor_map|BCD_conv1|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~14_combout\);

-- Location: LCCOMB_X8_Y19_N16
\range_sensor_map|BCD_conv1|bcd~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~20_combout\ = \range_sensor_map|BCD_conv1|LessThan6~1_combout\ $ (\range_sensor_map|BCD_conv1|bcd~4_combout\ $ (!\range_sensor_map|BCD_conv1|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan3~0_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~20_combout\);

-- Location: LCCOMB_X8_Y19_N2
\vga_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan0~1_combout\ = (\range_sensor_map|BCD_conv1|bcd~13_combout\ & ((\range_sensor_map|BCD_conv1|bcd~14_combout\ & (\range_sensor_map|BCD_conv1|bcd~12_combout\ & \range_sensor_map|BCD_conv1|bcd~20_combout\)) # 
-- (!\range_sensor_map|BCD_conv1|bcd~14_combout\ & ((!\range_sensor_map|BCD_conv1|bcd~20_combout\))))) # (!\range_sensor_map|BCD_conv1|bcd~13_combout\ & (((\range_sensor_map|BCD_conv1|bcd~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~13_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~12_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~14_combout\,
	datad => \range_sensor_map|BCD_conv1|bcd~20_combout\,
	combout => \vga_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y19_N24
\range_sensor_map|BCD_conv1|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan8~0_combout\ = (\range_sensor_map|BCD_conv1|LessThan6~1_combout\ $ (\range_sensor_map|BCD_conv1|LessThan3~0_combout\ $ (\range_sensor_map|BCD_conv1|bcd~4_combout\))) # (!\range_sensor_map|BCD_conv1|bcd~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~12_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv1|bcd~4_combout\,
	combout => \range_sensor_map|BCD_conv1|LessThan8~0_combout\);

-- Location: LCCOMB_X7_Y19_N8
\range_sensor_map|BCD_conv1|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan5~1_combout\ = (\range_sensor_map|BCD_conv1|bcd~11_combout\) # (\range_sensor_map|BCD_conv1|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv1|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan5~0_combout\,
	combout => \range_sensor_map|BCD_conv1|LessThan5~1_combout\);

-- Location: LCCOMB_X7_Y19_N10
\range_sensor_map|BCD_conv1|bcd~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~19_combout\ = \range_sensor_map|BCD_conv1|LessThan3~1_combout\ $ (\range_sensor_map|distan1|Distance\(3) $ (((!\range_sensor_map|distan1|Distance\(2) & \range_sensor_map|BCD_conv1|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(2),
	datab => \range_sensor_map|BCD_conv1|LessThan3~1_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan5~1_combout\,
	datad => \range_sensor_map|distan1|Distance\(3),
	combout => \range_sensor_map|BCD_conv1|bcd~19_combout\);

-- Location: LCCOMB_X7_Y19_N30
\range_sensor_map|BCD_conv1|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|Add5~0_combout\ = \range_sensor_map|BCD_conv1|bcd~9_combout\ $ (((\range_sensor_map|distan1|Distance\(2) & ((\range_sensor_map|distan1|Distance\(3)) # (!\range_sensor_map|BCD_conv1|LessThan3~1_combout\))) # 
-- (!\range_sensor_map|distan1|Distance\(2) & (!\range_sensor_map|BCD_conv1|LessThan3~1_combout\ & \range_sensor_map|distan1|Distance\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(2),
	datab => \range_sensor_map|BCD_conv1|LessThan3~1_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~9_combout\,
	datad => \range_sensor_map|distan1|Distance\(3),
	combout => \range_sensor_map|BCD_conv1|Add5~0_combout\);

-- Location: LCCOMB_X7_Y19_N24
\range_sensor_map|BCD_conv1|bcd~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~17_combout\ = (\range_sensor_map|BCD_conv1|bcd~4_combout\ & (\range_sensor_map|BCD_conv1|bcd~9_combout\ $ (((!\range_sensor_map|distan1|Distance\(3)))))) # (!\range_sensor_map|BCD_conv1|bcd~4_combout\ & 
-- (\range_sensor_map|BCD_conv1|bcd~9_combout\ & ((\range_sensor_map|distan1|Distance\(3)) # (!\range_sensor_map|BCD_conv1|bcd~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~4_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~9_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~10_combout\,
	datad => \range_sensor_map|distan1|Distance\(3),
	combout => \range_sensor_map|BCD_conv1|bcd~17_combout\);

-- Location: LCCOMB_X7_Y19_N2
\range_sensor_map|BCD_conv1|bcd~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~18_combout\ = (\range_sensor_map|BCD_conv1|bcd~11_combout\ & (\range_sensor_map|BCD_conv1|Add5~0_combout\)) # (!\range_sensor_map|BCD_conv1|bcd~11_combout\ & ((\range_sensor_map|BCD_conv1|LessThan5~0_combout\ & 
-- (\range_sensor_map|BCD_conv1|Add5~0_combout\)) # (!\range_sensor_map|BCD_conv1|LessThan5~0_combout\ & ((\range_sensor_map|BCD_conv1|bcd~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|Add5~0_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan5~0_combout\,
	datad => \range_sensor_map|BCD_conv1|bcd~17_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~18_combout\);

-- Location: LCCOMB_X10_Y17_N30
\range_sensor_map|distan1|Distance~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~22_combout\ = (\range_sensor_map|distan1|Add0~26_combout\) # (\range_sensor_map|distan1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan1|Add0~26_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~22_combout\);

-- Location: LCCOMB_X10_Y17_N24
\range_sensor_map|distan1|Distance~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~23_combout\ = (\range_sensor_map|distan1|Add0~44_combout\) # ((\range_sensor_map|distan1|Distance~22_combout\) # ((\range_sensor_map|distan1|LessThan0~2_combout\ & \range_sensor_map|distan1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|LessThan0~2_combout\,
	datab => \range_sensor_map|distan1|Add0~44_combout\,
	datac => \range_sensor_map|distan1|Distance~22_combout\,
	datad => \range_sensor_map|distan1|LessThan0~1_combout\,
	combout => \range_sensor_map|distan1|Distance~23_combout\);

-- Location: FF_X10_Y17_N25
\range_sensor_map|distan1|Distance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(1));

-- Location: LCCOMB_X7_Y19_N0
\range_sensor_map|BCD_conv1|bcd~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~16_combout\ = \range_sensor_map|distan1|Distance\(2) $ (((\range_sensor_map|BCD_conv1|bcd~11_combout\) # (\range_sensor_map|BCD_conv1|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(2),
	datab => \range_sensor_map|BCD_conv1|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan5~0_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~16_combout\);

-- Location: LCCOMB_X7_Y19_N16
\vga_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan0~0_combout\ = \range_sensor_map|BCD_conv1|bcd~18_combout\ $ (((\range_sensor_map|BCD_conv1|bcd~19_combout\ & ((\range_sensor_map|distan1|Distance\(1)) # (\range_sensor_map|BCD_conv1|bcd~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~19_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~18_combout\,
	datac => \range_sensor_map|distan1|Distance\(1),
	datad => \range_sensor_map|BCD_conv1|bcd~16_combout\,
	combout => \vga_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y19_N26
\vga_inst|LessThan1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan1~20_combout\ = (\range_sensor_map|BCD_conv1|bcd~16_combout\) # ((\range_sensor_map|BCD_conv1|bcd~19_combout\ & ((!\range_sensor_map|distan1|Distance\(1)))) # (!\range_sensor_map|BCD_conv1|bcd~19_combout\ & 
-- ((\range_sensor_map|BCD_conv1|bcd~18_combout\) # (\range_sensor_map|distan1|Distance\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~19_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~18_combout\,
	datac => \range_sensor_map|distan1|Distance\(1),
	datad => \range_sensor_map|BCD_conv1|bcd~16_combout\,
	combout => \vga_inst|LessThan1~20_combout\);

-- Location: LCCOMB_X10_Y17_N8
\range_sensor_map|distan1|Distance~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~24_combout\ = (\range_sensor_map|distan1|Add0~24_combout\) # (\range_sensor_map|distan1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Add0~24_combout\,
	datad => \range_sensor_map|distan1|Add0~42_combout\,
	combout => \range_sensor_map|distan1|Distance~24_combout\);

-- Location: LCCOMB_X10_Y17_N2
\range_sensor_map|distan1|Distance~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan1|Distance~25_combout\ = (\range_sensor_map|distan1|Add0~44_combout\) # ((\range_sensor_map|distan1|Distance~24_combout\) # ((\range_sensor_map|distan1|LessThan0~2_combout\ & \range_sensor_map|distan1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|LessThan0~2_combout\,
	datab => \range_sensor_map|distan1|Add0~44_combout\,
	datac => \range_sensor_map|distan1|Distance~24_combout\,
	datad => \range_sensor_map|distan1|LessThan0~1_combout\,
	combout => \range_sensor_map|distan1|Distance~25_combout\);

-- Location: FF_X10_Y17_N3
\range_sensor_map|distan1|Distance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[1]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan1|Distance~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan1|Distance\(0));

-- Location: LCCOMB_X7_Y19_N14
\vga_inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan0~3_combout\ = (\vga_inst|LessThan0~0_combout\) # ((\vga_inst|LessThan1~20_combout\) # (\range_sensor_map|distan1|Distance\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|LessThan0~0_combout\,
	datac => \vga_inst|LessThan1~20_combout\,
	datad => \range_sensor_map|distan1|Distance\(0),
	combout => \vga_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y19_N18
\vga_inst|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan0~4_combout\ = (\vga_inst|LessThan0~3_combout\ & (\range_sensor_map|BCD_conv1|bcd~14_combout\ $ (((\range_sensor_map|BCD_conv1|bcd~13_combout\ & \range_sensor_map|BCD_conv1|LessThan8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~13_combout\,
	datab => \range_sensor_map|BCD_conv1|LessThan8~0_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~14_combout\,
	datad => \vga_inst|LessThan0~3_combout\,
	combout => \vga_inst|LessThan0~4_combout\);

-- Location: PLL_1
\vga_inst|disp_clk|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 11,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 161,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 81,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 81,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 216,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \vga_inst|disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y14_N6
\vga_inst|hposition[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[0]~12_combout\ = \vga_inst|hposition\(0) $ (VCC)
-- \vga_inst|hposition[0]~13\ = CARRY(\vga_inst|hposition\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(0),
	datad => VCC,
	combout => \vga_inst|hposition[0]~12_combout\,
	cout => \vga_inst|hposition[0]~13\);

-- Location: LCCOMB_X7_Y14_N26
\vga_inst|hposition[10]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[10]~32_combout\ = (\vga_inst|hposition\(10) & (\vga_inst|hposition[9]~31\ $ (GND))) # (!\vga_inst|hposition\(10) & (!\vga_inst|hposition[9]~31\ & VCC))
-- \vga_inst|hposition[10]~33\ = CARRY((\vga_inst|hposition\(10) & !\vga_inst|hposition[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(10),
	datad => VCC,
	cin => \vga_inst|hposition[9]~31\,
	combout => \vga_inst|hposition[10]~32_combout\,
	cout => \vga_inst|hposition[10]~33\);

-- Location: LCCOMB_X7_Y14_N28
\vga_inst|hposition[11]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[11]~34_combout\ = \vga_inst|hposition[10]~33\ $ (\vga_inst|hposition\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_inst|hposition\(11),
	cin => \vga_inst|hposition[10]~33\,
	combout => \vga_inst|hposition[11]~34_combout\);

-- Location: FF_X7_Y14_N29
\vga_inst|hposition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[11]~34_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(11));

-- Location: LCCOMB_X6_Y14_N30
\vga_inst|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan15~1_combout\ = ((!\vga_inst|hposition\(6) & (!\vga_inst|hposition\(7) & !\vga_inst|hposition\(5)))) # (!\vga_inst|hposition\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(6),
	datab => \vga_inst|hposition\(8),
	datac => \vga_inst|hposition\(7),
	datad => \vga_inst|hposition\(5),
	combout => \vga_inst|LessThan15~1_combout\);

-- Location: LCCOMB_X6_Y14_N16
\vga_inst|LessThan15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan15~2_combout\ = (\vga_inst|hposition\(11)) # ((\vga_inst|hposition\(10)) # ((!\vga_inst|LessThan15~1_combout\ & \vga_inst|hposition\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(11),
	datab => \vga_inst|hposition\(10),
	datac => \vga_inst|LessThan15~1_combout\,
	datad => \vga_inst|hposition\(9),
	combout => \vga_inst|LessThan15~2_combout\);

-- Location: FF_X7_Y14_N7
\vga_inst|hposition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[0]~12_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(0));

-- Location: LCCOMB_X7_Y14_N8
\vga_inst|hposition[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[1]~14_combout\ = (\vga_inst|hposition\(1) & (!\vga_inst|hposition[0]~13\)) # (!\vga_inst|hposition\(1) & ((\vga_inst|hposition[0]~13\) # (GND)))
-- \vga_inst|hposition[1]~15\ = CARRY((!\vga_inst|hposition[0]~13\) # (!\vga_inst|hposition\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(1),
	datad => VCC,
	cin => \vga_inst|hposition[0]~13\,
	combout => \vga_inst|hposition[1]~14_combout\,
	cout => \vga_inst|hposition[1]~15\);

-- Location: FF_X7_Y14_N9
\vga_inst|hposition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[1]~14_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(1));

-- Location: LCCOMB_X7_Y14_N10
\vga_inst|hposition[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[2]~16_combout\ = (\vga_inst|hposition\(2) & (\vga_inst|hposition[1]~15\ $ (GND))) # (!\vga_inst|hposition\(2) & (!\vga_inst|hposition[1]~15\ & VCC))
-- \vga_inst|hposition[2]~17\ = CARRY((\vga_inst|hposition\(2) & !\vga_inst|hposition[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(2),
	datad => VCC,
	cin => \vga_inst|hposition[1]~15\,
	combout => \vga_inst|hposition[2]~16_combout\,
	cout => \vga_inst|hposition[2]~17\);

-- Location: FF_X7_Y14_N11
\vga_inst|hposition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[2]~16_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(2));

-- Location: LCCOMB_X7_Y14_N12
\vga_inst|hposition[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[3]~18_combout\ = (\vga_inst|hposition\(3) & (!\vga_inst|hposition[2]~17\)) # (!\vga_inst|hposition\(3) & ((\vga_inst|hposition[2]~17\) # (GND)))
-- \vga_inst|hposition[3]~19\ = CARRY((!\vga_inst|hposition[2]~17\) # (!\vga_inst|hposition\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(3),
	datad => VCC,
	cin => \vga_inst|hposition[2]~17\,
	combout => \vga_inst|hposition[3]~18_combout\,
	cout => \vga_inst|hposition[3]~19\);

-- Location: FF_X7_Y14_N13
\vga_inst|hposition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[3]~18_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(3));

-- Location: LCCOMB_X7_Y14_N14
\vga_inst|hposition[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[4]~20_combout\ = (\vga_inst|hposition\(4) & (\vga_inst|hposition[3]~19\ $ (GND))) # (!\vga_inst|hposition\(4) & (!\vga_inst|hposition[3]~19\ & VCC))
-- \vga_inst|hposition[4]~21\ = CARRY((\vga_inst|hposition\(4) & !\vga_inst|hposition[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(4),
	datad => VCC,
	cin => \vga_inst|hposition[3]~19\,
	combout => \vga_inst|hposition[4]~20_combout\,
	cout => \vga_inst|hposition[4]~21\);

-- Location: FF_X7_Y14_N15
\vga_inst|hposition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[4]~20_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(4));

-- Location: LCCOMB_X7_Y14_N16
\vga_inst|hposition[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[5]~22_combout\ = (\vga_inst|hposition\(5) & (!\vga_inst|hposition[4]~21\)) # (!\vga_inst|hposition\(5) & ((\vga_inst|hposition[4]~21\) # (GND)))
-- \vga_inst|hposition[5]~23\ = CARRY((!\vga_inst|hposition[4]~21\) # (!\vga_inst|hposition\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(5),
	datad => VCC,
	cin => \vga_inst|hposition[4]~21\,
	combout => \vga_inst|hposition[5]~22_combout\,
	cout => \vga_inst|hposition[5]~23\);

-- Location: FF_X7_Y14_N17
\vga_inst|hposition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[5]~22_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(5));

-- Location: LCCOMB_X7_Y14_N18
\vga_inst|hposition[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[6]~24_combout\ = (\vga_inst|hposition\(6) & (\vga_inst|hposition[5]~23\ $ (GND))) # (!\vga_inst|hposition\(6) & (!\vga_inst|hposition[5]~23\ & VCC))
-- \vga_inst|hposition[6]~25\ = CARRY((\vga_inst|hposition\(6) & !\vga_inst|hposition[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(6),
	datad => VCC,
	cin => \vga_inst|hposition[5]~23\,
	combout => \vga_inst|hposition[6]~24_combout\,
	cout => \vga_inst|hposition[6]~25\);

-- Location: FF_X7_Y14_N19
\vga_inst|hposition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[6]~24_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(6));

-- Location: LCCOMB_X7_Y14_N20
\vga_inst|hposition[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[7]~26_combout\ = (\vga_inst|hposition\(7) & (!\vga_inst|hposition[6]~25\)) # (!\vga_inst|hposition\(7) & ((\vga_inst|hposition[6]~25\) # (GND)))
-- \vga_inst|hposition[7]~27\ = CARRY((!\vga_inst|hposition[6]~25\) # (!\vga_inst|hposition\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(7),
	datad => VCC,
	cin => \vga_inst|hposition[6]~25\,
	combout => \vga_inst|hposition[7]~26_combout\,
	cout => \vga_inst|hposition[7]~27\);

-- Location: FF_X7_Y14_N21
\vga_inst|hposition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[7]~26_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(7));

-- Location: LCCOMB_X7_Y14_N22
\vga_inst|hposition[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[8]~28_combout\ = (\vga_inst|hposition\(8) & (\vga_inst|hposition[7]~27\ $ (GND))) # (!\vga_inst|hposition\(8) & (!\vga_inst|hposition[7]~27\ & VCC))
-- \vga_inst|hposition[8]~29\ = CARRY((\vga_inst|hposition\(8) & !\vga_inst|hposition[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(8),
	datad => VCC,
	cin => \vga_inst|hposition[7]~27\,
	combout => \vga_inst|hposition[8]~28_combout\,
	cout => \vga_inst|hposition[8]~29\);

-- Location: FF_X7_Y14_N23
\vga_inst|hposition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[8]~28_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(8));

-- Location: LCCOMB_X7_Y14_N24
\vga_inst|hposition[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|hposition[9]~30_combout\ = (\vga_inst|hposition\(9) & (!\vga_inst|hposition[8]~29\)) # (!\vga_inst|hposition\(9) & ((\vga_inst|hposition[8]~29\) # (GND)))
-- \vga_inst|hposition[9]~31\ = CARRY((!\vga_inst|hposition[8]~29\) # (!\vga_inst|hposition\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(9),
	datad => VCC,
	cin => \vga_inst|hposition[8]~29\,
	combout => \vga_inst|hposition[9]~30_combout\,
	cout => \vga_inst|hposition[9]~31\);

-- Location: FF_X7_Y14_N25
\vga_inst|hposition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[9]~30_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(9));

-- Location: FF_X7_Y14_N27
\vga_inst|hposition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|hposition[10]~32_combout\,
	sclr => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hposition\(10));

-- Location: LCCOMB_X6_Y14_N4
\vga_inst|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan3~0_combout\ = (!\vga_inst|hposition\(10) & (!\vga_inst|hposition\(11) & !\vga_inst|hposition\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(10),
	datac => \vga_inst|hposition\(11),
	datad => \vga_inst|hposition\(9),
	combout => \vga_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X4_Y16_N4
\vga_inst|vposition[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[0]~12_combout\ = \vga_inst|vposition\(0) $ (VCC)
-- \vga_inst|vposition[0]~13\ = CARRY(\vga_inst|vposition\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(0),
	datad => VCC,
	combout => \vga_inst|vposition[0]~12_combout\,
	cout => \vga_inst|vposition[0]~13\);

-- Location: LCCOMB_X4_Y16_N14
\vga_inst|vposition[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[5]~22_combout\ = (\vga_inst|vposition\(5) & (!\vga_inst|vposition[4]~21\)) # (!\vga_inst|vposition\(5) & ((\vga_inst|vposition[4]~21\) # (GND)))
-- \vga_inst|vposition[5]~23\ = CARRY((!\vga_inst|vposition[4]~21\) # (!\vga_inst|vposition\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(5),
	datad => VCC,
	cin => \vga_inst|vposition[4]~21\,
	combout => \vga_inst|vposition[5]~22_combout\,
	cout => \vga_inst|vposition[5]~23\);

-- Location: LCCOMB_X4_Y16_N16
\vga_inst|vposition[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[6]~24_combout\ = (\vga_inst|vposition\(6) & (\vga_inst|vposition[5]~23\ $ (GND))) # (!\vga_inst|vposition\(6) & (!\vga_inst|vposition[5]~23\ & VCC))
-- \vga_inst|vposition[6]~25\ = CARRY((\vga_inst|vposition\(6) & !\vga_inst|vposition[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(6),
	datad => VCC,
	cin => \vga_inst|vposition[5]~23\,
	combout => \vga_inst|vposition[6]~24_combout\,
	cout => \vga_inst|vposition[6]~25\);

-- Location: FF_X4_Y16_N17
\vga_inst|vposition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[6]~24_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(6));

-- Location: LCCOMB_X4_Y16_N18
\vga_inst|vposition[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[7]~26_combout\ = (\vga_inst|vposition\(7) & (!\vga_inst|vposition[6]~25\)) # (!\vga_inst|vposition\(7) & ((\vga_inst|vposition[6]~25\) # (GND)))
-- \vga_inst|vposition[7]~27\ = CARRY((!\vga_inst|vposition[6]~25\) # (!\vga_inst|vposition\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(7),
	datad => VCC,
	cin => \vga_inst|vposition[6]~25\,
	combout => \vga_inst|vposition[7]~26_combout\,
	cout => \vga_inst|vposition[7]~27\);

-- Location: FF_X4_Y16_N19
\vga_inst|vposition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[7]~26_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(7));

-- Location: LCCOMB_X4_Y16_N20
\vga_inst|vposition[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[8]~28_combout\ = (\vga_inst|vposition\(8) & (\vga_inst|vposition[7]~27\ $ (GND))) # (!\vga_inst|vposition\(8) & (!\vga_inst|vposition[7]~27\ & VCC))
-- \vga_inst|vposition[8]~29\ = CARRY((\vga_inst|vposition\(8) & !\vga_inst|vposition[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(8),
	datad => VCC,
	cin => \vga_inst|vposition[7]~27\,
	combout => \vga_inst|vposition[8]~28_combout\,
	cout => \vga_inst|vposition[8]~29\);

-- Location: FF_X4_Y16_N21
\vga_inst|vposition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[8]~28_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(8));

-- Location: LCCOMB_X4_Y16_N22
\vga_inst|vposition[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[9]~30_combout\ = (\vga_inst|vposition\(9) & (!\vga_inst|vposition[8]~29\)) # (!\vga_inst|vposition\(9) & ((\vga_inst|vposition[8]~29\) # (GND)))
-- \vga_inst|vposition[9]~31\ = CARRY((!\vga_inst|vposition[8]~29\) # (!\vga_inst|vposition\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(9),
	datad => VCC,
	cin => \vga_inst|vposition[8]~29\,
	combout => \vga_inst|vposition[9]~30_combout\,
	cout => \vga_inst|vposition[9]~31\);

-- Location: FF_X4_Y16_N23
\vga_inst|vposition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[9]~30_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(9));

-- Location: LCCOMB_X3_Y16_N24
\vga_inst|LessThan16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan16~0_combout\ = (\vga_inst|LessThan5~1_combout\ & (!\vga_inst|vposition\(8) & !\vga_inst|vposition\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan5~1_combout\,
	datac => \vga_inst|vposition\(8),
	datad => \vga_inst|vposition\(7),
	combout => \vga_inst|LessThan16~0_combout\);

-- Location: LCCOMB_X4_Y16_N30
\vga_inst|LessThan16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan16~1_combout\ = ((\vga_inst|LessThan16~0_combout\ & ((!\vga_inst|vposition\(3)) # (!\vga_inst|vposition\(2))))) # (!\vga_inst|vposition\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(9),
	datab => \vga_inst|LessThan16~0_combout\,
	datac => \vga_inst|vposition\(2),
	datad => \vga_inst|vposition\(3),
	combout => \vga_inst|LessThan16~1_combout\);

-- Location: LCCOMB_X4_Y16_N24
\vga_inst|vposition[10]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[10]~32_combout\ = (\vga_inst|vposition\(10) & (\vga_inst|vposition[9]~31\ $ (GND))) # (!\vga_inst|vposition\(10) & (!\vga_inst|vposition[9]~31\ & VCC))
-- \vga_inst|vposition[10]~33\ = CARRY((\vga_inst|vposition\(10) & !\vga_inst|vposition[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(10),
	datad => VCC,
	cin => \vga_inst|vposition[9]~31\,
	combout => \vga_inst|vposition[10]~32_combout\,
	cout => \vga_inst|vposition[10]~33\);

-- Location: FF_X4_Y16_N25
\vga_inst|vposition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[10]~32_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(10));

-- Location: LCCOMB_X4_Y16_N26
\vga_inst|vposition[11]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[11]~34_combout\ = \vga_inst|vposition\(11) $ (\vga_inst|vposition[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(11),
	cin => \vga_inst|vposition[10]~33\,
	combout => \vga_inst|vposition[11]~34_combout\);

-- Location: FF_X4_Y16_N27
\vga_inst|vposition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[11]~34_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(11));

-- Location: LCCOMB_X4_Y16_N0
\vga_inst|LessThan16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan16~2_combout\ = ((\vga_inst|vposition\(11)) # (\vga_inst|vposition\(10))) # (!\vga_inst|LessThan16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan16~1_combout\,
	datac => \vga_inst|vposition\(11),
	datad => \vga_inst|vposition\(10),
	combout => \vga_inst|LessThan16~2_combout\);

-- Location: FF_X4_Y16_N5
\vga_inst|vposition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[0]~12_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(0));

-- Location: LCCOMB_X4_Y16_N6
\vga_inst|vposition[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[1]~14_combout\ = (\vga_inst|vposition\(1) & (!\vga_inst|vposition[0]~13\)) # (!\vga_inst|vposition\(1) & ((\vga_inst|vposition[0]~13\) # (GND)))
-- \vga_inst|vposition[1]~15\ = CARRY((!\vga_inst|vposition[0]~13\) # (!\vga_inst|vposition\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(1),
	datad => VCC,
	cin => \vga_inst|vposition[0]~13\,
	combout => \vga_inst|vposition[1]~14_combout\,
	cout => \vga_inst|vposition[1]~15\);

-- Location: FF_X4_Y16_N7
\vga_inst|vposition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[1]~14_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(1));

-- Location: LCCOMB_X4_Y16_N8
\vga_inst|vposition[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[2]~16_combout\ = (\vga_inst|vposition\(2) & (\vga_inst|vposition[1]~15\ $ (GND))) # (!\vga_inst|vposition\(2) & (!\vga_inst|vposition[1]~15\ & VCC))
-- \vga_inst|vposition[2]~17\ = CARRY((\vga_inst|vposition\(2) & !\vga_inst|vposition[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(2),
	datad => VCC,
	cin => \vga_inst|vposition[1]~15\,
	combout => \vga_inst|vposition[2]~16_combout\,
	cout => \vga_inst|vposition[2]~17\);

-- Location: FF_X4_Y16_N9
\vga_inst|vposition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[2]~16_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(2));

-- Location: LCCOMB_X4_Y16_N10
\vga_inst|vposition[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[3]~18_combout\ = (\vga_inst|vposition\(3) & (!\vga_inst|vposition[2]~17\)) # (!\vga_inst|vposition\(3) & ((\vga_inst|vposition[2]~17\) # (GND)))
-- \vga_inst|vposition[3]~19\ = CARRY((!\vga_inst|vposition[2]~17\) # (!\vga_inst|vposition\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(3),
	datad => VCC,
	cin => \vga_inst|vposition[2]~17\,
	combout => \vga_inst|vposition[3]~18_combout\,
	cout => \vga_inst|vposition[3]~19\);

-- Location: FF_X4_Y16_N11
\vga_inst|vposition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[3]~18_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(3));

-- Location: LCCOMB_X4_Y16_N12
\vga_inst|vposition[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|vposition[4]~20_combout\ = (\vga_inst|vposition\(4) & (\vga_inst|vposition[3]~19\ $ (GND))) # (!\vga_inst|vposition\(4) & (!\vga_inst|vposition[3]~19\ & VCC))
-- \vga_inst|vposition[4]~21\ = CARRY((\vga_inst|vposition\(4) & !\vga_inst|vposition[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(4),
	datad => VCC,
	cin => \vga_inst|vposition[3]~19\,
	combout => \vga_inst|vposition[4]~20_combout\,
	cout => \vga_inst|vposition[4]~21\);

-- Location: FF_X4_Y16_N13
\vga_inst|vposition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[4]~20_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(4));

-- Location: FF_X4_Y16_N15
\vga_inst|vposition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|vposition[5]~22_combout\,
	sclr => \vga_inst|LessThan16~2_combout\,
	ena => \vga_inst|LessThan15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vposition\(5));

-- Location: LCCOMB_X3_Y16_N12
\vga_inst|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan5~1_combout\ = (!\vga_inst|vposition\(5) & (!\vga_inst|vposition\(4) & !\vga_inst|vposition\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(5),
	datac => \vga_inst|vposition\(4),
	datad => \vga_inst|vposition\(6),
	combout => \vga_inst|LessThan5~1_combout\);

-- Location: LCCOMB_X4_Y16_N28
\vga_inst|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan5~0_combout\ = (!\vga_inst|vposition\(11) & (!\vga_inst|vposition\(9) & !\vga_inst|vposition\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(11),
	datac => \vga_inst|vposition\(9),
	datad => \vga_inst|vposition\(10),
	combout => \vga_inst|LessThan5~0_combout\);

-- Location: LCCOMB_X3_Y16_N10
\vga_inst|output_logic~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~0_combout\ = (!\vga_inst|LessThan5~1_combout\ & (\vga_inst|vposition\(8) & \vga_inst|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan5~1_combout\,
	datac => \vga_inst|vposition\(8),
	datad => \vga_inst|LessThan5~0_combout\,
	combout => \vga_inst|output_logic~0_combout\);

-- Location: LCCOMB_X3_Y16_N28
\vga_inst|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan6~0_combout\ = (\vga_inst|vposition\(5)) # ((\vga_inst|vposition\(4)) # ((\vga_inst|vposition\(1) & \vga_inst|vposition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(1),
	datab => \vga_inst|vposition\(5),
	datac => \vga_inst|vposition\(4),
	datad => \vga_inst|vposition\(0),
	combout => \vga_inst|LessThan6~0_combout\);

-- Location: LCCOMB_X3_Y16_N30
\vga_inst|output_logic~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~1_combout\ = (\vga_inst|vposition\(3)) # ((\vga_inst|vposition\(2)) # (\vga_inst|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|vposition\(3),
	datac => \vga_inst|vposition\(2),
	datad => \vga_inst|LessThan6~0_combout\,
	combout => \vga_inst|output_logic~1_combout\);

-- Location: LCCOMB_X3_Y16_N16
\vga_inst|output_logic~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~2_combout\ = (\vga_inst|output_logic~0_combout\ & (\vga_inst|vposition\(7) & ((!\vga_inst|vposition\(6)) # (!\vga_inst|output_logic~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|output_logic~0_combout\,
	datab => \vga_inst|vposition\(7),
	datac => \vga_inst|output_logic~1_combout\,
	datad => \vga_inst|vposition\(6),
	combout => \vga_inst|output_logic~2_combout\);

-- Location: LCCOMB_X6_Y14_N12
\vga_inst|output_logic~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~7_combout\ = (\vga_inst|LessThan3~0_combout\ & (\vga_inst|output_logic~2_combout\ & \vga_inst|hposition\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|LessThan3~0_combout\,
	datac => \vga_inst|output_logic~2_combout\,
	datad => \vga_inst|hposition\(8),
	combout => \vga_inst|output_logic~7_combout\);

-- Location: LCCOMB_X7_Y14_N4
\vga_inst|output_logic~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~8_combout\ = (\vga_inst|hposition\(2) & ((\vga_inst|hposition\(7)) # ((\vga_inst|hposition\(1) & \vga_inst|hposition\(4))))) # (!\vga_inst|hposition\(2) & (((\vga_inst|hposition\(4) & \vga_inst|hposition\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(2),
	datab => \vga_inst|hposition\(1),
	datac => \vga_inst|hposition\(4),
	datad => \vga_inst|hposition\(7),
	combout => \vga_inst|output_logic~8_combout\);

-- Location: LCCOMB_X7_Y14_N2
\vga_inst|output_logic~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~9_combout\ = (\vga_inst|hposition\(3) & ((\vga_inst|hposition\(5)) # ((\vga_inst|output_logic~8_combout\ & !\vga_inst|hposition\(7))))) # (!\vga_inst|hposition\(3) & (\vga_inst|hposition\(5) & ((\vga_inst|output_logic~8_combout\) # 
-- (!\vga_inst|hposition\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(3),
	datab => \vga_inst|hposition\(5),
	datac => \vga_inst|output_logic~8_combout\,
	datad => \vga_inst|hposition\(7),
	combout => \vga_inst|output_logic~9_combout\);

-- Location: LCCOMB_X6_Y14_N6
\vga_inst|output_logic~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~10_combout\ = (\vga_inst|output_logic~7_combout\ & ((\vga_inst|hposition\(6) & (!\vga_inst|hposition\(7) & \vga_inst|output_logic~9_combout\)) # (!\vga_inst|hposition\(6) & (\vga_inst|hposition\(7) & 
-- !\vga_inst|output_logic~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|output_logic~7_combout\,
	datab => \vga_inst|hposition\(6),
	datac => \vga_inst|hposition\(7),
	datad => \vga_inst|output_logic~9_combout\,
	combout => \vga_inst|output_logic~10_combout\);

-- Location: LCCOMB_X8_Y19_N12
\range_sensor_map|BCD_conv1|bcd~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~21_combout\ = (\range_sensor_map|BCD_conv1|bcd~8_combout\) # ((\range_sensor_map|BCD_conv1|bcd~6_combout\) # (\range_sensor_map|BCD_conv1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv1|bcd~8_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~6_combout\,
	datad => \range_sensor_map|BCD_conv1|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv1|bcd~21_combout\);

-- Location: LCCOMB_X8_Y19_N14
\range_sensor_map|BCD_conv1|LessThan6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan6~2_combout\ = (\range_sensor_map|BCD_conv1|bcd~8_combout\ & (\range_sensor_map|BCD_conv1|LessThan6~0_combout\ & ((\range_sensor_map|BCD_conv1|bcd~6_combout\) # (\range_sensor_map|BCD_conv1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~6_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~8_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan6~0_combout\,
	datad => \range_sensor_map|BCD_conv1|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv1|LessThan6~2_combout\);

-- Location: LCCOMB_X9_Y19_N14
\range_sensor_map|BCD_conv1|bcd~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|bcd~15_combout\ = (\range_sensor_map|distan1|Distance\(7) & \range_sensor_map|distan1|Distance\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	combout => \range_sensor_map|BCD_conv1|bcd~15_combout\);

-- Location: LCCOMB_X9_Y19_N4
\vga_inst|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan1~19_combout\ = (\range_sensor_map|BCD_conv1|bcd~15_combout\ & ((\range_sensor_map|distan1|Distance\(6)) # ((\range_sensor_map|distan1|Distance\(5)) # (\range_sensor_map|distan1|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(6),
	datab => \range_sensor_map|distan1|Distance\(5),
	datac => \range_sensor_map|BCD_conv1|bcd~15_combout\,
	datad => \range_sensor_map|distan1|Distance\(4),
	combout => \vga_inst|LessThan1~19_combout\);

-- Location: LCCOMB_X8_Y19_N28
\vga_inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan0~2_combout\ = (\vga_inst|LessThan1~19_combout\) # (\range_sensor_map|BCD_conv1|bcd~21_combout\ $ (!\range_sensor_map|BCD_conv1|LessThan6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~21_combout\,
	datac => \range_sensor_map|BCD_conv1|LessThan6~2_combout\,
	datad => \vga_inst|LessThan1~19_combout\,
	combout => \vga_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y19_N12
\vga_inst|output_logic~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~11_combout\ = (\vga_inst|output_logic~10_combout\ & ((\vga_inst|LessThan0~1_combout\) # ((\vga_inst|LessThan0~4_combout\) # (\vga_inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan0~1_combout\,
	datab => \vga_inst|LessThan0~4_combout\,
	datac => \vga_inst|output_logic~10_combout\,
	datad => \vga_inst|LessThan0~2_combout\,
	combout => \vga_inst|output_logic~11_combout\);

-- Location: LCCOMB_X8_Y19_N26
\vga_inst|red[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|red[1]~0_combout\ = (!\vga_inst|LessThan1~19_combout\ & ((\range_sensor_map|BCD_conv1|bcd~13_combout\ & (\range_sensor_map|BCD_conv1|LessThan8~0_combout\ & \range_sensor_map|BCD_conv1|bcd~14_combout\)) # 
-- (!\range_sensor_map|BCD_conv1|bcd~13_combout\ & ((!\range_sensor_map|BCD_conv1|bcd~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~13_combout\,
	datab => \range_sensor_map|BCD_conv1|LessThan8~0_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~14_combout\,
	datad => \vga_inst|LessThan1~19_combout\,
	combout => \vga_inst|red[1]~0_combout\);

-- Location: LCCOMB_X8_Y19_N6
\range_sensor_map|BCD_conv1|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv1|LessThan8~1_combout\ = (\range_sensor_map|BCD_conv1|bcd~14_combout\) # ((\range_sensor_map|BCD_conv1|bcd~13_combout\ & ((!\range_sensor_map|BCD_conv1|bcd~20_combout\) # (!\range_sensor_map|BCD_conv1|bcd~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~13_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~12_combout\,
	datac => \range_sensor_map|BCD_conv1|bcd~14_combout\,
	datad => \range_sensor_map|BCD_conv1|bcd~20_combout\,
	combout => \range_sensor_map|BCD_conv1|LessThan8~1_combout\);

-- Location: LCCOMB_X8_Y19_N20
\vga_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan2~0_combout\ = (\range_sensor_map|BCD_conv1|LessThan8~1_combout\ & ((\range_sensor_map|BCD_conv1|bcd~12_combout\ & ((!\range_sensor_map|BCD_conv1|bcd~20_combout\))) # (!\range_sensor_map|BCD_conv1|bcd~12_combout\ & 
-- ((\range_sensor_map|BCD_conv1|bcd~20_combout\) # (!\vga_inst|LessThan0~0_combout\))))) # (!\range_sensor_map|BCD_conv1|LessThan8~1_combout\ & ((\range_sensor_map|BCD_conv1|bcd~20_combout\) # ((\range_sensor_map|BCD_conv1|bcd~12_combout\ & 
-- !\vga_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|LessThan8~1_combout\,
	datab => \range_sensor_map|BCD_conv1|bcd~12_combout\,
	datac => \vga_inst|LessThan0~0_combout\,
	datad => \range_sensor_map|BCD_conv1|bcd~20_combout\,
	combout => \vga_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X8_Y19_N30
\vga_inst|red[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|red[1]~1_combout\ = (\vga_inst|output_logic~10_combout\ & ((\range_sensor_map|BCD_conv1|bcd~21_combout\ & (!\range_sensor_map|BCD_conv1|LessThan6~2_combout\)) # (!\range_sensor_map|BCD_conv1|bcd~21_combout\ & 
-- ((\range_sensor_map|BCD_conv1|LessThan6~2_combout\) # (\range_sensor_map|BCD_conv1|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv1|bcd~21_combout\,
	datab => \range_sensor_map|BCD_conv1|LessThan6~2_combout\,
	datac => \vga_inst|output_logic~10_combout\,
	datad => \range_sensor_map|BCD_conv1|LessThan0~0_combout\,
	combout => \vga_inst|red[1]~1_combout\);

-- Location: LCCOMB_X8_Y19_N0
\vga_inst|red[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|red[1]~2_combout\ = (\vga_inst|red[1]~0_combout\ & (\vga_inst|LessThan2~0_combout\ & \vga_inst|red[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|red[1]~0_combout\,
	datab => \vga_inst|LessThan2~0_combout\,
	datac => \vga_inst|red[1]~1_combout\,
	combout => \vga_inst|red[1]~2_combout\);

-- Location: LCCOMB_X10_Y17_N20
\vga_inst|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan1~6_combout\ = (\range_sensor_map|distan1|Distance\(2)) # ((\range_sensor_map|distan1|Distance\(0) & \range_sensor_map|distan1|Distance\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan1|Distance\(0),
	datac => \range_sensor_map|distan1|Distance\(1),
	datad => \range_sensor_map|distan1|Distance\(2),
	combout => \vga_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X10_Y17_N22
\vga_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan1~3_combout\ = (\range_sensor_map|distan1|Distance\(5) & (\range_sensor_map|distan1|Distance\(4) & ((\range_sensor_map|distan1|Distance\(3)) # (\vga_inst|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(5),
	datab => \range_sensor_map|distan1|Distance\(3),
	datac => \range_sensor_map|distan1|Distance\(4),
	datad => \vga_inst|LessThan1~6_combout\,
	combout => \vga_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X9_Y19_N6
\vga_inst|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan1~21_combout\ = (\range_sensor_map|distan1|Distance\(6)) # ((\range_sensor_map|distan1|Distance\(7)) # ((\range_sensor_map|distan1|Distance\(8)) # (\vga_inst|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan1|Distance\(6),
	datab => \range_sensor_map|distan1|Distance\(7),
	datac => \range_sensor_map|distan1|Distance\(8),
	datad => \vga_inst|LessThan1~3_combout\,
	combout => \vga_inst|LessThan1~21_combout\);

-- Location: LCCOMB_X7_Y19_N6
\vga_inst|red[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|red[1]~3_combout\ = (!\vga_inst|output_logic~11_combout\ & ((\vga_inst|red[1]~2_combout\) # ((\vga_inst|output_logic~10_combout\ & \vga_inst|LessThan1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|output_logic~11_combout\,
	datab => \vga_inst|red[1]~2_combout\,
	datac => \vga_inst|output_logic~10_combout\,
	datad => \vga_inst|LessThan1~21_combout\,
	combout => \vga_inst|red[1]~3_combout\);

-- Location: LCCOMB_X7_Y14_N0
\vga_inst|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan11~0_combout\ = (!\vga_inst|hposition\(3) & (!\vga_inst|hposition\(5) & (!\vga_inst|hposition\(4) & !\vga_inst|hposition\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(3),
	datab => \vga_inst|hposition\(5),
	datac => \vga_inst|hposition\(4),
	datad => \vga_inst|hposition\(6),
	combout => \vga_inst|LessThan11~0_combout\);

-- Location: LCCOMB_X6_Y14_N22
\vga_inst|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan11~1_combout\ = ((!\vga_inst|hposition\(7) & (\vga_inst|LessThan11~0_combout\ & !\vga_inst|hposition\(8)))) # (!\vga_inst|hposition\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(7),
	datab => \vga_inst|hposition\(9),
	datac => \vga_inst|LessThan11~0_combout\,
	datad => \vga_inst|hposition\(8),
	combout => \vga_inst|LessThan11~1_combout\);

-- Location: LCCOMB_X6_Y14_N24
\vga_inst|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan15~0_combout\ = (!\vga_inst|hposition\(11) & !\vga_inst|hposition\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(11),
	datad => \vga_inst|hposition\(10),
	combout => \vga_inst|LessThan15~0_combout\);

-- Location: LCCOMB_X6_Y14_N10
\vga_inst|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan10~0_combout\ = ((!\vga_inst|hposition\(6)) # (!\vga_inst|hposition\(7))) # (!\vga_inst|hposition\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(8),
	datac => \vga_inst|hposition\(7),
	datad => \vga_inst|hposition\(6),
	combout => \vga_inst|LessThan10~0_combout\);

-- Location: LCCOMB_X7_Y14_N30
\vga_inst|LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan10~1_combout\ = (!\vga_inst|hposition\(3) & (!\vga_inst|hposition\(1) & (!\vga_inst|hposition\(4) & !\vga_inst|hposition\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|hposition\(3),
	datab => \vga_inst|hposition\(1),
	datac => \vga_inst|hposition\(4),
	datad => \vga_inst|hposition\(2),
	combout => \vga_inst|LessThan10~1_combout\);

-- Location: LCCOMB_X6_Y14_N28
\vga_inst|LessThan10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan10~2_combout\ = (\vga_inst|LessThan3~0_combout\ & ((\vga_inst|LessThan10~0_combout\) # ((\vga_inst|LessThan10~1_combout\ & !\vga_inst|hposition\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan10~0_combout\,
	datab => \vga_inst|LessThan3~0_combout\,
	datac => \vga_inst|LessThan10~1_combout\,
	datad => \vga_inst|hposition\(5),
	combout => \vga_inst|LessThan10~2_combout\);

-- Location: LCCOMB_X6_Y14_N2
\vga_inst|output_logic~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~3_combout\ = (\vga_inst|LessThan11~1_combout\ & (\vga_inst|LessThan15~0_combout\ & (\vga_inst|output_logic~2_combout\ & !\vga_inst|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan11~1_combout\,
	datab => \vga_inst|LessThan15~0_combout\,
	datac => \vga_inst|output_logic~2_combout\,
	datad => \vga_inst|LessThan10~2_combout\,
	combout => \vga_inst|output_logic~3_combout\);

-- Location: IOIBUF_X0_Y18_N15
\pulse_pin[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse_pin(0),
	o => \pulse_pin[0]~input_o\);

-- Location: CLKCTRL_G3
\pulse_pin[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulse_pin[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulse_pin[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y16_N6
\range_sensor_map|distan0|Counter_pulse|count[0]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[0]~55_combout\ = \range_sensor_map|distan0|Counter_pulse|count\(0) $ (\pulse_pin[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(0),
	datad => \pulse_pin[0]~input_o\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[0]~55_combout\);

-- Location: LCCOMB_X7_Y16_N0
\range_sensor_map|distan0|Counter_pulse|count[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[0]~feeder_combout\ = \range_sensor_map|distan0|Counter_pulse|count[0]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan0|Counter_pulse|count[0]~55_combout\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[0]~feeder_combout\);

-- Location: FF_X7_Y16_N1
\range_sensor_map|distan0|Counter_pulse|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[0]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(0));

-- Location: LCCOMB_X8_Y16_N12
\range_sensor_map|distan0|Counter_pulse|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[1]~21_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(1) & (\range_sensor_map|distan0|Counter_pulse|count\(0) $ (VCC))) # (!\range_sensor_map|distan0|Counter_pulse|count\(1) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(0) & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[1]~22\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(1) & \range_sensor_map|distan0|Counter_pulse|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(1),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(0),
	datad => VCC,
	combout => \range_sensor_map|distan0|Counter_pulse|count[1]~21_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[1]~22\);

-- Location: FF_X7_Y16_N7
\range_sensor_map|distan0|Counter_pulse|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \range_sensor_map|distan0|Counter_pulse|count[1]~21_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	sload => VCC,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(1));

-- Location: LCCOMB_X8_Y16_N14
\range_sensor_map|distan0|Counter_pulse|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[2]~23_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(2) & (!\range_sensor_map|distan0|Counter_pulse|count[1]~22\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(2) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[1]~22\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[2]~24\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[1]~22\) # (!\range_sensor_map|distan0|Counter_pulse|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[1]~22\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[2]~23_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[2]~24\);

-- Location: LCCOMB_X7_Y16_N8
\range_sensor_map|distan0|Counter_pulse|count[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[2]~feeder_combout\ = \range_sensor_map|distan0|Counter_pulse|count[2]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan0|Counter_pulse|count[2]~23_combout\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[2]~feeder_combout\);

-- Location: FF_X7_Y16_N9
\range_sensor_map|distan0|Counter_pulse|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[2]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(2));

-- Location: LCCOMB_X8_Y16_N16
\range_sensor_map|distan0|Counter_pulse|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[3]~25_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(3) & (\range_sensor_map|distan0|Counter_pulse|count[2]~24\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(3) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[2]~24\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[3]~26\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(3) & !\range_sensor_map|distan0|Counter_pulse|count[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(3),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[2]~24\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[3]~25_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[3]~26\);

-- Location: LCCOMB_X7_Y16_N2
\range_sensor_map|distan0|Counter_pulse|count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[3]~feeder_combout\ = \range_sensor_map|distan0|Counter_pulse|count[3]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan0|Counter_pulse|count[3]~25_combout\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[3]~feeder_combout\);

-- Location: FF_X7_Y16_N3
\range_sensor_map|distan0|Counter_pulse|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[3]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(3));

-- Location: LCCOMB_X8_Y16_N18
\range_sensor_map|distan0|Counter_pulse|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[4]~27_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(4) & (!\range_sensor_map|distan0|Counter_pulse|count[3]~26\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(4) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[3]~26\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[4]~28\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[3]~26\) # (!\range_sensor_map|distan0|Counter_pulse|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(4),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[3]~26\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[4]~27_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[4]~28\);

-- Location: LCCOMB_X7_Y16_N4
\range_sensor_map|distan0|Counter_pulse|count[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[4]~feeder_combout\ = \range_sensor_map|distan0|Counter_pulse|count[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan0|Counter_pulse|count[4]~27_combout\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[4]~feeder_combout\);

-- Location: FF_X7_Y16_N5
\range_sensor_map|distan0|Counter_pulse|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[4]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(4));

-- Location: LCCOMB_X8_Y16_N20
\range_sensor_map|distan0|Counter_pulse|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[5]~29_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(5) & (\range_sensor_map|distan0|Counter_pulse|count[4]~28\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(5) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[4]~28\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[5]~30\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(5) & !\range_sensor_map|distan0|Counter_pulse|count[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(5),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[4]~28\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[5]~29_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[5]~30\);

-- Location: FF_X8_Y16_N21
\range_sensor_map|distan0|Counter_pulse|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[5]~29_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(5));

-- Location: LCCOMB_X8_Y16_N22
\range_sensor_map|distan0|Counter_pulse|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[6]~31_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(6) & (!\range_sensor_map|distan0|Counter_pulse|count[5]~30\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(6) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[5]~30\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[6]~32\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[5]~30\) # (!\range_sensor_map|distan0|Counter_pulse|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[5]~30\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[6]~31_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[6]~32\);

-- Location: FF_X7_Y16_N21
\range_sensor_map|distan0|Counter_pulse|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \range_sensor_map|distan0|Counter_pulse|count[6]~31_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	sload => VCC,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(6));

-- Location: LCCOMB_X8_Y16_N24
\range_sensor_map|distan0|Counter_pulse|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[7]~33_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(7) & (\range_sensor_map|distan0|Counter_pulse|count[6]~32\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(7) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[6]~32\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[7]~34\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(7) & !\range_sensor_map|distan0|Counter_pulse|count[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(7),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[6]~32\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[7]~33_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[7]~34\);

-- Location: FF_X8_Y16_N25
\range_sensor_map|distan0|Counter_pulse|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[7]~33_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(7));

-- Location: LCCOMB_X8_Y16_N26
\range_sensor_map|distan0|Counter_pulse|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[8]~35_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(8) & (!\range_sensor_map|distan0|Counter_pulse|count[7]~34\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(8) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[7]~34\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[8]~36\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[7]~34\) # (!\range_sensor_map|distan0|Counter_pulse|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(8),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[7]~34\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[8]~35_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[8]~36\);

-- Location: FF_X8_Y16_N27
\range_sensor_map|distan0|Counter_pulse|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[8]~35_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(8));

-- Location: LCCOMB_X8_Y16_N28
\range_sensor_map|distan0|Counter_pulse|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[9]~37_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(9) & (\range_sensor_map|distan0|Counter_pulse|count[8]~36\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(9) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[8]~36\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[9]~38\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(9) & !\range_sensor_map|distan0|Counter_pulse|count[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(9),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[8]~36\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[9]~37_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[9]~38\);

-- Location: FF_X8_Y16_N29
\range_sensor_map|distan0|Counter_pulse|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[9]~37_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(9));

-- Location: LCCOMB_X8_Y16_N30
\range_sensor_map|distan0|Counter_pulse|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[10]~39_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(10) & (!\range_sensor_map|distan0|Counter_pulse|count[9]~38\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(10) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[9]~38\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[10]~40\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[9]~38\) # (!\range_sensor_map|distan0|Counter_pulse|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(10),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[9]~38\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[10]~39_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[10]~40\);

-- Location: FF_X7_Y16_N13
\range_sensor_map|distan0|Counter_pulse|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \range_sensor_map|distan0|Counter_pulse|count[10]~39_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	sload => VCC,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(10));

-- Location: LCCOMB_X8_Y15_N0
\range_sensor_map|distan0|Counter_pulse|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[11]~41_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(11) & (\range_sensor_map|distan0|Counter_pulse|count[10]~40\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(11) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[10]~40\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[11]~42\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(11) & !\range_sensor_map|distan0|Counter_pulse|count[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[10]~40\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[11]~41_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[11]~42\);

-- Location: FF_X7_Y15_N25
\range_sensor_map|distan0|Counter_pulse|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \range_sensor_map|distan0|Counter_pulse|count[11]~41_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	sload => VCC,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(11));

-- Location: LCCOMB_X8_Y15_N2
\range_sensor_map|distan0|Counter_pulse|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[12]~43_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(12) & (!\range_sensor_map|distan0|Counter_pulse|count[11]~42\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(12) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[11]~42\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[12]~44\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[11]~42\) # (!\range_sensor_map|distan0|Counter_pulse|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(12),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[11]~42\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[12]~43_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[12]~44\);

-- Location: FF_X7_Y15_N1
\range_sensor_map|distan0|Counter_pulse|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \range_sensor_map|distan0|Counter_pulse|count[12]~43_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	sload => VCC,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(12));

-- Location: LCCOMB_X8_Y15_N4
\range_sensor_map|distan0|Counter_pulse|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[13]~45_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(13) & (\range_sensor_map|distan0|Counter_pulse|count[12]~44\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(13) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[12]~44\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[13]~46\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(13) & !\range_sensor_map|distan0|Counter_pulse|count[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[12]~44\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[13]~45_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[13]~46\);

-- Location: FF_X8_Y15_N5
\range_sensor_map|distan0|Counter_pulse|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[13]~45_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(13));

-- Location: LCCOMB_X8_Y15_N6
\range_sensor_map|distan0|Counter_pulse|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[14]~47_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(14) & (!\range_sensor_map|distan0|Counter_pulse|count[13]~46\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(14) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[13]~46\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[14]~48\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[13]~46\) # (!\range_sensor_map|distan0|Counter_pulse|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(14),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[13]~46\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[14]~47_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[14]~48\);

-- Location: FF_X8_Y15_N7
\range_sensor_map|distan0|Counter_pulse|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[14]~47_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(14));

-- Location: LCCOMB_X8_Y15_N8
\range_sensor_map|distan0|Counter_pulse|count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[15]~49_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(15) & (\range_sensor_map|distan0|Counter_pulse|count[14]~48\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(15) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[14]~48\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[15]~50\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(15) & !\range_sensor_map|distan0|Counter_pulse|count[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(15),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[14]~48\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[15]~49_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[15]~50\);

-- Location: FF_X8_Y15_N9
\range_sensor_map|distan0|Counter_pulse|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[15]~49_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(15));

-- Location: LCCOMB_X8_Y15_N10
\range_sensor_map|distan0|Counter_pulse|count[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[16]~51_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(16) & (!\range_sensor_map|distan0|Counter_pulse|count[15]~50\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(16) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[15]~50\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[16]~52\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[15]~50\) # (!\range_sensor_map|distan0|Counter_pulse|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(16),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[15]~50\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[16]~51_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[16]~52\);

-- Location: FF_X8_Y15_N11
\range_sensor_map|distan0|Counter_pulse|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[16]~51_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(16));

-- Location: LCCOMB_X8_Y15_N12
\range_sensor_map|distan0|Counter_pulse|count[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[17]~53_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(17) & (\range_sensor_map|distan0|Counter_pulse|count[16]~52\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(17) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[16]~52\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[17]~54\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(17) & !\range_sensor_map|distan0|Counter_pulse|count[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(17),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[16]~52\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[17]~53_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[17]~54\);

-- Location: FF_X8_Y15_N13
\range_sensor_map|distan0|Counter_pulse|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[17]~53_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(17));

-- Location: LCCOMB_X8_Y15_N14
\range_sensor_map|distan0|Counter_pulse|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[18]~56_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(18) & (!\range_sensor_map|distan0|Counter_pulse|count[17]~54\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(18) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[17]~54\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[18]~57\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[17]~54\) # (!\range_sensor_map|distan0|Counter_pulse|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[17]~54\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[18]~56_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[18]~57\);

-- Location: FF_X8_Y15_N15
\range_sensor_map|distan0|Counter_pulse|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[18]~56_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(18));

-- Location: LCCOMB_X8_Y15_N16
\range_sensor_map|distan0|Counter_pulse|count[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[19]~58_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(19) & (\range_sensor_map|distan0|Counter_pulse|count[18]~57\ $ (GND))) # (!\range_sensor_map|distan0|Counter_pulse|count\(19) & 
-- (!\range_sensor_map|distan0|Counter_pulse|count[18]~57\ & VCC))
-- \range_sensor_map|distan0|Counter_pulse|count[19]~59\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(19) & !\range_sensor_map|distan0|Counter_pulse|count[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(19),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[18]~57\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[19]~58_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[19]~59\);

-- Location: FF_X8_Y15_N17
\range_sensor_map|distan0|Counter_pulse|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[19]~58_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(19));

-- Location: LCCOMB_X8_Y15_N18
\range_sensor_map|distan0|Counter_pulse|count[20]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[20]~60_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(20) & (!\range_sensor_map|distan0|Counter_pulse|count[19]~59\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(20) & 
-- ((\range_sensor_map|distan0|Counter_pulse|count[19]~59\) # (GND)))
-- \range_sensor_map|distan0|Counter_pulse|count[20]~61\ = CARRY((!\range_sensor_map|distan0|Counter_pulse|count[19]~59\) # (!\range_sensor_map|distan0|Counter_pulse|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan0|Counter_pulse|count[19]~59\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[20]~60_combout\,
	cout => \range_sensor_map|distan0|Counter_pulse|count[20]~61\);

-- Location: FF_X8_Y15_N19
\range_sensor_map|distan0|Counter_pulse|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[20]~60_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(20));

-- Location: LCCOMB_X8_Y15_N20
\range_sensor_map|distan0|Counter_pulse|count[21]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Counter_pulse|count[21]~62_combout\ = \range_sensor_map|distan0|Counter_pulse|count[20]~61\ $ (!\range_sensor_map|distan0|Counter_pulse|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan0|Counter_pulse|count\(21),
	cin => \range_sensor_map|distan0|Counter_pulse|count[20]~61\,
	combout => \range_sensor_map|distan0|Counter_pulse|count[21]~62_combout\);

-- Location: FF_X8_Y15_N21
\range_sensor_map|distan0|Counter_pulse|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Counter_pulse|count[21]~62_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Counter_pulse|count\(21));

-- Location: LCCOMB_X7_Y16_N10
\range_sensor_map|distan0|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~1_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(1) & \range_sensor_map|distan0|Counter_pulse|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(1),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(0),
	datad => VCC,
	cout => \range_sensor_map|distan0|Add0~1_cout\);

-- Location: LCCOMB_X7_Y16_N12
\range_sensor_map|distan0|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~3_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(1) & (!\range_sensor_map|distan0|Counter_pulse|count\(2) & !\range_sensor_map|distan0|Add0~1_cout\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(1) & 
-- ((!\range_sensor_map|distan0|Add0~1_cout\) # (!\range_sensor_map|distan0|Counter_pulse|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(1),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~1_cout\,
	cout => \range_sensor_map|distan0|Add0~3_cout\);

-- Location: LCCOMB_X7_Y16_N14
\range_sensor_map|distan0|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~5_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(3) & ((\range_sensor_map|distan0|Counter_pulse|count\(2)) # (!\range_sensor_map|distan0|Add0~3_cout\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(3) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(2) & !\range_sensor_map|distan0|Add0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(3),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~3_cout\,
	cout => \range_sensor_map|distan0|Add0~5_cout\);

-- Location: LCCOMB_X7_Y16_N16
\range_sensor_map|distan0|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~7_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(3) & (!\range_sensor_map|distan0|Counter_pulse|count\(4) & !\range_sensor_map|distan0|Add0~5_cout\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(3) & 
-- ((!\range_sensor_map|distan0|Add0~5_cout\) # (!\range_sensor_map|distan0|Counter_pulse|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(3),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(4),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~5_cout\,
	cout => \range_sensor_map|distan0|Add0~7_cout\);

-- Location: LCCOMB_X7_Y16_N18
\range_sensor_map|distan0|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~9_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(5) & ((\range_sensor_map|distan0|Counter_pulse|count\(4)) # (!\range_sensor_map|distan0|Add0~7_cout\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(5) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(4) & !\range_sensor_map|distan0|Add0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(5),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(4),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~7_cout\,
	cout => \range_sensor_map|distan0|Add0~9_cout\);

-- Location: LCCOMB_X7_Y16_N20
\range_sensor_map|distan0|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~11_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(5) & (!\range_sensor_map|distan0|Counter_pulse|count\(6) & !\range_sensor_map|distan0|Add0~9_cout\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(5) & 
-- ((!\range_sensor_map|distan0|Add0~9_cout\) # (!\range_sensor_map|distan0|Counter_pulse|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(5),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~9_cout\,
	cout => \range_sensor_map|distan0|Add0~11_cout\);

-- Location: LCCOMB_X7_Y16_N22
\range_sensor_map|distan0|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~13_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(6) & ((\range_sensor_map|distan0|Counter_pulse|count\(7)) # (!\range_sensor_map|distan0|Add0~11_cout\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(6) 
-- & (\range_sensor_map|distan0|Counter_pulse|count\(7) & !\range_sensor_map|distan0|Add0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(6),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(7),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~11_cout\,
	cout => \range_sensor_map|distan0|Add0~13_cout\);

-- Location: LCCOMB_X7_Y16_N24
\range_sensor_map|distan0|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~15_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(7) & (!\range_sensor_map|distan0|Counter_pulse|count\(8) & !\range_sensor_map|distan0|Add0~13_cout\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(7) & 
-- ((!\range_sensor_map|distan0|Add0~13_cout\) # (!\range_sensor_map|distan0|Counter_pulse|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(7),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(8),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~13_cout\,
	cout => \range_sensor_map|distan0|Add0~15_cout\);

-- Location: LCCOMB_X7_Y16_N26
\range_sensor_map|distan0|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~17_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(8) & ((\range_sensor_map|distan0|Counter_pulse|count\(9)) # (!\range_sensor_map|distan0|Add0~15_cout\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(8) 
-- & (\range_sensor_map|distan0|Counter_pulse|count\(9) & !\range_sensor_map|distan0|Add0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(8),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(9),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~15_cout\,
	cout => \range_sensor_map|distan0|Add0~17_cout\);

-- Location: LCCOMB_X7_Y16_N28
\range_sensor_map|distan0|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~19_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(10) & (!\range_sensor_map|distan0|Counter_pulse|count\(9) & !\range_sensor_map|distan0|Add0~17_cout\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(10) & 
-- ((!\range_sensor_map|distan0|Add0~17_cout\) # (!\range_sensor_map|distan0|Counter_pulse|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(10),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(9),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~17_cout\,
	cout => \range_sensor_map|distan0|Add0~19_cout\);

-- Location: LCCOMB_X7_Y16_N30
\range_sensor_map|distan0|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~21_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(10) & ((\range_sensor_map|distan0|Counter_pulse|count\(11)) # (!\range_sensor_map|distan0|Add0~19_cout\))) # 
-- (!\range_sensor_map|distan0|Counter_pulse|count\(10) & (\range_sensor_map|distan0|Counter_pulse|count\(11) & !\range_sensor_map|distan0|Add0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(10),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~19_cout\,
	cout => \range_sensor_map|distan0|Add0~21_cout\);

-- Location: LCCOMB_X7_Y15_N0
\range_sensor_map|distan0|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~23_cout\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(12) & (!\range_sensor_map|distan0|Counter_pulse|count\(11) & !\range_sensor_map|distan0|Add0~21_cout\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(12) 
-- & ((!\range_sensor_map|distan0|Add0~21_cout\) # (!\range_sensor_map|distan0|Counter_pulse|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(12),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~21_cout\,
	cout => \range_sensor_map|distan0|Add0~23_cout\);

-- Location: LCCOMB_X7_Y15_N2
\range_sensor_map|distan0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~24_combout\ = ((\range_sensor_map|distan0|Counter_pulse|count\(12) $ (\range_sensor_map|distan0|Counter_pulse|count\(13) $ (!\range_sensor_map|distan0|Add0~23_cout\)))) # (GND)
-- \range_sensor_map|distan0|Add0~25\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(12) & ((\range_sensor_map|distan0|Counter_pulse|count\(13)) # (!\range_sensor_map|distan0|Add0~23_cout\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(12) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(13) & !\range_sensor_map|distan0|Add0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(12),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~23_cout\,
	combout => \range_sensor_map|distan0|Add0~24_combout\,
	cout => \range_sensor_map|distan0|Add0~25\);

-- Location: LCCOMB_X7_Y15_N4
\range_sensor_map|distan0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~26_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(14) & ((\range_sensor_map|distan0|Counter_pulse|count\(13) & (\range_sensor_map|distan0|Add0~25\ & VCC)) # (!\range_sensor_map|distan0|Counter_pulse|count\(13) & 
-- (!\range_sensor_map|distan0|Add0~25\)))) # (!\range_sensor_map|distan0|Counter_pulse|count\(14) & ((\range_sensor_map|distan0|Counter_pulse|count\(13) & (!\range_sensor_map|distan0|Add0~25\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(13) & 
-- ((\range_sensor_map|distan0|Add0~25\) # (GND)))))
-- \range_sensor_map|distan0|Add0~27\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(14) & (!\range_sensor_map|distan0|Counter_pulse|count\(13) & !\range_sensor_map|distan0|Add0~25\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(14) & 
-- ((!\range_sensor_map|distan0|Add0~25\) # (!\range_sensor_map|distan0|Counter_pulse|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(14),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~25\,
	combout => \range_sensor_map|distan0|Add0~26_combout\,
	cout => \range_sensor_map|distan0|Add0~27\);

-- Location: LCCOMB_X7_Y15_N6
\range_sensor_map|distan0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~28_combout\ = ((\range_sensor_map|distan0|Counter_pulse|count\(14) $ (\range_sensor_map|distan0|Counter_pulse|count\(15) $ (!\range_sensor_map|distan0|Add0~27\)))) # (GND)
-- \range_sensor_map|distan0|Add0~29\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(14) & ((\range_sensor_map|distan0|Counter_pulse|count\(15)) # (!\range_sensor_map|distan0|Add0~27\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(14) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(15) & !\range_sensor_map|distan0|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(14),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(15),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~27\,
	combout => \range_sensor_map|distan0|Add0~28_combout\,
	cout => \range_sensor_map|distan0|Add0~29\);

-- Location: LCCOMB_X7_Y15_N8
\range_sensor_map|distan0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~30_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(15) & ((\range_sensor_map|distan0|Counter_pulse|count\(16) & (\range_sensor_map|distan0|Add0~29\ & VCC)) # (!\range_sensor_map|distan0|Counter_pulse|count\(16) & 
-- (!\range_sensor_map|distan0|Add0~29\)))) # (!\range_sensor_map|distan0|Counter_pulse|count\(15) & ((\range_sensor_map|distan0|Counter_pulse|count\(16) & (!\range_sensor_map|distan0|Add0~29\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(16) & 
-- ((\range_sensor_map|distan0|Add0~29\) # (GND)))))
-- \range_sensor_map|distan0|Add0~31\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(15) & (!\range_sensor_map|distan0|Counter_pulse|count\(16) & !\range_sensor_map|distan0|Add0~29\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(15) & 
-- ((!\range_sensor_map|distan0|Add0~29\) # (!\range_sensor_map|distan0|Counter_pulse|count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(15),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(16),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~29\,
	combout => \range_sensor_map|distan0|Add0~30_combout\,
	cout => \range_sensor_map|distan0|Add0~31\);

-- Location: LCCOMB_X7_Y15_N10
\range_sensor_map|distan0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~32_combout\ = ((\range_sensor_map|distan0|Counter_pulse|count\(17) $ (\range_sensor_map|distan0|Counter_pulse|count\(16) $ (!\range_sensor_map|distan0|Add0~31\)))) # (GND)
-- \range_sensor_map|distan0|Add0~33\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(17) & ((\range_sensor_map|distan0|Counter_pulse|count\(16)) # (!\range_sensor_map|distan0|Add0~31\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(17) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(16) & !\range_sensor_map|distan0|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(17),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(16),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~31\,
	combout => \range_sensor_map|distan0|Add0~32_combout\,
	cout => \range_sensor_map|distan0|Add0~33\);

-- Location: LCCOMB_X7_Y15_N12
\range_sensor_map|distan0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~34_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(17) & ((\range_sensor_map|distan0|Counter_pulse|count\(18) & (\range_sensor_map|distan0|Add0~33\ & VCC)) # (!\range_sensor_map|distan0|Counter_pulse|count\(18) & 
-- (!\range_sensor_map|distan0|Add0~33\)))) # (!\range_sensor_map|distan0|Counter_pulse|count\(17) & ((\range_sensor_map|distan0|Counter_pulse|count\(18) & (!\range_sensor_map|distan0|Add0~33\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(18) & 
-- ((\range_sensor_map|distan0|Add0~33\) # (GND)))))
-- \range_sensor_map|distan0|Add0~35\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(17) & (!\range_sensor_map|distan0|Counter_pulse|count\(18) & !\range_sensor_map|distan0|Add0~33\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(17) & 
-- ((!\range_sensor_map|distan0|Add0~33\) # (!\range_sensor_map|distan0|Counter_pulse|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(17),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~33\,
	combout => \range_sensor_map|distan0|Add0~34_combout\,
	cout => \range_sensor_map|distan0|Add0~35\);

-- Location: LCCOMB_X7_Y15_N14
\range_sensor_map|distan0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~36_combout\ = ((\range_sensor_map|distan0|Counter_pulse|count\(19) $ (\range_sensor_map|distan0|Counter_pulse|count\(18) $ (!\range_sensor_map|distan0|Add0~35\)))) # (GND)
-- \range_sensor_map|distan0|Add0~37\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(19) & ((\range_sensor_map|distan0|Counter_pulse|count\(18)) # (!\range_sensor_map|distan0|Add0~35\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(19) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(18) & !\range_sensor_map|distan0|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(19),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~35\,
	combout => \range_sensor_map|distan0|Add0~36_combout\,
	cout => \range_sensor_map|distan0|Add0~37\);

-- Location: LCCOMB_X7_Y15_N16
\range_sensor_map|distan0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~38_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(19) & ((\range_sensor_map|distan0|Counter_pulse|count\(20) & (\range_sensor_map|distan0|Add0~37\ & VCC)) # (!\range_sensor_map|distan0|Counter_pulse|count\(20) & 
-- (!\range_sensor_map|distan0|Add0~37\)))) # (!\range_sensor_map|distan0|Counter_pulse|count\(19) & ((\range_sensor_map|distan0|Counter_pulse|count\(20) & (!\range_sensor_map|distan0|Add0~37\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(20) & 
-- ((\range_sensor_map|distan0|Add0~37\) # (GND)))))
-- \range_sensor_map|distan0|Add0~39\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(19) & (!\range_sensor_map|distan0|Counter_pulse|count\(20) & !\range_sensor_map|distan0|Add0~37\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(19) & 
-- ((!\range_sensor_map|distan0|Add0~37\) # (!\range_sensor_map|distan0|Counter_pulse|count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(19),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~37\,
	combout => \range_sensor_map|distan0|Add0~38_combout\,
	cout => \range_sensor_map|distan0|Add0~39\);

-- Location: LCCOMB_X7_Y15_N18
\range_sensor_map|distan0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~40_combout\ = ((\range_sensor_map|distan0|Counter_pulse|count\(21) $ (\range_sensor_map|distan0|Counter_pulse|count\(20) $ (!\range_sensor_map|distan0|Add0~39\)))) # (GND)
-- \range_sensor_map|distan0|Add0~41\ = CARRY((\range_sensor_map|distan0|Counter_pulse|count\(21) & ((\range_sensor_map|distan0|Counter_pulse|count\(20)) # (!\range_sensor_map|distan0|Add0~39\))) # (!\range_sensor_map|distan0|Counter_pulse|count\(21) & 
-- (\range_sensor_map|distan0|Counter_pulse|count\(20) & !\range_sensor_map|distan0|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(21),
	datab => \range_sensor_map|distan0|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~39\,
	combout => \range_sensor_map|distan0|Add0~40_combout\,
	cout => \range_sensor_map|distan0|Add0~41\);

-- Location: LCCOMB_X7_Y15_N20
\range_sensor_map|distan0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~42_combout\ = (\range_sensor_map|distan0|Counter_pulse|count\(21) & (!\range_sensor_map|distan0|Add0~41\)) # (!\range_sensor_map|distan0|Counter_pulse|count\(21) & ((\range_sensor_map|distan0|Add0~41\) # (GND)))
-- \range_sensor_map|distan0|Add0~43\ = CARRY((!\range_sensor_map|distan0|Add0~41\) # (!\range_sensor_map|distan0|Counter_pulse|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Counter_pulse|count\(21),
	datad => VCC,
	cin => \range_sensor_map|distan0|Add0~41\,
	combout => \range_sensor_map|distan0|Add0~42_combout\,
	cout => \range_sensor_map|distan0|Add0~43\);

-- Location: LCCOMB_X7_Y15_N22
\range_sensor_map|distan0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Add0~44_combout\ = !\range_sensor_map|distan0|Add0~43\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \range_sensor_map|distan0|Add0~43\,
	combout => \range_sensor_map|distan0|Add0~44_combout\);

-- Location: LCCOMB_X6_Y15_N2
\range_sensor_map|distan0|Distance~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~20_combout\ = (\range_sensor_map|distan0|Add0~42_combout\) # (\range_sensor_map|distan0|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan0|Add0~42_combout\,
	datad => \range_sensor_map|distan0|Add0~28_combout\,
	combout => \range_sensor_map|distan0|Distance~20_combout\);

-- Location: LCCOMB_X6_Y15_N8
\range_sensor_map|distan0|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|LessThan0~2_combout\ = (\range_sensor_map|distan0|Add0~38_combout\ & (\range_sensor_map|distan0|Add0~36_combout\ & \range_sensor_map|distan0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Add0~38_combout\,
	datac => \range_sensor_map|distan0|Add0~36_combout\,
	datad => \range_sensor_map|distan0|Add0~40_combout\,
	combout => \range_sensor_map|distan0|LessThan0~2_combout\);

-- Location: LCCOMB_X6_Y15_N16
\range_sensor_map|distan0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|LessThan0~0_combout\ = (\range_sensor_map|distan0|Add0~28_combout\) # ((\range_sensor_map|distan0|Add0~24_combout\ & \range_sensor_map|distan0|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~24_combout\,
	datac => \range_sensor_map|distan0|Add0~28_combout\,
	datad => \range_sensor_map|distan0|Add0~26_combout\,
	combout => \range_sensor_map|distan0|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y15_N10
\range_sensor_map|distan0|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|LessThan0~1_combout\ = (\range_sensor_map|distan0|Add0~32_combout\) # ((\range_sensor_map|distan0|Add0~34_combout\) # ((\range_sensor_map|distan0|Add0~30_combout\ & \range_sensor_map|distan0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~32_combout\,
	datab => \range_sensor_map|distan0|Add0~34_combout\,
	datac => \range_sensor_map|distan0|Add0~30_combout\,
	datad => \range_sensor_map|distan0|LessThan0~0_combout\,
	combout => \range_sensor_map|distan0|LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y15_N22
\range_sensor_map|distan0|Distance~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~21_combout\ = (\range_sensor_map|distan0|Add0~44_combout\) # ((\range_sensor_map|distan0|Distance~20_combout\) # ((\range_sensor_map|distan0|LessThan0~2_combout\ & \range_sensor_map|distan0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~44_combout\,
	datab => \range_sensor_map|distan0|Distance~20_combout\,
	datac => \range_sensor_map|distan0|LessThan0~2_combout\,
	datad => \range_sensor_map|distan0|LessThan0~1_combout\,
	combout => \range_sensor_map|distan0|Distance~21_combout\);

-- Location: FF_X6_Y15_N23
\range_sensor_map|distan0|Distance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(2));

-- Location: LCCOMB_X7_Y15_N26
\range_sensor_map|distan0|Distance~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~26_combout\ = (\range_sensor_map|distan0|Add0~38_combout\) # ((\range_sensor_map|distan0|Add0~44_combout\) # (\range_sensor_map|distan0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Add0~38_combout\,
	datac => \range_sensor_map|distan0|Add0~44_combout\,
	datad => \range_sensor_map|distan0|Add0~42_combout\,
	combout => \range_sensor_map|distan0|Distance~26_combout\);

-- Location: FF_X7_Y15_N27
\range_sensor_map|distan0|Distance[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(7));

-- Location: LCCOMB_X7_Y15_N30
\range_sensor_map|distan0|Distance~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~25_combout\ = (\range_sensor_map|distan0|Add0~40_combout\) # ((\range_sensor_map|distan0|Add0~44_combout\) # (\range_sensor_map|distan0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Add0~40_combout\,
	datac => \range_sensor_map|distan0|Add0~44_combout\,
	datad => \range_sensor_map|distan0|Add0~42_combout\,
	combout => \range_sensor_map|distan0|Distance~25_combout\);

-- Location: FF_X7_Y15_N31
\range_sensor_map|distan0|Distance[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(8));

-- Location: LCCOMB_X7_Y15_N24
\range_sensor_map|distan0|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|LessThan0~3_combout\ = (\range_sensor_map|distan0|Add0~42_combout\) # (\range_sensor_map|distan0|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Add0~42_combout\,
	datad => \range_sensor_map|distan0|Add0~44_combout\,
	combout => \range_sensor_map|distan0|LessThan0~3_combout\);

-- Location: LCCOMB_X6_Y15_N30
\range_sensor_map|distan0|Distance~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~17_combout\ = (\range_sensor_map|distan0|Add0~34_combout\) # ((\range_sensor_map|distan0|LessThan0~3_combout\) # ((\range_sensor_map|distan0|LessThan0~2_combout\ & \range_sensor_map|distan0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~34_combout\,
	datab => \range_sensor_map|distan0|LessThan0~3_combout\,
	datac => \range_sensor_map|distan0|LessThan0~2_combout\,
	datad => \range_sensor_map|distan0|LessThan0~1_combout\,
	combout => \range_sensor_map|distan0|Distance~17_combout\);

-- Location: FF_X6_Y15_N31
\range_sensor_map|distan0|Distance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(5));

-- Location: LCCOMB_X7_Y15_N28
\range_sensor_map|distan0|Distance~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~27_combout\ = (\range_sensor_map|distan0|Add0~42_combout\) # ((\range_sensor_map|distan0|Add0~36_combout\) # (\range_sensor_map|distan0|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Add0~42_combout\,
	datac => \range_sensor_map|distan0|Add0~36_combout\,
	datad => \range_sensor_map|distan0|Add0~44_combout\,
	combout => \range_sensor_map|distan0|Distance~27_combout\);

-- Location: FF_X7_Y15_N29
\range_sensor_map|distan0|Distance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(6));

-- Location: LCCOMB_X6_Y13_N12
\range_sensor_map|BCD_conv0|bcd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~0_combout\ = (\range_sensor_map|distan0|Distance\(7) & ((\range_sensor_map|distan0|Distance\(8) & (\range_sensor_map|distan0|Distance\(5) & !\range_sensor_map|distan0|Distance\(6))) # 
-- (!\range_sensor_map|distan0|Distance\(8) & (!\range_sensor_map|distan0|Distance\(5) & \range_sensor_map|distan0|Distance\(6))))) # (!\range_sensor_map|distan0|Distance\(7) & (\range_sensor_map|distan0|Distance\(5) $ 
-- (((\range_sensor_map|distan0|Distance\(8) & !\range_sensor_map|distan0|Distance\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(7),
	datab => \range_sensor_map|distan0|Distance\(8),
	datac => \range_sensor_map|distan0|Distance\(5),
	datad => \range_sensor_map|distan0|Distance\(6),
	combout => \range_sensor_map|BCD_conv0|bcd~0_combout\);

-- Location: LCCOMB_X6_Y13_N28
\range_sensor_map|BCD_conv0|bcd~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~2_combout\ = (\range_sensor_map|distan0|Distance\(8) & (!\range_sensor_map|distan0|Distance\(6) & ((\range_sensor_map|distan0|Distance\(7)) # (!\range_sensor_map|distan0|Distance\(5))))) # 
-- (!\range_sensor_map|distan0|Distance\(8) & (\range_sensor_map|distan0|Distance\(6) & ((\range_sensor_map|distan0|Distance\(5)) # (!\range_sensor_map|distan0|Distance\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(7),
	datab => \range_sensor_map|distan0|Distance\(8),
	datac => \range_sensor_map|distan0|Distance\(5),
	datad => \range_sensor_map|distan0|Distance\(6),
	combout => \range_sensor_map|BCD_conv0|bcd~2_combout\);

-- Location: LCCOMB_X6_Y15_N0
\range_sensor_map|distan0|Distance~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~18_combout\ = (\range_sensor_map|distan0|Add0~32_combout\) # (\range_sensor_map|distan0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Add0~32_combout\,
	datac => \range_sensor_map|distan0|Add0~42_combout\,
	combout => \range_sensor_map|distan0|Distance~18_combout\);

-- Location: LCCOMB_X6_Y15_N12
\range_sensor_map|distan0|Distance~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~19_combout\ = (\range_sensor_map|distan0|Add0~44_combout\) # ((\range_sensor_map|distan0|Distance~18_combout\) # ((\range_sensor_map|distan0|LessThan0~2_combout\ & \range_sensor_map|distan0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~44_combout\,
	datab => \range_sensor_map|distan0|Distance~18_combout\,
	datac => \range_sensor_map|distan0|LessThan0~2_combout\,
	datad => \range_sensor_map|distan0|LessThan0~1_combout\,
	combout => \range_sensor_map|distan0|Distance~19_combout\);

-- Location: FF_X6_Y15_N13
\range_sensor_map|distan0|Distance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(4));

-- Location: LCCOMB_X6_Y13_N6
\range_sensor_map|BCD_conv0|bcd~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~1_combout\ = (\range_sensor_map|distan0|Distance\(7) & (!\range_sensor_map|distan0|Distance\(5) & (\range_sensor_map|distan0|Distance\(8) $ (!\range_sensor_map|distan0|Distance\(6))))) # 
-- (!\range_sensor_map|distan0|Distance\(7) & (\range_sensor_map|distan0|Distance\(8) & (\range_sensor_map|distan0|Distance\(5) & !\range_sensor_map|distan0|Distance\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(7),
	datab => \range_sensor_map|distan0|Distance\(8),
	datac => \range_sensor_map|distan0|Distance\(5),
	datad => \range_sensor_map|distan0|Distance\(6),
	combout => \range_sensor_map|BCD_conv0|bcd~1_combout\);

-- Location: LCCOMB_X6_Y13_N14
\range_sensor_map|BCD_conv0|bcd~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~4_combout\ = (\range_sensor_map|BCD_conv0|bcd~2_combout\ & (!\range_sensor_map|BCD_conv0|bcd~0_combout\ & (!\range_sensor_map|distan0|Distance\(4)))) # (!\range_sensor_map|BCD_conv0|bcd~2_combout\ & 
-- (\range_sensor_map|BCD_conv0|bcd~1_combout\ & ((\range_sensor_map|BCD_conv0|bcd~0_combout\) # (\range_sensor_map|distan0|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~2_combout\,
	datac => \range_sensor_map|distan0|Distance\(4),
	datad => \range_sensor_map|BCD_conv0|bcd~1_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~4_combout\);

-- Location: LCCOMB_X6_Y13_N20
\range_sensor_map|BCD_conv0|bcd~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~9_combout\ = (\range_sensor_map|BCD_conv0|bcd~2_combout\ & (!\range_sensor_map|distan0|Distance\(4) & ((\range_sensor_map|BCD_conv0|bcd~0_combout\) # (\range_sensor_map|BCD_conv0|bcd~1_combout\)))) # 
-- (!\range_sensor_map|BCD_conv0|bcd~2_combout\ & ((\range_sensor_map|distan0|Distance\(4) $ (\range_sensor_map|BCD_conv0|bcd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~2_combout\,
	datac => \range_sensor_map|distan0|Distance\(4),
	datad => \range_sensor_map|BCD_conv0|bcd~1_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~9_combout\);

-- Location: LCCOMB_X6_Y13_N26
\range_sensor_map|BCD_conv0|bcd~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~10_combout\ = (\range_sensor_map|BCD_conv0|bcd~0_combout\ & ((\range_sensor_map|distan0|Distance\(4)) # ((!\range_sensor_map|BCD_conv0|bcd~2_combout\ & !\range_sensor_map|BCD_conv0|bcd~1_combout\)))) # 
-- (!\range_sensor_map|BCD_conv0|bcd~0_combout\ & (((!\range_sensor_map|distan0|Distance\(4) & \range_sensor_map|BCD_conv0|bcd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~2_combout\,
	datac => \range_sensor_map|distan0|Distance\(4),
	datad => \range_sensor_map|BCD_conv0|bcd~1_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~10_combout\);

-- Location: LCCOMB_X6_Y15_N18
\range_sensor_map|distan0|Distance~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~15_combout\ = (\range_sensor_map|distan0|Add0~30_combout\) # (\range_sensor_map|distan0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Add0~30_combout\,
	datac => \range_sensor_map|distan0|Add0~42_combout\,
	combout => \range_sensor_map|distan0|Distance~15_combout\);

-- Location: LCCOMB_X6_Y15_N28
\range_sensor_map|distan0|Distance~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~16_combout\ = (\range_sensor_map|distan0|Add0~44_combout\) # ((\range_sensor_map|distan0|Distance~15_combout\) # ((\range_sensor_map|distan0|LessThan0~2_combout\ & \range_sensor_map|distan0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~44_combout\,
	datab => \range_sensor_map|distan0|Distance~15_combout\,
	datac => \range_sensor_map|distan0|LessThan0~2_combout\,
	datad => \range_sensor_map|distan0|LessThan0~1_combout\,
	combout => \range_sensor_map|distan0|Distance~16_combout\);

-- Location: FF_X6_Y15_N29
\range_sensor_map|distan0|Distance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(3));

-- Location: LCCOMB_X7_Y13_N18
\range_sensor_map|BCD_conv0|bcd~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~11_combout\ = (\range_sensor_map|BCD_conv0|bcd~4_combout\ & (\range_sensor_map|BCD_conv0|bcd~9_combout\ $ (((!\range_sensor_map|distan0|Distance\(3)))))) # (!\range_sensor_map|BCD_conv0|bcd~4_combout\ & 
-- (\range_sensor_map|BCD_conv0|bcd~9_combout\ & ((\range_sensor_map|distan0|Distance\(3)) # (!\range_sensor_map|BCD_conv0|bcd~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~4_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~9_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~10_combout\,
	datad => \range_sensor_map|distan0|Distance\(3),
	combout => \range_sensor_map|BCD_conv0|bcd~11_combout\);

-- Location: LCCOMB_X7_Y13_N26
\range_sensor_map|BCD_conv0|bcd~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~13_combout\ = (\range_sensor_map|BCD_conv0|bcd~4_combout\ & (((!\range_sensor_map|distan0|Distance\(3))))) # (!\range_sensor_map|BCD_conv0|bcd~4_combout\ & ((\range_sensor_map|BCD_conv0|bcd~10_combout\ & 
-- (\range_sensor_map|BCD_conv0|bcd~9_combout\ & !\range_sensor_map|distan0|Distance\(3))) # (!\range_sensor_map|BCD_conv0|bcd~10_combout\ & ((\range_sensor_map|distan0|Distance\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~4_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~9_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~10_combout\,
	datad => \range_sensor_map|distan0|Distance\(3),
	combout => \range_sensor_map|BCD_conv0|bcd~13_combout\);

-- Location: LCCOMB_X7_Y13_N12
\range_sensor_map|BCD_conv0|bcd~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~12_combout\ = (\range_sensor_map|BCD_conv0|bcd~10_combout\ & (((!\range_sensor_map|BCD_conv0|bcd~9_combout\ & !\range_sensor_map|distan0|Distance\(3))))) # (!\range_sensor_map|BCD_conv0|bcd~10_combout\ & 
-- (\range_sensor_map|BCD_conv0|bcd~4_combout\ & ((\range_sensor_map|BCD_conv0|bcd~9_combout\) # (\range_sensor_map|distan0|Distance\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~4_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~9_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~10_combout\,
	datad => \range_sensor_map|distan0|Distance\(3),
	combout => \range_sensor_map|BCD_conv0|bcd~12_combout\);

-- Location: LCCOMB_X7_Y13_N22
\range_sensor_map|BCD_conv0|bcd~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~18_combout\ = (\range_sensor_map|distan0|Distance\(2) & (!\range_sensor_map|BCD_conv0|bcd~11_combout\ & ((!\range_sensor_map|BCD_conv0|bcd~12_combout\)))) # (!\range_sensor_map|distan0|Distance\(2) & 
-- ((\range_sensor_map|BCD_conv0|bcd~12_combout\) # ((\range_sensor_map|BCD_conv0|bcd~11_combout\ & \range_sensor_map|BCD_conv0|bcd~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(2),
	datab => \range_sensor_map|BCD_conv0|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~13_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~12_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~18_combout\);

-- Location: LCCOMB_X7_Y13_N2
\range_sensor_map|BCD_conv0|bcd~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~20_combout\ = (\range_sensor_map|distan0|Distance\(2) & (((\range_sensor_map|BCD_conv0|bcd~13_combout\)))) # (!\range_sensor_map|distan0|Distance\(2) & ((\range_sensor_map|BCD_conv0|bcd~13_combout\ & 
-- (!\range_sensor_map|BCD_conv0|bcd~11_combout\ & !\range_sensor_map|BCD_conv0|bcd~12_combout\)) # (!\range_sensor_map|BCD_conv0|bcd~13_combout\ & ((\range_sensor_map|BCD_conv0|bcd~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(2),
	datab => \range_sensor_map|BCD_conv0|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~13_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~12_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~20_combout\);

-- Location: LCCOMB_X6_Y15_N20
\range_sensor_map|distan0|Distance~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~22_combout\ = (\range_sensor_map|distan0|Add0~42_combout\) # (\range_sensor_map|distan0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan0|Add0~42_combout\,
	datad => \range_sensor_map|distan0|Add0~26_combout\,
	combout => \range_sensor_map|distan0|Distance~22_combout\);

-- Location: LCCOMB_X6_Y15_N24
\range_sensor_map|distan0|Distance~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~23_combout\ = (\range_sensor_map|distan0|Add0~44_combout\) # ((\range_sensor_map|distan0|Distance~22_combout\) # ((\range_sensor_map|distan0|LessThan0~2_combout\ & \range_sensor_map|distan0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~44_combout\,
	datab => \range_sensor_map|distan0|Distance~22_combout\,
	datac => \range_sensor_map|distan0|LessThan0~2_combout\,
	datad => \range_sensor_map|distan0|LessThan0~1_combout\,
	combout => \range_sensor_map|distan0|Distance~23_combout\);

-- Location: FF_X6_Y15_N25
\range_sensor_map|distan0|Distance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(1));

-- Location: LCCOMB_X7_Y13_N20
\range_sensor_map|BCD_conv0|bcd~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~19_combout\ = (\range_sensor_map|BCD_conv0|bcd~11_combout\ & (!\range_sensor_map|distan0|Distance\(2) & (!\range_sensor_map|BCD_conv0|bcd~13_combout\))) # (!\range_sensor_map|BCD_conv0|bcd~11_combout\ & 
-- (\range_sensor_map|BCD_conv0|bcd~12_combout\ & ((\range_sensor_map|distan0|Distance\(2)) # (\range_sensor_map|BCD_conv0|bcd~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(2),
	datab => \range_sensor_map|BCD_conv0|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~13_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~12_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~19_combout\);

-- Location: LCCOMB_X7_Y13_N4
\vga_inst|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan7~0_combout\ = \range_sensor_map|BCD_conv0|bcd~19_combout\ $ (((\range_sensor_map|BCD_conv0|bcd~20_combout\ & ((\range_sensor_map|BCD_conv0|bcd~18_combout\) # (\range_sensor_map|distan0|Distance\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~18_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~20_combout\,
	datac => \range_sensor_map|distan0|Distance\(1),
	datad => \range_sensor_map|BCD_conv0|bcd~19_combout\,
	combout => \vga_inst|LessThan7~0_combout\);

-- Location: LCCOMB_X6_Y13_N10
\range_sensor_map|BCD_conv0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|LessThan0~0_combout\ = ((!\range_sensor_map|distan0|Distance\(7) & !\range_sensor_map|distan0|Distance\(6))) # (!\range_sensor_map|distan0|Distance\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(7),
	datac => \range_sensor_map|distan0|Distance\(8),
	datad => \range_sensor_map|distan0|Distance\(6),
	combout => \range_sensor_map|BCD_conv0|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y13_N0
\range_sensor_map|BCD_conv0|bcd~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~8_combout\ = (\range_sensor_map|distan0|Distance\(7) & ((\range_sensor_map|distan0|Distance\(8) & (\range_sensor_map|distan0|Distance\(5) & \range_sensor_map|distan0|Distance\(6))) # (!\range_sensor_map|distan0|Distance\(8) 
-- & ((\range_sensor_map|distan0|Distance\(5)) # (\range_sensor_map|distan0|Distance\(6)))))) # (!\range_sensor_map|distan0|Distance\(7) & (\range_sensor_map|distan0|Distance\(8) & ((!\range_sensor_map|distan0|Distance\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(7),
	datab => \range_sensor_map|distan0|Distance\(8),
	datac => \range_sensor_map|distan0|Distance\(5),
	datad => \range_sensor_map|distan0|Distance\(6),
	combout => \range_sensor_map|BCD_conv0|bcd~8_combout\);

-- Location: LCCOMB_X6_Y13_N4
\range_sensor_map|BCD_conv0|bcd~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~6_combout\ = \range_sensor_map|BCD_conv0|bcd~1_combout\ $ (((\range_sensor_map|BCD_conv0|bcd~2_combout\ & ((\range_sensor_map|BCD_conv0|bcd~0_combout\) # (\range_sensor_map|distan0|Distance\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~2_combout\,
	datac => \range_sensor_map|distan0|Distance\(4),
	datad => \range_sensor_map|BCD_conv0|bcd~1_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~6_combout\);

-- Location: LCCOMB_X6_Y13_N8
\range_sensor_map|BCD_conv0|bcd~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~5_combout\ = (\range_sensor_map|distan0|Distance\(7) & (\range_sensor_map|distan0|Distance\(8) & (\range_sensor_map|distan0|Distance\(5) & \range_sensor_map|distan0|Distance\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(7),
	datab => \range_sensor_map|distan0|Distance\(8),
	datac => \range_sensor_map|distan0|Distance\(5),
	datad => \range_sensor_map|distan0|Distance\(6),
	combout => \range_sensor_map|BCD_conv0|bcd~5_combout\);

-- Location: LCCOMB_X6_Y13_N22
\range_sensor_map|BCD_conv0|bcd~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~7_combout\ = (\range_sensor_map|BCD_conv0|bcd~5_combout\) # ((\range_sensor_map|BCD_conv0|bcd~6_combout\ & \range_sensor_map|BCD_conv0|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv0|bcd~6_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~5_combout\,
	datad => \range_sensor_map|BCD_conv0|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~7_combout\);

-- Location: LCCOMB_X6_Y15_N26
\range_sensor_map|BCD_conv0|bcd~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~3_combout\ = (\range_sensor_map|BCD_conv0|bcd~1_combout\) # ((\range_sensor_map|BCD_conv0|bcd~2_combout\ & ((\range_sensor_map|BCD_conv0|bcd~0_combout\) # (\range_sensor_map|distan0|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~1_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~0_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~2_combout\,
	datad => \range_sensor_map|distan0|Distance\(4),
	combout => \range_sensor_map|BCD_conv0|bcd~3_combout\);

-- Location: LCCOMB_X6_Y15_N4
\range_sensor_map|BCD_conv0|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|LessThan3~0_combout\ = (\range_sensor_map|BCD_conv0|bcd~3_combout\ & ((\range_sensor_map|BCD_conv0|bcd~0_combout\ & (\range_sensor_map|distan0|Distance\(3) & \range_sensor_map|distan0|Distance\(4))) # 
-- (!\range_sensor_map|BCD_conv0|bcd~0_combout\ & ((!\range_sensor_map|distan0|Distance\(4)))))) # (!\range_sensor_map|BCD_conv0|bcd~3_combout\ & (\range_sensor_map|BCD_conv0|bcd~0_combout\ & ((\range_sensor_map|distan0|Distance\(3)) # 
-- (\range_sensor_map|distan0|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~3_combout\,
	datab => \range_sensor_map|distan0|Distance\(3),
	datac => \range_sensor_map|BCD_conv0|bcd~0_combout\,
	datad => \range_sensor_map|distan0|Distance\(4),
	combout => \range_sensor_map|BCD_conv0|LessThan3~0_combout\);

-- Location: LCCOMB_X7_Y13_N24
\range_sensor_map|BCD_conv0|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|LessThan6~0_combout\ = (\range_sensor_map|BCD_conv0|bcd~7_combout\) # (\range_sensor_map|BCD_conv0|LessThan3~0_combout\ $ (\range_sensor_map|BCD_conv0|bcd~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv0|bcd~7_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~4_combout\,
	combout => \range_sensor_map|BCD_conv0|LessThan6~0_combout\);

-- Location: LCCOMB_X6_Y13_N30
\range_sensor_map|BCD_conv0|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|LessThan6~1_combout\ = (\range_sensor_map|BCD_conv0|bcd~8_combout\ & (\range_sensor_map|BCD_conv0|LessThan6~0_combout\ & ((\range_sensor_map|BCD_conv0|LessThan0~0_combout\) # (\range_sensor_map|BCD_conv0|bcd~6_combout\)))) # 
-- (!\range_sensor_map|BCD_conv0|bcd~8_combout\ & (!\range_sensor_map|BCD_conv0|LessThan0~0_combout\ & (!\range_sensor_map|BCD_conv0|bcd~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|LessThan0~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~8_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~6_combout\,
	datad => \range_sensor_map|BCD_conv0|LessThan6~0_combout\,
	combout => \range_sensor_map|BCD_conv0|LessThan6~1_combout\);

-- Location: LCCOMB_X6_Y16_N18
\range_sensor_map|BCD_conv0|bcd~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~21_combout\ = \range_sensor_map|BCD_conv0|LessThan6~1_combout\ $ (\range_sensor_map|BCD_conv0|bcd~4_combout\ $ (!\range_sensor_map|BCD_conv0|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan3~0_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~21_combout\);

-- Location: LCCOMB_X6_Y16_N26
\range_sensor_map|BCD_conv0|bcd~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~15_combout\ = \range_sensor_map|BCD_conv0|bcd~7_combout\ $ (((\range_sensor_map|BCD_conv0|LessThan6~1_combout\ & (\range_sensor_map|BCD_conv0|bcd~4_combout\ $ (!\range_sensor_map|BCD_conv0|LessThan3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~7_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~15_combout\);

-- Location: LCCOMB_X6_Y13_N16
\range_sensor_map|BCD_conv0|bcd~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~16_combout\ = (\range_sensor_map|BCD_conv0|bcd~8_combout\ & (!\range_sensor_map|BCD_conv0|LessThan6~0_combout\ & ((\range_sensor_map|BCD_conv0|LessThan0~0_combout\) # (\range_sensor_map|BCD_conv0|bcd~6_combout\)))) # 
-- (!\range_sensor_map|BCD_conv0|bcd~8_combout\ & (!\range_sensor_map|BCD_conv0|LessThan0~0_combout\ & (!\range_sensor_map|BCD_conv0|bcd~6_combout\ & \range_sensor_map|BCD_conv0|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|LessThan0~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~8_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~6_combout\,
	datad => \range_sensor_map|BCD_conv0|LessThan6~0_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~16_combout\);

-- Location: LCCOMB_X7_Y13_N28
\range_sensor_map|BCD_conv0|bcd~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~14_combout\ = \range_sensor_map|BCD_conv0|bcd~12_combout\ $ ((((!\range_sensor_map|distan0|Distance\(2) & !\range_sensor_map|BCD_conv0|bcd~13_combout\)) # (!\range_sensor_map|BCD_conv0|bcd~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(2),
	datab => \range_sensor_map|BCD_conv0|bcd~11_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~13_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~12_combout\,
	combout => \range_sensor_map|BCD_conv0|bcd~14_combout\);

-- Location: LCCOMB_X6_Y16_N8
\range_sensor_map|BCD_conv0|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|LessThan8~1_combout\ = (\range_sensor_map|BCD_conv0|bcd~16_combout\) # ((\range_sensor_map|BCD_conv0|bcd~15_combout\ & ((!\range_sensor_map|BCD_conv0|bcd~14_combout\) # (!\range_sensor_map|BCD_conv0|bcd~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~15_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~21_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~16_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~14_combout\,
	combout => \range_sensor_map|BCD_conv0|LessThan8~1_combout\);

-- Location: LCCOMB_X6_Y16_N2
\vga_inst|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan8~5_combout\ = (\vga_inst|LessThan7~0_combout\ & (\range_sensor_map|BCD_conv0|bcd~21_combout\ $ (((!\range_sensor_map|BCD_conv0|bcd~14_combout\) # (!\range_sensor_map|BCD_conv0|LessThan8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan7~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~21_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan8~1_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~14_combout\,
	combout => \vga_inst|LessThan8~5_combout\);

-- Location: LCCOMB_X6_Y16_N30
\vga_inst|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan8~1_combout\ = (\range_sensor_map|BCD_conv0|bcd~21_combout\ & (((\range_sensor_map|BCD_conv0|bcd~16_combout\ & \range_sensor_map|BCD_conv0|bcd~14_combout\)))) # (!\range_sensor_map|BCD_conv0|bcd~21_combout\ & 
-- (!\range_sensor_map|BCD_conv0|bcd~15_combout\ & (!\range_sensor_map|BCD_conv0|bcd~16_combout\ & !\range_sensor_map|BCD_conv0|bcd~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~15_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~21_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~16_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~14_combout\,
	combout => \vga_inst|LessThan8~1_combout\);

-- Location: LCCOMB_X6_Y13_N18
\range_sensor_map|BCD_conv0|bcd~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|bcd~17_combout\ = (\range_sensor_map|distan0|Distance\(7) & \range_sensor_map|distan0|Distance\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(7),
	datac => \range_sensor_map|distan0|Distance\(8),
	combout => \range_sensor_map|BCD_conv0|bcd~17_combout\);

-- Location: LCCOMB_X6_Y13_N24
\vga_inst|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan8~0_combout\ = (\range_sensor_map|BCD_conv0|bcd~17_combout\ & ((\range_sensor_map|distan0|Distance\(5)) # ((\range_sensor_map|distan0|Distance\(6)) # (\range_sensor_map|distan0|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Distance\(5),
	datab => \range_sensor_map|distan0|Distance\(6),
	datac => \range_sensor_map|distan0|Distance\(4),
	datad => \range_sensor_map|BCD_conv0|bcd~17_combout\,
	combout => \vga_inst|LessThan8~0_combout\);

-- Location: LCCOMB_X6_Y16_N28
\range_sensor_map|BCD_conv0|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv0|LessThan8~0_combout\ = (\range_sensor_map|BCD_conv0|LessThan6~1_combout\ $ (\range_sensor_map|BCD_conv0|bcd~4_combout\ $ (\range_sensor_map|BCD_conv0|LessThan3~0_combout\))) # (!\range_sensor_map|BCD_conv0|bcd~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~14_combout\,
	combout => \range_sensor_map|BCD_conv0|LessThan8~0_combout\);

-- Location: LCCOMB_X6_Y16_N0
\vga_inst|output_logic~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~4_combout\ = (!\vga_inst|LessThan8~0_combout\ & ((\range_sensor_map|BCD_conv0|bcd~15_combout\ & (\range_sensor_map|BCD_conv0|bcd~16_combout\ & \range_sensor_map|BCD_conv0|LessThan8~0_combout\)) # 
-- (!\range_sensor_map|BCD_conv0|bcd~15_combout\ & (!\range_sensor_map|BCD_conv0|bcd~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~15_combout\,
	datab => \vga_inst|LessThan8~0_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~16_combout\,
	datad => \range_sensor_map|BCD_conv0|LessThan8~0_combout\,
	combout => \vga_inst|output_logic~4_combout\);

-- Location: LCCOMB_X6_Y16_N4
\vga_inst|LessThan8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan8~2_combout\ = (\vga_inst|LessThan8~1_combout\) # ((\range_sensor_map|BCD_conv0|LessThan6~1_combout\) # (!\vga_inst|output_logic~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan8~1_combout\,
	datab => \vga_inst|output_logic~4_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan6~1_combout\,
	combout => \vga_inst|LessThan8~2_combout\);

-- Location: LCCOMB_X6_Y15_N14
\range_sensor_map|distan0|Distance~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan0|Distance~24_combout\ = (\range_sensor_map|distan0|Add0~24_combout\) # ((\range_sensor_map|distan0|LessThan0~3_combout\) # ((\range_sensor_map|distan0|LessThan0~2_combout\ & \range_sensor_map|distan0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan0|Add0~24_combout\,
	datab => \range_sensor_map|distan0|LessThan0~3_combout\,
	datac => \range_sensor_map|distan0|LessThan0~2_combout\,
	datad => \range_sensor_map|distan0|LessThan0~1_combout\,
	combout => \range_sensor_map|distan0|Distance~24_combout\);

-- Location: FF_X6_Y15_N15
\range_sensor_map|distan0|Distance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[0]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan0|Distance~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan0|Distance\(0));

-- Location: LCCOMB_X7_Y13_N10
\vga_inst|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan8~3_combout\ = (\range_sensor_map|BCD_conv0|bcd~18_combout\) # ((\range_sensor_map|BCD_conv0|bcd~20_combout\ & (!\range_sensor_map|distan0|Distance\(1))) # (!\range_sensor_map|BCD_conv0|bcd~20_combout\ & 
-- ((\range_sensor_map|distan0|Distance\(1)) # (\range_sensor_map|BCD_conv0|bcd~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~18_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~20_combout\,
	datac => \range_sensor_map|distan0|Distance\(1),
	datad => \range_sensor_map|BCD_conv0|bcd~19_combout\,
	combout => \vga_inst|LessThan8~3_combout\);

-- Location: LCCOMB_X7_Y13_N16
\vga_inst|LessThan8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan8~4_combout\ = (\range_sensor_map|distan0|Distance\(0)) # (\vga_inst|LessThan8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan0|Distance\(0),
	datad => \vga_inst|LessThan8~3_combout\,
	combout => \vga_inst|LessThan8~4_combout\);

-- Location: LCCOMB_X6_Y16_N20
\vga_inst|output_logic~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~6_combout\ = (\vga_inst|output_logic~3_combout\ & ((\vga_inst|LessThan8~2_combout\) # ((\vga_inst|LessThan8~5_combout\ & \vga_inst|LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|output_logic~3_combout\,
	datab => \vga_inst|LessThan8~5_combout\,
	datac => \vga_inst|LessThan8~2_combout\,
	datad => \vga_inst|LessThan8~4_combout\,
	combout => \vga_inst|output_logic~6_combout\);

-- Location: LCCOMB_X6_Y16_N6
\vga_inst|output_logic~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~12_combout\ = (\range_sensor_map|BCD_conv0|bcd~16_combout\ & (((\range_sensor_map|BCD_conv0|bcd~14_combout\)))) # (!\range_sensor_map|BCD_conv0|bcd~16_combout\ & (!\range_sensor_map|BCD_conv0|bcd~14_combout\ & 
-- ((\vga_inst|LessThan7~0_combout\) # (\vga_inst|LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan7~0_combout\,
	datab => \vga_inst|LessThan8~4_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~16_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~14_combout\,
	combout => \vga_inst|output_logic~12_combout\);

-- Location: LCCOMB_X6_Y16_N24
\vga_inst|output_logic~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~13_combout\ = (\range_sensor_map|BCD_conv0|bcd~15_combout\ & ((\range_sensor_map|BCD_conv0|bcd~21_combout\ & ((\vga_inst|output_logic~12_combout\))) # (!\range_sensor_map|BCD_conv0|bcd~21_combout\ & 
-- (!\range_sensor_map|BCD_conv0|bcd~16_combout\)))) # (!\range_sensor_map|BCD_conv0|bcd~15_combout\ & (\range_sensor_map|BCD_conv0|bcd~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|bcd~16_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~21_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~15_combout\,
	datad => \vga_inst|output_logic~12_combout\,
	combout => \vga_inst|output_logic~13_combout\);

-- Location: LCCOMB_X6_Y16_N22
\vga_inst|output_logic~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~14_combout\ = (\vga_inst|output_logic~3_combout\ & ((\vga_inst|LessThan8~0_combout\) # ((\range_sensor_map|BCD_conv0|LessThan6~1_combout\) # (\vga_inst|output_logic~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|output_logic~3_combout\,
	datab => \vga_inst|LessThan8~0_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan6~1_combout\,
	datad => \vga_inst|output_logic~13_combout\,
	combout => \vga_inst|output_logic~14_combout\);

-- Location: LCCOMB_X6_Y13_N2
\vga_inst|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan9~1_combout\ = (\range_sensor_map|BCD_conv0|bcd~8_combout\ & (((!\range_sensor_map|BCD_conv0|LessThan0~0_combout\ & !\range_sensor_map|BCD_conv0|bcd~6_combout\)) # (!\range_sensor_map|BCD_conv0|LessThan6~0_combout\))) # 
-- (!\range_sensor_map|BCD_conv0|bcd~8_combout\ & ((\range_sensor_map|BCD_conv0|LessThan0~0_combout\) # ((\range_sensor_map|BCD_conv0|bcd~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv0|LessThan0~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~8_combout\,
	datac => \range_sensor_map|BCD_conv0|bcd~6_combout\,
	datad => \range_sensor_map|BCD_conv0|LessThan6~0_combout\,
	combout => \vga_inst|LessThan9~1_combout\);

-- Location: LCCOMB_X6_Y16_N10
\vga_inst|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan9~0_combout\ = (\range_sensor_map|BCD_conv0|bcd~21_combout\ & (((!\range_sensor_map|BCD_conv0|bcd~14_combout\) # (!\range_sensor_map|BCD_conv0|LessThan8~1_combout\)))) # (!\range_sensor_map|BCD_conv0|bcd~21_combout\ & 
-- ((\vga_inst|LessThan7~0_combout\ & (\range_sensor_map|BCD_conv0|LessThan8~1_combout\ & \range_sensor_map|BCD_conv0|bcd~14_combout\)) # (!\vga_inst|LessThan7~0_combout\ & ((\range_sensor_map|BCD_conv0|LessThan8~1_combout\) # 
-- (\range_sensor_map|BCD_conv0|bcd~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan7~0_combout\,
	datab => \range_sensor_map|BCD_conv0|bcd~21_combout\,
	datac => \range_sensor_map|BCD_conv0|LessThan8~1_combout\,
	datad => \range_sensor_map|BCD_conv0|bcd~14_combout\,
	combout => \vga_inst|LessThan9~0_combout\);

-- Location: LCCOMB_X6_Y16_N16
\vga_inst|output_logic~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|output_logic~5_combout\ = (\vga_inst|output_logic~3_combout\ & (\vga_inst|output_logic~4_combout\ & (\vga_inst|LessThan9~1_combout\ & \vga_inst|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|output_logic~3_combout\,
	datab => \vga_inst|output_logic~4_combout\,
	datac => \vga_inst|LessThan9~1_combout\,
	datad => \vga_inst|LessThan9~0_combout\,
	combout => \vga_inst|output_logic~5_combout\);

-- Location: LCCOMB_X6_Y16_N12
\vga_inst|red[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|red[1]~4_combout\ = (!\vga_inst|output_logic~14_combout\ & ((\vga_inst|red[1]~3_combout\) # ((\vga_inst|output_logic~6_combout\) # (\vga_inst|output_logic~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|red[1]~3_combout\,
	datab => \vga_inst|output_logic~6_combout\,
	datac => \vga_inst|output_logic~14_combout\,
	datad => \vga_inst|output_logic~5_combout\,
	combout => \vga_inst|red[1]~4_combout\);

-- Location: LCCOMB_X7_Y19_N20
\vga_inst|grn[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|grn[1]~0_combout\ = (\vga_inst|output_logic~11_combout\) # ((\vga_inst|output_logic~10_combout\ & \vga_inst|LessThan1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|output_logic~11_combout\,
	datac => \vga_inst|output_logic~10_combout\,
	datad => \vga_inst|LessThan1~21_combout\,
	combout => \vga_inst|grn[1]~0_combout\);

-- Location: LCCOMB_X6_Y16_N14
\vga_inst|grn[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|grn[1]~1_combout\ = (\vga_inst|output_logic~6_combout\) # ((\vga_inst|output_logic~14_combout\) # ((\vga_inst|grn[1]~0_combout\ & !\vga_inst|output_logic~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|grn[1]~0_combout\,
	datab => \vga_inst|output_logic~6_combout\,
	datac => \vga_inst|output_logic~14_combout\,
	datad => \vga_inst|output_logic~5_combout\,
	combout => \vga_inst|grn[1]~1_combout\);

-- Location: LCCOMB_X6_Y14_N26
\vga_inst|display_things~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|display_things~0_combout\ = (\vga_inst|hposition\(5) & ((!\vga_inst|hposition\(6)) # (!\vga_inst|hposition\(4)))) # (!\vga_inst|hposition\(5) & ((\vga_inst|hposition\(4)) # (\vga_inst|hposition\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|hposition\(5),
	datac => \vga_inst|hposition\(4),
	datad => \vga_inst|hposition\(6),
	combout => \vga_inst|display_things~0_combout\);

-- Location: LCCOMB_X6_Y14_N20
\vga_inst|display_things~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|display_things~1_combout\ = (((\vga_inst|hposition\(7)) # (\vga_inst|hposition\(8))) # (!\vga_inst|LessThan3~0_combout\)) # (!\vga_inst|display_things~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|display_things~0_combout\,
	datab => \vga_inst|LessThan3~0_combout\,
	datac => \vga_inst|hposition\(7),
	datad => \vga_inst|hposition\(8),
	combout => \vga_inst|display_things~1_combout\);

-- Location: FF_X6_Y14_N21
\vga_inst|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|display_things~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|hsync~q\);

-- Location: LCCOMB_X3_Y16_N6
\vga_inst|display_things~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|display_things~2_combout\ = (\vga_inst|vposition\(1) & ((\vga_inst|vposition\(2)) # (!\vga_inst|vposition\(0)))) # (!\vga_inst|vposition\(1) & ((\vga_inst|vposition\(0)) # (!\vga_inst|vposition\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|vposition\(1),
	datac => \vga_inst|vposition\(2),
	datad => \vga_inst|vposition\(0),
	combout => \vga_inst|display_things~2_combout\);

-- Location: LCCOMB_X3_Y16_N26
\vga_inst|display_things~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|display_things~3_combout\ = (\vga_inst|display_things~2_combout\) # (((!\vga_inst|LessThan5~0_combout\) # (!\vga_inst|vposition\(3))) # (!\vga_inst|LessThan16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|display_things~2_combout\,
	datab => \vga_inst|LessThan16~0_combout\,
	datac => \vga_inst|vposition\(3),
	datad => \vga_inst|LessThan5~0_combout\,
	combout => \vga_inst|display_things~3_combout\);

-- Location: FF_X3_Y16_N27
\vga_inst|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_inst|disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_inst|display_things~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_inst|vsync~q\);

-- Location: IOIBUF_X31_Y0_N22
\pulse_pin[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse_pin(2),
	o => \pulse_pin[2]~input_o\);

-- Location: CLKCTRL_G17
\pulse_pin[2]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulse_pin[2]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulse_pin[2]~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y2_N0
\range_sensor_map|distan2|Counter_pulse|count[0]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[0]~55_combout\ = \pulse_pin[2]~input_o\ $ (\range_sensor_map|distan2|Counter_pulse|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_pin[2]~input_o\,
	datad => \range_sensor_map|distan2|Counter_pulse|count\(0),
	combout => \range_sensor_map|distan2|Counter_pulse|count[0]~55_combout\);

-- Location: LCCOMB_X26_Y2_N8
\range_sensor_map|distan2|Counter_pulse|count[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[0]~feeder_combout\ = \range_sensor_map|distan2|Counter_pulse|count[0]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count[0]~55_combout\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[0]~feeder_combout\);

-- Location: FF_X26_Y2_N9
\range_sensor_map|distan2|Counter_pulse|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[0]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(0));

-- Location: LCCOMB_X27_Y2_N12
\range_sensor_map|distan2|Counter_pulse|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[1]~21_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(0) & (\range_sensor_map|distan2|Counter_pulse|count\(1) $ (VCC))) # (!\range_sensor_map|distan2|Counter_pulse|count\(0) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(1) & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[1]~22\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(0) & \range_sensor_map|distan2|Counter_pulse|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(0),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(1),
	datad => VCC,
	combout => \range_sensor_map|distan2|Counter_pulse|count[1]~21_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[1]~22\);

-- Location: FF_X26_Y2_N7
\range_sensor_map|distan2|Counter_pulse|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \range_sensor_map|distan2|Counter_pulse|count[1]~21_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	sload => VCC,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(1));

-- Location: LCCOMB_X27_Y2_N14
\range_sensor_map|distan2|Counter_pulse|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[2]~23_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(2) & (!\range_sensor_map|distan2|Counter_pulse|count[1]~22\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(2) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[1]~22\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[2]~24\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[1]~22\) # (!\range_sensor_map|distan2|Counter_pulse|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[1]~22\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[2]~23_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[2]~24\);

-- Location: LCCOMB_X26_Y2_N4
\range_sensor_map|distan2|Counter_pulse|count[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[2]~feeder_combout\ = \range_sensor_map|distan2|Counter_pulse|count[2]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan2|Counter_pulse|count[2]~23_combout\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[2]~feeder_combout\);

-- Location: FF_X26_Y2_N5
\range_sensor_map|distan2|Counter_pulse|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[2]~feeder_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(2));

-- Location: LCCOMB_X27_Y2_N16
\range_sensor_map|distan2|Counter_pulse|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[3]~25_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(3) & (\range_sensor_map|distan2|Counter_pulse|count[2]~24\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(3) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[2]~24\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[3]~26\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(3) & !\range_sensor_map|distan2|Counter_pulse|count[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(3),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[2]~24\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[3]~25_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[3]~26\);

-- Location: FF_X27_Y2_N17
\range_sensor_map|distan2|Counter_pulse|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[3]~25_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(3));

-- Location: LCCOMB_X27_Y2_N18
\range_sensor_map|distan2|Counter_pulse|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[4]~27_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(4) & (!\range_sensor_map|distan2|Counter_pulse|count[3]~26\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(4) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[3]~26\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[4]~28\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[3]~26\) # (!\range_sensor_map|distan2|Counter_pulse|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(4),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[3]~26\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[4]~27_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[4]~28\);

-- Location: FF_X27_Y2_N19
\range_sensor_map|distan2|Counter_pulse|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[4]~27_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(4));

-- Location: LCCOMB_X27_Y2_N20
\range_sensor_map|distan2|Counter_pulse|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[5]~29_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(5) & (\range_sensor_map|distan2|Counter_pulse|count[4]~28\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(5) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[4]~28\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[5]~30\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(5) & !\range_sensor_map|distan2|Counter_pulse|count[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(5),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[4]~28\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[5]~29_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[5]~30\);

-- Location: FF_X27_Y2_N21
\range_sensor_map|distan2|Counter_pulse|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[5]~29_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(5));

-- Location: LCCOMB_X27_Y2_N22
\range_sensor_map|distan2|Counter_pulse|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[6]~31_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(6) & (!\range_sensor_map|distan2|Counter_pulse|count[5]~30\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(6) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[5]~30\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[6]~32\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[5]~30\) # (!\range_sensor_map|distan2|Counter_pulse|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[5]~30\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[6]~31_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[6]~32\);

-- Location: FF_X27_Y2_N23
\range_sensor_map|distan2|Counter_pulse|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[6]~31_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(6));

-- Location: LCCOMB_X27_Y2_N24
\range_sensor_map|distan2|Counter_pulse|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[7]~33_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(7) & (\range_sensor_map|distan2|Counter_pulse|count[6]~32\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(7) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[6]~32\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[7]~34\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(7) & !\range_sensor_map|distan2|Counter_pulse|count[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(7),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[6]~32\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[7]~33_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[7]~34\);

-- Location: FF_X27_Y2_N25
\range_sensor_map|distan2|Counter_pulse|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[7]~33_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(7));

-- Location: LCCOMB_X27_Y2_N26
\range_sensor_map|distan2|Counter_pulse|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[8]~35_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(8) & (!\range_sensor_map|distan2|Counter_pulse|count[7]~34\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(8) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[7]~34\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[8]~36\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[7]~34\) # (!\range_sensor_map|distan2|Counter_pulse|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(8),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[7]~34\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[8]~35_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[8]~36\);

-- Location: FF_X27_Y2_N27
\range_sensor_map|distan2|Counter_pulse|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[8]~35_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(8));

-- Location: LCCOMB_X27_Y2_N28
\range_sensor_map|distan2|Counter_pulse|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[9]~37_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(9) & (\range_sensor_map|distan2|Counter_pulse|count[8]~36\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(9) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[8]~36\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[9]~38\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(9) & !\range_sensor_map|distan2|Counter_pulse|count[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(9),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[8]~36\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[9]~37_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[9]~38\);

-- Location: FF_X27_Y2_N29
\range_sensor_map|distan2|Counter_pulse|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[9]~37_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(9));

-- Location: LCCOMB_X27_Y2_N30
\range_sensor_map|distan2|Counter_pulse|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[10]~39_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(10) & (!\range_sensor_map|distan2|Counter_pulse|count[9]~38\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(10) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[9]~38\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[10]~40\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[9]~38\) # (!\range_sensor_map|distan2|Counter_pulse|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(10),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[9]~38\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[10]~39_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[10]~40\);

-- Location: FF_X27_Y2_N31
\range_sensor_map|distan2|Counter_pulse|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[10]~39_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(10));

-- Location: LCCOMB_X27_Y1_N0
\range_sensor_map|distan2|Counter_pulse|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[11]~41_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(11) & (\range_sensor_map|distan2|Counter_pulse|count[10]~40\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(11) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[10]~40\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[11]~42\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(11) & !\range_sensor_map|distan2|Counter_pulse|count[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[10]~40\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[11]~41_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[11]~42\);

-- Location: FF_X27_Y1_N1
\range_sensor_map|distan2|Counter_pulse|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[11]~41_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(11));

-- Location: LCCOMB_X27_Y1_N2
\range_sensor_map|distan2|Counter_pulse|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[12]~43_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(12) & (!\range_sensor_map|distan2|Counter_pulse|count[11]~42\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(12) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[11]~42\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[12]~44\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[11]~42\) # (!\range_sensor_map|distan2|Counter_pulse|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(12),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[11]~42\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[12]~43_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[12]~44\);

-- Location: FF_X27_Y1_N3
\range_sensor_map|distan2|Counter_pulse|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[12]~43_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(12));

-- Location: LCCOMB_X27_Y1_N4
\range_sensor_map|distan2|Counter_pulse|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[13]~45_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(13) & (\range_sensor_map|distan2|Counter_pulse|count[12]~44\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(13) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[12]~44\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[13]~46\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(13) & !\range_sensor_map|distan2|Counter_pulse|count[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[12]~44\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[13]~45_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[13]~46\);

-- Location: FF_X27_Y1_N5
\range_sensor_map|distan2|Counter_pulse|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[13]~45_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(13));

-- Location: LCCOMB_X27_Y1_N6
\range_sensor_map|distan2|Counter_pulse|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[14]~47_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(14) & (!\range_sensor_map|distan2|Counter_pulse|count[13]~46\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(14) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[13]~46\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[14]~48\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[13]~46\) # (!\range_sensor_map|distan2|Counter_pulse|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(14),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[13]~46\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[14]~47_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[14]~48\);

-- Location: FF_X27_Y1_N7
\range_sensor_map|distan2|Counter_pulse|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[14]~47_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(14));

-- Location: LCCOMB_X27_Y1_N8
\range_sensor_map|distan2|Counter_pulse|count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[15]~49_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(15) & (\range_sensor_map|distan2|Counter_pulse|count[14]~48\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(15) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[14]~48\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[15]~50\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(15) & !\range_sensor_map|distan2|Counter_pulse|count[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(15),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[14]~48\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[15]~49_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[15]~50\);

-- Location: FF_X27_Y1_N9
\range_sensor_map|distan2|Counter_pulse|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[15]~49_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(15));

-- Location: LCCOMB_X27_Y1_N10
\range_sensor_map|distan2|Counter_pulse|count[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[16]~51_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(16) & (!\range_sensor_map|distan2|Counter_pulse|count[15]~50\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(16) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[15]~50\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[16]~52\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[15]~50\) # (!\range_sensor_map|distan2|Counter_pulse|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(16),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[15]~50\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[16]~51_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[16]~52\);

-- Location: FF_X27_Y1_N11
\range_sensor_map|distan2|Counter_pulse|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[16]~51_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(16));

-- Location: LCCOMB_X27_Y1_N12
\range_sensor_map|distan2|Counter_pulse|count[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[17]~53_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(17) & (\range_sensor_map|distan2|Counter_pulse|count[16]~52\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(17) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[16]~52\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[17]~54\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(17) & !\range_sensor_map|distan2|Counter_pulse|count[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(17),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[16]~52\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[17]~53_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[17]~54\);

-- Location: FF_X27_Y1_N13
\range_sensor_map|distan2|Counter_pulse|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[17]~53_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(17));

-- Location: LCCOMB_X27_Y1_N14
\range_sensor_map|distan2|Counter_pulse|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[18]~56_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(18) & (!\range_sensor_map|distan2|Counter_pulse|count[17]~54\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(18) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[17]~54\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[18]~57\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[17]~54\) # (!\range_sensor_map|distan2|Counter_pulse|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[17]~54\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[18]~56_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[18]~57\);

-- Location: FF_X27_Y1_N15
\range_sensor_map|distan2|Counter_pulse|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[18]~56_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(18));

-- Location: LCCOMB_X27_Y1_N16
\range_sensor_map|distan2|Counter_pulse|count[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[19]~58_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(19) & (\range_sensor_map|distan2|Counter_pulse|count[18]~57\ $ (GND))) # (!\range_sensor_map|distan2|Counter_pulse|count\(19) & 
-- (!\range_sensor_map|distan2|Counter_pulse|count[18]~57\ & VCC))
-- \range_sensor_map|distan2|Counter_pulse|count[19]~59\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(19) & !\range_sensor_map|distan2|Counter_pulse|count[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(19),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[18]~57\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[19]~58_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[19]~59\);

-- Location: FF_X27_Y1_N17
\range_sensor_map|distan2|Counter_pulse|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[19]~58_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(19));

-- Location: LCCOMB_X27_Y1_N18
\range_sensor_map|distan2|Counter_pulse|count[20]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[20]~60_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(20) & (!\range_sensor_map|distan2|Counter_pulse|count[19]~59\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(20) & 
-- ((\range_sensor_map|distan2|Counter_pulse|count[19]~59\) # (GND)))
-- \range_sensor_map|distan2|Counter_pulse|count[20]~61\ = CARRY((!\range_sensor_map|distan2|Counter_pulse|count[19]~59\) # (!\range_sensor_map|distan2|Counter_pulse|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan2|Counter_pulse|count[19]~59\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[20]~60_combout\,
	cout => \range_sensor_map|distan2|Counter_pulse|count[20]~61\);

-- Location: FF_X27_Y1_N19
\range_sensor_map|distan2|Counter_pulse|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[20]~60_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(20));

-- Location: LCCOMB_X26_Y2_N10
\range_sensor_map|distan2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~1_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(1) & \range_sensor_map|distan2|Counter_pulse|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(1),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(0),
	datad => VCC,
	cout => \range_sensor_map|distan2|Add0~1_cout\);

-- Location: LCCOMB_X26_Y2_N12
\range_sensor_map|distan2|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~3_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(1) & (!\range_sensor_map|distan2|Counter_pulse|count\(2) & !\range_sensor_map|distan2|Add0~1_cout\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(1) & 
-- ((!\range_sensor_map|distan2|Add0~1_cout\) # (!\range_sensor_map|distan2|Counter_pulse|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(1),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(2),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~1_cout\,
	cout => \range_sensor_map|distan2|Add0~3_cout\);

-- Location: LCCOMB_X26_Y2_N14
\range_sensor_map|distan2|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~5_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(2) & ((\range_sensor_map|distan2|Counter_pulse|count\(3)) # (!\range_sensor_map|distan2|Add0~3_cout\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(2) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(3) & !\range_sensor_map|distan2|Add0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(2),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(3),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~3_cout\,
	cout => \range_sensor_map|distan2|Add0~5_cout\);

-- Location: LCCOMB_X26_Y2_N16
\range_sensor_map|distan2|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~7_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(4) & (!\range_sensor_map|distan2|Counter_pulse|count\(3) & !\range_sensor_map|distan2|Add0~5_cout\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(4) & 
-- ((!\range_sensor_map|distan2|Add0~5_cout\) # (!\range_sensor_map|distan2|Counter_pulse|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(4),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(3),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~5_cout\,
	cout => \range_sensor_map|distan2|Add0~7_cout\);

-- Location: LCCOMB_X26_Y2_N18
\range_sensor_map|distan2|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~9_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(5) & ((\range_sensor_map|distan2|Counter_pulse|count\(4)) # (!\range_sensor_map|distan2|Add0~7_cout\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(5) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(4) & !\range_sensor_map|distan2|Add0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(5),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(4),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~7_cout\,
	cout => \range_sensor_map|distan2|Add0~9_cout\);

-- Location: LCCOMB_X26_Y2_N20
\range_sensor_map|distan2|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~11_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(5) & (!\range_sensor_map|distan2|Counter_pulse|count\(6) & !\range_sensor_map|distan2|Add0~9_cout\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(5) & 
-- ((!\range_sensor_map|distan2|Add0~9_cout\) # (!\range_sensor_map|distan2|Counter_pulse|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(5),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~9_cout\,
	cout => \range_sensor_map|distan2|Add0~11_cout\);

-- Location: LCCOMB_X26_Y2_N22
\range_sensor_map|distan2|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~13_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(7) & ((\range_sensor_map|distan2|Counter_pulse|count\(6)) # (!\range_sensor_map|distan2|Add0~11_cout\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(7) 
-- & (\range_sensor_map|distan2|Counter_pulse|count\(6) & !\range_sensor_map|distan2|Add0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(7),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(6),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~11_cout\,
	cout => \range_sensor_map|distan2|Add0~13_cout\);

-- Location: LCCOMB_X26_Y2_N24
\range_sensor_map|distan2|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~15_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(7) & (!\range_sensor_map|distan2|Counter_pulse|count\(8) & !\range_sensor_map|distan2|Add0~13_cout\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(7) & 
-- ((!\range_sensor_map|distan2|Add0~13_cout\) # (!\range_sensor_map|distan2|Counter_pulse|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(7),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(8),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~13_cout\,
	cout => \range_sensor_map|distan2|Add0~15_cout\);

-- Location: LCCOMB_X26_Y2_N26
\range_sensor_map|distan2|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~17_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(9) & ((\range_sensor_map|distan2|Counter_pulse|count\(8)) # (!\range_sensor_map|distan2|Add0~15_cout\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(9) 
-- & (\range_sensor_map|distan2|Counter_pulse|count\(8) & !\range_sensor_map|distan2|Add0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(9),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(8),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~15_cout\,
	cout => \range_sensor_map|distan2|Add0~17_cout\);

-- Location: LCCOMB_X26_Y2_N28
\range_sensor_map|distan2|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~19_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(10) & (!\range_sensor_map|distan2|Counter_pulse|count\(9) & !\range_sensor_map|distan2|Add0~17_cout\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(10) & 
-- ((!\range_sensor_map|distan2|Add0~17_cout\) # (!\range_sensor_map|distan2|Counter_pulse|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(10),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(9),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~17_cout\,
	cout => \range_sensor_map|distan2|Add0~19_cout\);

-- Location: LCCOMB_X26_Y2_N30
\range_sensor_map|distan2|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~21_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(10) & ((\range_sensor_map|distan2|Counter_pulse|count\(11)) # (!\range_sensor_map|distan2|Add0~19_cout\))) # 
-- (!\range_sensor_map|distan2|Counter_pulse|count\(10) & (\range_sensor_map|distan2|Counter_pulse|count\(11) & !\range_sensor_map|distan2|Add0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(10),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~19_cout\,
	cout => \range_sensor_map|distan2|Add0~21_cout\);

-- Location: LCCOMB_X26_Y1_N0
\range_sensor_map|distan2|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~23_cout\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(12) & (!\range_sensor_map|distan2|Counter_pulse|count\(11) & !\range_sensor_map|distan2|Add0~21_cout\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(12) 
-- & ((!\range_sensor_map|distan2|Add0~21_cout\) # (!\range_sensor_map|distan2|Counter_pulse|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(12),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(11),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~21_cout\,
	cout => \range_sensor_map|distan2|Add0~23_cout\);

-- Location: LCCOMB_X26_Y1_N2
\range_sensor_map|distan2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~24_combout\ = ((\range_sensor_map|distan2|Counter_pulse|count\(12) $ (\range_sensor_map|distan2|Counter_pulse|count\(13) $ (!\range_sensor_map|distan2|Add0~23_cout\)))) # (GND)
-- \range_sensor_map|distan2|Add0~25\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(12) & ((\range_sensor_map|distan2|Counter_pulse|count\(13)) # (!\range_sensor_map|distan2|Add0~23_cout\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(12) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(13) & !\range_sensor_map|distan2|Add0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(12),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~23_cout\,
	combout => \range_sensor_map|distan2|Add0~24_combout\,
	cout => \range_sensor_map|distan2|Add0~25\);

-- Location: LCCOMB_X26_Y1_N4
\range_sensor_map|distan2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~26_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(14) & ((\range_sensor_map|distan2|Counter_pulse|count\(13) & (\range_sensor_map|distan2|Add0~25\ & VCC)) # (!\range_sensor_map|distan2|Counter_pulse|count\(13) & 
-- (!\range_sensor_map|distan2|Add0~25\)))) # (!\range_sensor_map|distan2|Counter_pulse|count\(14) & ((\range_sensor_map|distan2|Counter_pulse|count\(13) & (!\range_sensor_map|distan2|Add0~25\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(13) & 
-- ((\range_sensor_map|distan2|Add0~25\) # (GND)))))
-- \range_sensor_map|distan2|Add0~27\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(14) & (!\range_sensor_map|distan2|Counter_pulse|count\(13) & !\range_sensor_map|distan2|Add0~25\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(14) & 
-- ((!\range_sensor_map|distan2|Add0~25\) # (!\range_sensor_map|distan2|Counter_pulse|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(14),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(13),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~25\,
	combout => \range_sensor_map|distan2|Add0~26_combout\,
	cout => \range_sensor_map|distan2|Add0~27\);

-- Location: LCCOMB_X26_Y1_N6
\range_sensor_map|distan2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~28_combout\ = ((\range_sensor_map|distan2|Counter_pulse|count\(14) $ (\range_sensor_map|distan2|Counter_pulse|count\(15) $ (!\range_sensor_map|distan2|Add0~27\)))) # (GND)
-- \range_sensor_map|distan2|Add0~29\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(14) & ((\range_sensor_map|distan2|Counter_pulse|count\(15)) # (!\range_sensor_map|distan2|Add0~27\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(14) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(15) & !\range_sensor_map|distan2|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(14),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(15),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~27\,
	combout => \range_sensor_map|distan2|Add0~28_combout\,
	cout => \range_sensor_map|distan2|Add0~29\);

-- Location: LCCOMB_X26_Y1_N8
\range_sensor_map|distan2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~30_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(16) & ((\range_sensor_map|distan2|Counter_pulse|count\(15) & (\range_sensor_map|distan2|Add0~29\ & VCC)) # (!\range_sensor_map|distan2|Counter_pulse|count\(15) & 
-- (!\range_sensor_map|distan2|Add0~29\)))) # (!\range_sensor_map|distan2|Counter_pulse|count\(16) & ((\range_sensor_map|distan2|Counter_pulse|count\(15) & (!\range_sensor_map|distan2|Add0~29\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(15) & 
-- ((\range_sensor_map|distan2|Add0~29\) # (GND)))))
-- \range_sensor_map|distan2|Add0~31\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(16) & (!\range_sensor_map|distan2|Counter_pulse|count\(15) & !\range_sensor_map|distan2|Add0~29\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(16) & 
-- ((!\range_sensor_map|distan2|Add0~29\) # (!\range_sensor_map|distan2|Counter_pulse|count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(16),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(15),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~29\,
	combout => \range_sensor_map|distan2|Add0~30_combout\,
	cout => \range_sensor_map|distan2|Add0~31\);

-- Location: LCCOMB_X26_Y1_N10
\range_sensor_map|distan2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~32_combout\ = ((\range_sensor_map|distan2|Counter_pulse|count\(16) $ (\range_sensor_map|distan2|Counter_pulse|count\(17) $ (!\range_sensor_map|distan2|Add0~31\)))) # (GND)
-- \range_sensor_map|distan2|Add0~33\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(16) & ((\range_sensor_map|distan2|Counter_pulse|count\(17)) # (!\range_sensor_map|distan2|Add0~31\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(16) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(17) & !\range_sensor_map|distan2|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(16),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(17),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~31\,
	combout => \range_sensor_map|distan2|Add0~32_combout\,
	cout => \range_sensor_map|distan2|Add0~33\);

-- Location: LCCOMB_X26_Y1_N12
\range_sensor_map|distan2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~34_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(17) & ((\range_sensor_map|distan2|Counter_pulse|count\(18) & (\range_sensor_map|distan2|Add0~33\ & VCC)) # (!\range_sensor_map|distan2|Counter_pulse|count\(18) & 
-- (!\range_sensor_map|distan2|Add0~33\)))) # (!\range_sensor_map|distan2|Counter_pulse|count\(17) & ((\range_sensor_map|distan2|Counter_pulse|count\(18) & (!\range_sensor_map|distan2|Add0~33\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(18) & 
-- ((\range_sensor_map|distan2|Add0~33\) # (GND)))))
-- \range_sensor_map|distan2|Add0~35\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(17) & (!\range_sensor_map|distan2|Counter_pulse|count\(18) & !\range_sensor_map|distan2|Add0~33\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(17) & 
-- ((!\range_sensor_map|distan2|Add0~33\) # (!\range_sensor_map|distan2|Counter_pulse|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(17),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~33\,
	combout => \range_sensor_map|distan2|Add0~34_combout\,
	cout => \range_sensor_map|distan2|Add0~35\);

-- Location: LCCOMB_X26_Y1_N14
\range_sensor_map|distan2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~36_combout\ = ((\range_sensor_map|distan2|Counter_pulse|count\(19) $ (\range_sensor_map|distan2|Counter_pulse|count\(18) $ (!\range_sensor_map|distan2|Add0~35\)))) # (GND)
-- \range_sensor_map|distan2|Add0~37\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(19) & ((\range_sensor_map|distan2|Counter_pulse|count\(18)) # (!\range_sensor_map|distan2|Add0~35\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(19) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(18) & !\range_sensor_map|distan2|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(19),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(18),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~35\,
	combout => \range_sensor_map|distan2|Add0~36_combout\,
	cout => \range_sensor_map|distan2|Add0~37\);

-- Location: LCCOMB_X26_Y1_N16
\range_sensor_map|distan2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~38_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(19) & ((\range_sensor_map|distan2|Counter_pulse|count\(20) & (\range_sensor_map|distan2|Add0~37\ & VCC)) # (!\range_sensor_map|distan2|Counter_pulse|count\(20) & 
-- (!\range_sensor_map|distan2|Add0~37\)))) # (!\range_sensor_map|distan2|Counter_pulse|count\(19) & ((\range_sensor_map|distan2|Counter_pulse|count\(20) & (!\range_sensor_map|distan2|Add0~37\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(20) & 
-- ((\range_sensor_map|distan2|Add0~37\) # (GND)))))
-- \range_sensor_map|distan2|Add0~39\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(19) & (!\range_sensor_map|distan2|Counter_pulse|count\(20) & !\range_sensor_map|distan2|Add0~37\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(19) & 
-- ((!\range_sensor_map|distan2|Add0~37\) # (!\range_sensor_map|distan2|Counter_pulse|count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(19),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~37\,
	combout => \range_sensor_map|distan2|Add0~38_combout\,
	cout => \range_sensor_map|distan2|Add0~39\);

-- Location: LCCOMB_X27_Y1_N20
\range_sensor_map|distan2|Counter_pulse|count[21]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Counter_pulse|count[21]~62_combout\ = \range_sensor_map|distan2|Counter_pulse|count[20]~61\ $ (!\range_sensor_map|distan2|Counter_pulse|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \range_sensor_map|distan2|Counter_pulse|count\(21),
	cin => \range_sensor_map|distan2|Counter_pulse|count[20]~61\,
	combout => \range_sensor_map|distan2|Counter_pulse|count[21]~62_combout\);

-- Location: FF_X27_Y1_N21
\range_sensor_map|distan2|Counter_pulse|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Counter_pulse|count[21]~62_combout\,
	clrn => \range_sensor_map|trig0|ALT_INV_trigger~4_combout\,
	ena => \pulse_pin[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Counter_pulse|count\(21));

-- Location: LCCOMB_X26_Y1_N18
\range_sensor_map|distan2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~40_combout\ = ((\range_sensor_map|distan2|Counter_pulse|count\(21) $ (\range_sensor_map|distan2|Counter_pulse|count\(20) $ (!\range_sensor_map|distan2|Add0~39\)))) # (GND)
-- \range_sensor_map|distan2|Add0~41\ = CARRY((\range_sensor_map|distan2|Counter_pulse|count\(21) & ((\range_sensor_map|distan2|Counter_pulse|count\(20)) # (!\range_sensor_map|distan2|Add0~39\))) # (!\range_sensor_map|distan2|Counter_pulse|count\(21) & 
-- (\range_sensor_map|distan2|Counter_pulse|count\(20) & !\range_sensor_map|distan2|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(21),
	datab => \range_sensor_map|distan2|Counter_pulse|count\(20),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~39\,
	combout => \range_sensor_map|distan2|Add0~40_combout\,
	cout => \range_sensor_map|distan2|Add0~41\);

-- Location: LCCOMB_X26_Y1_N20
\range_sensor_map|distan2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~42_combout\ = (\range_sensor_map|distan2|Counter_pulse|count\(21) & (!\range_sensor_map|distan2|Add0~41\)) # (!\range_sensor_map|distan2|Counter_pulse|count\(21) & ((\range_sensor_map|distan2|Add0~41\) # (GND)))
-- \range_sensor_map|distan2|Add0~43\ = CARRY((!\range_sensor_map|distan2|Add0~41\) # (!\range_sensor_map|distan2|Counter_pulse|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Counter_pulse|count\(21),
	datad => VCC,
	cin => \range_sensor_map|distan2|Add0~41\,
	combout => \range_sensor_map|distan2|Add0~42_combout\,
	cout => \range_sensor_map|distan2|Add0~43\);

-- Location: LCCOMB_X26_Y1_N22
\range_sensor_map|distan2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Add0~44_combout\ = !\range_sensor_map|distan2|Add0~43\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \range_sensor_map|distan2|Add0~43\,
	combout => \range_sensor_map|distan2|Add0~44_combout\);

-- Location: LCCOMB_X25_Y1_N0
\range_sensor_map|distan2|Distance~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~27_combout\ = (\range_sensor_map|distan2|Add0~38_combout\) # ((\range_sensor_map|distan2|Add0~42_combout\) # (\range_sensor_map|distan2|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Add0~38_combout\,
	datac => \range_sensor_map|distan2|Add0~42_combout\,
	datad => \range_sensor_map|distan2|Add0~44_combout\,
	combout => \range_sensor_map|distan2|Distance~27_combout\);

-- Location: FF_X25_Y1_N1
\range_sensor_map|distan2|Distance[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(7));

-- Location: LCCOMB_X25_Y1_N30
\range_sensor_map|distan2|Distance~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~25_combout\ = (\range_sensor_map|distan2|Add0~36_combout\) # ((\range_sensor_map|distan2|Add0~42_combout\) # (\range_sensor_map|distan2|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Add0~36_combout\,
	datac => \range_sensor_map|distan2|Add0~42_combout\,
	datad => \range_sensor_map|distan2|Add0~44_combout\,
	combout => \range_sensor_map|distan2|Distance~25_combout\);

-- Location: FF_X25_Y1_N31
\range_sensor_map|distan2|Distance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(6));

-- Location: LCCOMB_X25_Y1_N4
\range_sensor_map|distan2|Distance~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~26_combout\ = (\range_sensor_map|distan2|Add0~40_combout\) # ((\range_sensor_map|distan2|Add0~42_combout\) # (\range_sensor_map|distan2|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Add0~40_combout\,
	datac => \range_sensor_map|distan2|Add0~42_combout\,
	datad => \range_sensor_map|distan2|Add0~44_combout\,
	combout => \range_sensor_map|distan2|Distance~26_combout\);

-- Location: FF_X25_Y1_N5
\range_sensor_map|distan2|Distance[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(8));

-- Location: LCCOMB_X25_Y1_N12
\range_sensor_map|distan2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|LessThan0~2_combout\ = (\range_sensor_map|distan2|Add0~40_combout\ & (\range_sensor_map|distan2|Add0~36_combout\ & \range_sensor_map|distan2|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Add0~40_combout\,
	datac => \range_sensor_map|distan2|Add0~36_combout\,
	datad => \range_sensor_map|distan2|Add0~38_combout\,
	combout => \range_sensor_map|distan2|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y1_N16
\range_sensor_map|distan2|Distance~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~17_combout\ = (\range_sensor_map|distan2|Add0~34_combout\) # (\range_sensor_map|distan2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan2|Add0~34_combout\,
	datad => \range_sensor_map|distan2|Add0~42_combout\,
	combout => \range_sensor_map|distan2|Distance~17_combout\);

-- Location: LCCOMB_X26_Y1_N30
\range_sensor_map|distan2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|LessThan0~0_combout\ = (\range_sensor_map|distan2|Add0~28_combout\) # ((\range_sensor_map|distan2|Add0~26_combout\ & \range_sensor_map|distan2|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Add0~28_combout\,
	datac => \range_sensor_map|distan2|Add0~26_combout\,
	datad => \range_sensor_map|distan2|Add0~24_combout\,
	combout => \range_sensor_map|distan2|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y1_N28
\range_sensor_map|distan2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|LessThan0~1_combout\ = (\range_sensor_map|distan2|Add0~32_combout\) # ((\range_sensor_map|distan2|Add0~34_combout\) # ((\range_sensor_map|distan2|Add0~30_combout\ & \range_sensor_map|distan2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Add0~32_combout\,
	datab => \range_sensor_map|distan2|Add0~30_combout\,
	datac => \range_sensor_map|distan2|LessThan0~0_combout\,
	datad => \range_sensor_map|distan2|Add0~34_combout\,
	combout => \range_sensor_map|distan2|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y1_N6
\range_sensor_map|distan2|Distance~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~18_combout\ = (\range_sensor_map|distan2|Distance~17_combout\) # ((\range_sensor_map|distan2|Add0~44_combout\) # ((\range_sensor_map|distan2|LessThan0~2_combout\ & \range_sensor_map|distan2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|LessThan0~2_combout\,
	datab => \range_sensor_map|distan2|Distance~17_combout\,
	datac => \range_sensor_map|distan2|Add0~44_combout\,
	datad => \range_sensor_map|distan2|LessThan0~1_combout\,
	combout => \range_sensor_map|distan2|Distance~18_combout\);

-- Location: FF_X25_Y1_N7
\range_sensor_map|distan2|Distance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(5));

-- Location: LCCOMB_X62_Y35_N14
\vga_inst|LessThan14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan14~2_combout\ = (\range_sensor_map|distan2|Distance\(7) & ((\range_sensor_map|distan2|Distance\(6) & ((\range_sensor_map|distan2|Distance\(5)) # (!\range_sensor_map|distan2|Distance\(8)))) # (!\range_sensor_map|distan2|Distance\(6) & 
-- (!\range_sensor_map|distan2|Distance\(8) & \range_sensor_map|distan2|Distance\(5))))) # (!\range_sensor_map|distan2|Distance\(7) & (!\range_sensor_map|distan2|Distance\(6) & (\range_sensor_map|distan2|Distance\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(7),
	datab => \range_sensor_map|distan2|Distance\(6),
	datac => \range_sensor_map|distan2|Distance\(8),
	datad => \range_sensor_map|distan2|Distance\(5),
	combout => \vga_inst|LessThan14~2_combout\);

-- Location: LCCOMB_X62_Y35_N12
\range_sensor_map|BCD_conv2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan0~0_combout\ = ((!\range_sensor_map|distan2|Distance\(7) & !\range_sensor_map|distan2|Distance\(6))) # (!\range_sensor_map|distan2|Distance\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(7),
	datac => \range_sensor_map|distan2|Distance\(8),
	datad => \range_sensor_map|distan2|Distance\(6),
	combout => \range_sensor_map|BCD_conv2|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y1_N26
\range_sensor_map|distan2|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|LessThan0~3_combout\ = (\range_sensor_map|distan2|Add0~44_combout\) # (\range_sensor_map|distan2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \range_sensor_map|distan2|Add0~44_combout\,
	datad => \range_sensor_map|distan2|Add0~42_combout\,
	combout => \range_sensor_map|distan2|LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y1_N24
\range_sensor_map|distan2|Distance~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~20_combout\ = (\range_sensor_map|distan2|LessThan0~3_combout\) # ((\range_sensor_map|distan2|Add0~30_combout\) # ((\range_sensor_map|distan2|LessThan0~1_combout\ & \range_sensor_map|distan2|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|LessThan0~3_combout\,
	datab => \range_sensor_map|distan2|LessThan0~1_combout\,
	datac => \range_sensor_map|distan2|Add0~30_combout\,
	datad => \range_sensor_map|distan2|LessThan0~2_combout\,
	combout => \range_sensor_map|distan2|Distance~20_combout\);

-- Location: FF_X26_Y1_N25
\range_sensor_map|distan2|Distance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(3));

-- Location: LCCOMB_X62_Y35_N2
\range_sensor_map|BCD_conv2|bcd~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~1_combout\ = (\range_sensor_map|distan2|Distance\(7) & (!\range_sensor_map|distan2|Distance\(5) & (\range_sensor_map|distan2|Distance\(6) $ (!\range_sensor_map|distan2|Distance\(8))))) # 
-- (!\range_sensor_map|distan2|Distance\(7) & (!\range_sensor_map|distan2|Distance\(6) & (\range_sensor_map|distan2|Distance\(8) & \range_sensor_map|distan2|Distance\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(7),
	datab => \range_sensor_map|distan2|Distance\(6),
	datac => \range_sensor_map|distan2|Distance\(8),
	datad => \range_sensor_map|distan2|Distance\(5),
	combout => \range_sensor_map|BCD_conv2|bcd~1_combout\);

-- Location: LCCOMB_X62_Y35_N24
\range_sensor_map|BCD_conv2|bcd~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~2_combout\ = (\range_sensor_map|distan2|Distance\(6) & (!\range_sensor_map|distan2|Distance\(8) & ((\range_sensor_map|distan2|Distance\(5)) # (!\range_sensor_map|distan2|Distance\(7))))) # 
-- (!\range_sensor_map|distan2|Distance\(6) & (\range_sensor_map|distan2|Distance\(8) & ((\range_sensor_map|distan2|Distance\(7)) # (!\range_sensor_map|distan2|Distance\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(7),
	datab => \range_sensor_map|distan2|Distance\(6),
	datac => \range_sensor_map|distan2|Distance\(8),
	datad => \range_sensor_map|distan2|Distance\(5),
	combout => \range_sensor_map|BCD_conv2|bcd~2_combout\);

-- Location: LCCOMB_X25_Y1_N26
\range_sensor_map|distan2|Distance~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~19_combout\ = (\range_sensor_map|distan2|LessThan0~3_combout\) # ((\range_sensor_map|distan2|Add0~32_combout\) # ((\range_sensor_map|distan2|LessThan0~2_combout\ & \range_sensor_map|distan2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|LessThan0~2_combout\,
	datab => \range_sensor_map|distan2|LessThan0~3_combout\,
	datac => \range_sensor_map|distan2|Add0~32_combout\,
	datad => \range_sensor_map|distan2|LessThan0~1_combout\,
	combout => \range_sensor_map|distan2|Distance~19_combout\);

-- Location: FF_X25_Y1_N27
\range_sensor_map|distan2|Distance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(4));

-- Location: LCCOMB_X62_Y35_N8
\range_sensor_map|BCD_conv2|bcd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~0_combout\ = (\range_sensor_map|distan2|Distance\(7) & ((\range_sensor_map|distan2|Distance\(6) & (!\range_sensor_map|distan2|Distance\(8) & !\range_sensor_map|distan2|Distance\(5))) # 
-- (!\range_sensor_map|distan2|Distance\(6) & (\range_sensor_map|distan2|Distance\(8) & \range_sensor_map|distan2|Distance\(5))))) # (!\range_sensor_map|distan2|Distance\(7) & (\range_sensor_map|distan2|Distance\(5) $ 
-- (((!\range_sensor_map|distan2|Distance\(6) & \range_sensor_map|distan2|Distance\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(7),
	datab => \range_sensor_map|distan2|Distance\(6),
	datac => \range_sensor_map|distan2|Distance\(8),
	datad => \range_sensor_map|distan2|Distance\(5),
	combout => \range_sensor_map|BCD_conv2|bcd~0_combout\);

-- Location: LCCOMB_X63_Y33_N14
\range_sensor_map|BCD_conv2|bcd~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~4_combout\ = (\range_sensor_map|BCD_conv2|bcd~2_combout\ & (((!\range_sensor_map|distan2|Distance\(4) & !\range_sensor_map|BCD_conv2|bcd~0_combout\)))) # (!\range_sensor_map|BCD_conv2|bcd~2_combout\ & 
-- (\range_sensor_map|BCD_conv2|bcd~1_combout\ & ((\range_sensor_map|distan2|Distance\(4)) # (\range_sensor_map|BCD_conv2|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|bcd~1_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~2_combout\,
	datac => \range_sensor_map|distan2|Distance\(4),
	datad => \range_sensor_map|BCD_conv2|bcd~0_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~4_combout\);

-- Location: LCCOMB_X63_Y33_N4
\range_sensor_map|BCD_conv2|bcd~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~5_combout\ = (\range_sensor_map|BCD_conv2|bcd~1_combout\ & ((\range_sensor_map|distan2|Distance\(4) $ (!\range_sensor_map|BCD_conv2|bcd~0_combout\)))) # (!\range_sensor_map|BCD_conv2|bcd~1_combout\ & 
-- (\range_sensor_map|BCD_conv2|bcd~0_combout\ & ((\range_sensor_map|distan2|Distance\(4)) # (!\range_sensor_map|BCD_conv2|bcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|bcd~1_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~2_combout\,
	datac => \range_sensor_map|distan2|Distance\(4),
	datad => \range_sensor_map|BCD_conv2|bcd~0_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~5_combout\);

-- Location: LCCOMB_X63_Y33_N12
\range_sensor_map|BCD_conv2|bcd~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~3_combout\ = (\range_sensor_map|BCD_conv2|bcd~1_combout\ & (((!\range_sensor_map|distan2|Distance\(4))))) # (!\range_sensor_map|BCD_conv2|bcd~1_combout\ & ((\range_sensor_map|BCD_conv2|bcd~2_combout\ & 
-- (!\range_sensor_map|distan2|Distance\(4) & \range_sensor_map|BCD_conv2|bcd~0_combout\)) # (!\range_sensor_map|BCD_conv2|bcd~2_combout\ & (\range_sensor_map|distan2|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|bcd~1_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~2_combout\,
	datac => \range_sensor_map|distan2|Distance\(4),
	datad => \range_sensor_map|BCD_conv2|bcd~0_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~3_combout\);

-- Location: LCCOMB_X63_Y33_N18
\range_sensor_map|BCD_conv2|bcd~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~10_combout\ = \range_sensor_map|BCD_conv2|bcd~4_combout\ $ ((((!\range_sensor_map|distan2|Distance\(3) & !\range_sensor_map|BCD_conv2|bcd~3_combout\)) # (!\range_sensor_map|BCD_conv2|bcd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \range_sensor_map|BCD_conv2|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~5_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~3_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~10_combout\);

-- Location: LCCOMB_X63_Y33_N0
\range_sensor_map|BCD_conv2|bcd~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~8_combout\ = \range_sensor_map|BCD_conv2|bcd~1_combout\ $ (((\range_sensor_map|BCD_conv2|bcd~2_combout\ & ((\range_sensor_map|distan2|Distance\(4)) # (\range_sensor_map|BCD_conv2|bcd~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|bcd~1_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~2_combout\,
	datac => \range_sensor_map|distan2|Distance\(4),
	datad => \range_sensor_map|BCD_conv2|bcd~0_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~8_combout\);

-- Location: LCCOMB_X62_Y35_N30
\range_sensor_map|BCD_conv2|bcd~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~9_combout\ = (\range_sensor_map|distan2|Distance\(7) & (\range_sensor_map|distan2|Distance\(6) & (\range_sensor_map|distan2|Distance\(8) & \range_sensor_map|distan2|Distance\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(7),
	datab => \range_sensor_map|distan2|Distance\(6),
	datac => \range_sensor_map|distan2|Distance\(8),
	datad => \range_sensor_map|distan2|Distance\(5),
	combout => \range_sensor_map|BCD_conv2|bcd~9_combout\);

-- Location: LCCOMB_X63_Y35_N18
\range_sensor_map|BCD_conv2|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan6~0_combout\ = ((\range_sensor_map|BCD_conv2|bcd~9_combout\) # ((\range_sensor_map|BCD_conv2|LessThan0~0_combout\ & \range_sensor_map|BCD_conv2|bcd~8_combout\))) # (!\range_sensor_map|BCD_conv2|bcd~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan0~0_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~10_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~8_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~9_combout\,
	combout => \range_sensor_map|BCD_conv2|LessThan6~0_combout\);

-- Location: LCCOMB_X63_Y35_N6
\range_sensor_map|BCD_conv2|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan6~1_combout\ = (\vga_inst|LessThan14~2_combout\ & (\range_sensor_map|BCD_conv2|LessThan6~0_combout\ & ((\range_sensor_map|BCD_conv2|bcd~8_combout\) # (\range_sensor_map|BCD_conv2|LessThan0~0_combout\)))) # 
-- (!\vga_inst|LessThan14~2_combout\ & (((!\range_sensor_map|BCD_conv2|bcd~8_combout\ & !\range_sensor_map|BCD_conv2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan14~2_combout\,
	datab => \range_sensor_map|BCD_conv2|LessThan6~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~8_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv2|LessThan6~1_combout\);

-- Location: LCCOMB_X25_Y1_N18
\range_sensor_map|distan2|Distance~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~15_combout\ = (\range_sensor_map|distan2|Add0~28_combout\) # (\range_sensor_map|distan2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Add0~28_combout\,
	datac => \range_sensor_map|distan2|Add0~42_combout\,
	combout => \range_sensor_map|distan2|Distance~15_combout\);

-- Location: LCCOMB_X25_Y1_N28
\range_sensor_map|distan2|Distance~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~16_combout\ = (\range_sensor_map|distan2|Distance~15_combout\) # ((\range_sensor_map|distan2|Add0~44_combout\) # ((\range_sensor_map|distan2|LessThan0~2_combout\ & \range_sensor_map|distan2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|LessThan0~2_combout\,
	datab => \range_sensor_map|distan2|Distance~15_combout\,
	datac => \range_sensor_map|distan2|Add0~44_combout\,
	datad => \range_sensor_map|distan2|LessThan0~1_combout\,
	combout => \range_sensor_map|distan2|Distance~16_combout\);

-- Location: FF_X25_Y1_N29
\range_sensor_map|distan2|Distance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(2));

-- Location: LCCOMB_X63_Y33_N30
\range_sensor_map|BCD_conv2|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan3~0_combout\ = (\range_sensor_map|BCD_conv2|bcd~4_combout\) # ((\range_sensor_map|BCD_conv2|bcd~5_combout\ & ((\range_sensor_map|distan2|Distance\(3)) # (\range_sensor_map|BCD_conv2|bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \range_sensor_map|BCD_conv2|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~5_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~3_combout\,
	combout => \range_sensor_map|BCD_conv2|LessThan3~0_combout\);

-- Location: LCCOMB_X63_Y33_N28
\range_sensor_map|BCD_conv2|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan5~0_combout\ = (\range_sensor_map|distan2|Distance\(3) & (\range_sensor_map|BCD_conv2|bcd~3_combout\ & ((\range_sensor_map|distan2|Distance\(2)) # (!\range_sensor_map|BCD_conv2|LessThan3~0_combout\)))) # 
-- (!\range_sensor_map|distan2|Distance\(3) & ((\range_sensor_map|BCD_conv2|LessThan3~0_combout\ & ((!\range_sensor_map|BCD_conv2|bcd~3_combout\))) # (!\range_sensor_map|BCD_conv2|LessThan3~0_combout\ & (\range_sensor_map|distan2|Distance\(2) & 
-- \range_sensor_map|BCD_conv2|bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \range_sensor_map|distan2|Distance\(2),
	datac => \range_sensor_map|BCD_conv2|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~3_combout\,
	combout => \range_sensor_map|BCD_conv2|LessThan5~0_combout\);

-- Location: LCCOMB_X63_Y33_N2
\range_sensor_map|BCD_conv2|bcd~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~6_combout\ = (\range_sensor_map|BCD_conv2|bcd~5_combout\ & (!\range_sensor_map|distan2|Distance\(3) & ((!\range_sensor_map|BCD_conv2|bcd~3_combout\)))) # (!\range_sensor_map|BCD_conv2|bcd~5_combout\ & 
-- (\range_sensor_map|BCD_conv2|bcd~4_combout\ & ((\range_sensor_map|distan2|Distance\(3)) # (\range_sensor_map|BCD_conv2|bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \range_sensor_map|BCD_conv2|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~5_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~3_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~6_combout\);

-- Location: LCCOMB_X63_Y35_N20
\range_sensor_map|BCD_conv2|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan8~0_combout\ = (\range_sensor_map|BCD_conv2|LessThan5~0_combout\ & ((\range_sensor_map|BCD_conv2|bcd~10_combout\ $ (!\range_sensor_map|BCD_conv2|LessThan6~1_combout\)) # (!\range_sensor_map|BCD_conv2|bcd~6_combout\))) # 
-- (!\range_sensor_map|BCD_conv2|LessThan5~0_combout\ & ((\range_sensor_map|BCD_conv2|bcd~6_combout\) # (\range_sensor_map|BCD_conv2|bcd~10_combout\ $ (!\range_sensor_map|BCD_conv2|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan5~0_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~6_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~10_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan6~1_combout\,
	combout => \range_sensor_map|BCD_conv2|LessThan8~0_combout\);

-- Location: LCCOMB_X63_Y35_N10
\range_sensor_map|BCD_conv2|bcd~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~12_combout\ = (\range_sensor_map|BCD_conv2|bcd~9_combout\) # ((\range_sensor_map|BCD_conv2|LessThan0~0_combout\ & \range_sensor_map|BCD_conv2|bcd~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan0~0_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~9_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~8_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~12_combout\);

-- Location: LCCOMB_X63_Y35_N24
\range_sensor_map|BCD_conv2|bcd~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~13_combout\ = \range_sensor_map|BCD_conv2|bcd~12_combout\ $ (((\range_sensor_map|BCD_conv2|bcd~10_combout\ & \range_sensor_map|BCD_conv2|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|bcd~12_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~10_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan6~1_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~13_combout\);

-- Location: LCCOMB_X63_Y35_N0
\range_sensor_map|BCD_conv2|bcd~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~11_combout\ = (\vga_inst|LessThan14~2_combout\ & (!\range_sensor_map|BCD_conv2|LessThan6~0_combout\ & ((\range_sensor_map|BCD_conv2|bcd~8_combout\) # (\range_sensor_map|BCD_conv2|LessThan0~0_combout\)))) # 
-- (!\vga_inst|LessThan14~2_combout\ & (\range_sensor_map|BCD_conv2|LessThan6~0_combout\ & (!\range_sensor_map|BCD_conv2|bcd~8_combout\ & !\range_sensor_map|BCD_conv2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan14~2_combout\,
	datab => \range_sensor_map|BCD_conv2|LessThan6~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~8_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan0~0_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~11_combout\);

-- Location: LCCOMB_X63_Y35_N30
\vga_inst|LessThan14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan14~3_combout\ = (!\range_sensor_map|BCD_conv2|LessThan6~1_combout\ & ((\range_sensor_map|BCD_conv2|bcd~13_combout\ & (\range_sensor_map|BCD_conv2|LessThan8~0_combout\ & \range_sensor_map|BCD_conv2|bcd~11_combout\)) # 
-- (!\range_sensor_map|BCD_conv2|bcd~13_combout\ & ((!\range_sensor_map|BCD_conv2|bcd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv2|LessThan8~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~13_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~11_combout\,
	combout => \vga_inst|LessThan14~3_combout\);

-- Location: LCCOMB_X63_Y35_N8
\range_sensor_map|BCD_conv2|bcd~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~7_combout\ = \range_sensor_map|BCD_conv2|LessThan5~0_combout\ $ (!\range_sensor_map|BCD_conv2|bcd~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan5~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~6_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~7_combout\);

-- Location: LCCOMB_X63_Y35_N2
\range_sensor_map|BCD_conv2|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan8~1_combout\ = (\range_sensor_map|BCD_conv2|bcd~11_combout\) # ((\range_sensor_map|BCD_conv2|LessThan8~0_combout\ & \range_sensor_map|BCD_conv2|bcd~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv2|LessThan8~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~13_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~11_combout\,
	combout => \range_sensor_map|BCD_conv2|LessThan8~1_combout\);

-- Location: LCCOMB_X63_Y35_N16
\range_sensor_map|BCD_conv2|dist[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|dist[6]~0_combout\ = \range_sensor_map|BCD_conv2|LessThan6~1_combout\ $ (\range_sensor_map|BCD_conv2|bcd~10_combout\ $ (((\range_sensor_map|BCD_conv2|bcd~7_combout\ & \range_sensor_map|BCD_conv2|LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan6~1_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~10_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~7_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan8~1_combout\,
	combout => \range_sensor_map|BCD_conv2|dist[6]~0_combout\);

-- Location: LCCOMB_X63_Y35_N4
\vga_inst|LessThan14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan14~4_combout\ = (!\range_sensor_map|BCD_conv2|LessThan0~0_combout\ & ((\range_sensor_map|BCD_conv2|bcd~8_combout\) # (\vga_inst|LessThan14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan0~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~8_combout\,
	datad => \vga_inst|LessThan14~2_combout\,
	combout => \vga_inst|LessThan14~4_combout\);

-- Location: LCCOMB_X63_Y33_N10
\range_sensor_map|BCD_conv2|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|Add5~0_combout\ = \range_sensor_map|BCD_conv2|bcd~3_combout\ $ (((\range_sensor_map|distan2|Distance\(3) & ((\range_sensor_map|distan2|Distance\(2)) # (!\range_sensor_map|BCD_conv2|LessThan3~0_combout\))) # 
-- (!\range_sensor_map|distan2|Distance\(3) & (\range_sensor_map|distan2|Distance\(2) & !\range_sensor_map|BCD_conv2|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \range_sensor_map|distan2|Distance\(2),
	datac => \range_sensor_map|BCD_conv2|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~3_combout\,
	combout => \range_sensor_map|BCD_conv2|Add5~0_combout\);

-- Location: LCCOMB_X63_Y33_N8
\range_sensor_map|BCD_conv2|bcd~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~15_combout\ = (\range_sensor_map|distan2|Distance\(3) & (((\range_sensor_map|BCD_conv2|bcd~3_combout\)))) # (!\range_sensor_map|distan2|Distance\(3) & ((\range_sensor_map|BCD_conv2|bcd~4_combout\ & 
-- ((!\range_sensor_map|BCD_conv2|bcd~3_combout\))) # (!\range_sensor_map|BCD_conv2|bcd~4_combout\ & (!\range_sensor_map|BCD_conv2|bcd~5_combout\ & \range_sensor_map|BCD_conv2|bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \range_sensor_map|BCD_conv2|bcd~4_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~5_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~3_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~15_combout\);

-- Location: LCCOMB_X63_Y33_N6
\range_sensor_map|BCD_conv2|bcd~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~16_combout\ = (\range_sensor_map|BCD_conv2|LessThan5~0_combout\ & (\range_sensor_map|BCD_conv2|Add5~0_combout\)) # (!\range_sensor_map|BCD_conv2|LessThan5~0_combout\ & ((\range_sensor_map|BCD_conv2|bcd~6_combout\ & 
-- (\range_sensor_map|BCD_conv2|Add5~0_combout\)) # (!\range_sensor_map|BCD_conv2|bcd~6_combout\ & ((\range_sensor_map|BCD_conv2|bcd~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|Add5~0_combout\,
	datab => \range_sensor_map|BCD_conv2|LessThan5~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~15_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~6_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~16_combout\);

-- Location: LCCOMB_X25_Y1_N24
\range_sensor_map|distan2|Distance~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~23_combout\ = (\range_sensor_map|distan2|Add0~26_combout\) # (\range_sensor_map|distan2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Add0~26_combout\,
	datac => \range_sensor_map|distan2|Add0~42_combout\,
	combout => \range_sensor_map|distan2|Distance~23_combout\);

-- Location: LCCOMB_X25_Y1_N2
\range_sensor_map|distan2|Distance~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~24_combout\ = (\range_sensor_map|distan2|Distance~23_combout\) # ((\range_sensor_map|distan2|Add0~44_combout\) # ((\range_sensor_map|distan2|LessThan0~2_combout\ & \range_sensor_map|distan2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|LessThan0~2_combout\,
	datab => \range_sensor_map|distan2|Distance~23_combout\,
	datac => \range_sensor_map|distan2|Add0~44_combout\,
	datad => \range_sensor_map|distan2|LessThan0~1_combout\,
	combout => \range_sensor_map|distan2|Distance~24_combout\);

-- Location: FF_X25_Y1_N3
\range_sensor_map|distan2|Distance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(1));

-- Location: LCCOMB_X63_Y33_N20
\range_sensor_map|BCD_conv2|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|LessThan5~1_combout\ = (\range_sensor_map|BCD_conv2|LessThan5~0_combout\) # (\range_sensor_map|BCD_conv2|bcd~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv2|LessThan5~0_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~6_combout\,
	combout => \range_sensor_map|BCD_conv2|LessThan5~1_combout\);

-- Location: LCCOMB_X63_Y33_N22
\range_sensor_map|BCD_conv2|bcd~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~17_combout\ = \range_sensor_map|distan2|Distance\(3) $ (\range_sensor_map|BCD_conv2|LessThan3~0_combout\ $ (((!\range_sensor_map|distan2|Distance\(2) & \range_sensor_map|BCD_conv2|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \range_sensor_map|distan2|Distance\(2),
	datac => \range_sensor_map|BCD_conv2|LessThan3~0_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan5~1_combout\,
	combout => \range_sensor_map|BCD_conv2|bcd~17_combout\);

-- Location: LCCOMB_X63_Y33_N16
\range_sensor_map|BCD_conv2|bcd~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|BCD_conv2|bcd~14_combout\ = \range_sensor_map|distan2|Distance\(2) $ (((\range_sensor_map|BCD_conv2|LessThan5~0_combout\) # (\range_sensor_map|BCD_conv2|bcd~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|BCD_conv2|LessThan5~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~6_combout\,
	datad => \range_sensor_map|distan2|Distance\(2),
	combout => \range_sensor_map|BCD_conv2|bcd~14_combout\);

-- Location: LCCOMB_X63_Y33_N26
\vga_inst|LessThan13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan13~3_combout\ = \range_sensor_map|BCD_conv2|bcd~16_combout\ $ (((\range_sensor_map|BCD_conv2|bcd~17_combout\ & ((\range_sensor_map|distan2|Distance\(1)) # (\range_sensor_map|BCD_conv2|bcd~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|bcd~16_combout\,
	datab => \range_sensor_map|distan2|Distance\(1),
	datac => \range_sensor_map|BCD_conv2|bcd~17_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~14_combout\,
	combout => \vga_inst|LessThan13~3_combout\);

-- Location: LCCOMB_X63_Y35_N28
\vga_inst|LessThan14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan14~6_combout\ = (!\vga_inst|LessThan13~3_combout\ & (\range_sensor_map|BCD_conv2|LessThan5~0_combout\ $ (\range_sensor_map|BCD_conv2|bcd~6_combout\ $ (!\range_sensor_map|BCD_conv2|LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|LessThan5~0_combout\,
	datab => \range_sensor_map|BCD_conv2|bcd~6_combout\,
	datac => \vga_inst|LessThan13~3_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan8~1_combout\,
	combout => \vga_inst|LessThan14~6_combout\);

-- Location: LCCOMB_X63_Y35_N14
\vga_inst|LessThan14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan14~5_combout\ = ((\vga_inst|LessThan14~4_combout\) # ((!\range_sensor_map|BCD_conv2|dist[6]~0_combout\ & !\vga_inst|LessThan14~6_combout\))) # (!\vga_inst|LessThan14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan14~3_combout\,
	datab => \range_sensor_map|BCD_conv2|dist[6]~0_combout\,
	datac => \vga_inst|LessThan14~4_combout\,
	datad => \vga_inst|LessThan14~6_combout\,
	combout => \vga_inst|LessThan14~5_combout\);

-- Location: LCCOMB_X25_Y1_N14
\range_sensor_map|distan2|Distance~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~21_combout\ = (\range_sensor_map|distan2|Add0~24_combout\) # (\range_sensor_map|distan2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Add0~24_combout\,
	datac => \range_sensor_map|distan2|Add0~42_combout\,
	combout => \range_sensor_map|distan2|Distance~21_combout\);

-- Location: LCCOMB_X25_Y1_N8
\range_sensor_map|distan2|Distance~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \range_sensor_map|distan2|Distance~22_combout\ = (\range_sensor_map|distan2|Distance~21_combout\) # ((\range_sensor_map|distan2|Add0~44_combout\) # ((\range_sensor_map|distan2|LessThan0~2_combout\ & \range_sensor_map|distan2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|LessThan0~2_combout\,
	datab => \range_sensor_map|distan2|Distance~21_combout\,
	datac => \range_sensor_map|distan2|Add0~44_combout\,
	datad => \range_sensor_map|distan2|LessThan0~1_combout\,
	combout => \range_sensor_map|distan2|Distance~22_combout\);

-- Location: FF_X25_Y1_N9
\range_sensor_map|distan2|Distance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse_pin[2]~inputclkctrl_outclk\,
	d => \range_sensor_map|distan2|Distance~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \range_sensor_map|distan2|Distance\(0));

-- Location: LCCOMB_X25_Y1_N20
\vga_inst|LessThan12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan12~6_combout\ = ((!\range_sensor_map|distan2|Distance\(0) & !\range_sensor_map|distan2|Distance\(1))) # (!\range_sensor_map|distan2|Distance\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(0),
	datab => \range_sensor_map|distan2|Distance\(2),
	datad => \range_sensor_map|distan2|Distance\(1),
	combout => \vga_inst|LessThan12~6_combout\);

-- Location: LCCOMB_X25_Y1_N22
\vga_inst|LessThan12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan12~3_combout\ = ((!\range_sensor_map|distan2|Distance\(3) & (\vga_inst|LessThan12~6_combout\ & !\range_sensor_map|distan2|Distance\(4)))) # (!\range_sensor_map|distan2|Distance\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(3),
	datab => \vga_inst|LessThan12~6_combout\,
	datac => \range_sensor_map|distan2|Distance\(4),
	datad => \range_sensor_map|distan2|Distance\(5),
	combout => \vga_inst|LessThan12~3_combout\);

-- Location: LCCOMB_X62_Y35_N4
\vga_inst|LessThan12~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan12~19_combout\ = (!\range_sensor_map|distan2|Distance\(8) & (!\range_sensor_map|distan2|Distance\(7) & ((\vga_inst|LessThan12~3_combout\) # (!\range_sensor_map|distan2|Distance\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|distan2|Distance\(8),
	datab => \range_sensor_map|distan2|Distance\(6),
	datac => \range_sensor_map|distan2|Distance\(7),
	datad => \vga_inst|LessThan12~3_combout\,
	combout => \vga_inst|LessThan12~19_combout\);

-- Location: LCCOMB_X63_Y33_N24
\vga_inst|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan13~1_combout\ = (\range_sensor_map|BCD_conv2|bcd~14_combout\) # ((\range_sensor_map|distan2|Distance\(1) & ((!\range_sensor_map|BCD_conv2|bcd~17_combout\))) # (!\range_sensor_map|distan2|Distance\(1) & 
-- ((\range_sensor_map|BCD_conv2|bcd~16_combout\) # (\range_sensor_map|BCD_conv2|bcd~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \range_sensor_map|BCD_conv2|bcd~16_combout\,
	datab => \range_sensor_map|distan2|Distance\(1),
	datac => \range_sensor_map|BCD_conv2|bcd~17_combout\,
	datad => \range_sensor_map|BCD_conv2|bcd~14_combout\,
	combout => \vga_inst|LessThan13~1_combout\);

-- Location: LCCOMB_X62_Y33_N24
\vga_inst|LessThan13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan13~2_combout\ = (\range_sensor_map|distan2|Distance\(0)) # (\vga_inst|LessThan13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \range_sensor_map|distan2|Distance\(0),
	datad => \vga_inst|LessThan13~1_combout\,
	combout => \vga_inst|LessThan13~2_combout\);

-- Location: LCCOMB_X63_Y35_N12
\vga_inst|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan13~0_combout\ = ((!\range_sensor_map|BCD_conv2|dist[6]~0_combout\ & (\range_sensor_map|BCD_conv2|bcd~7_combout\ $ (!\range_sensor_map|BCD_conv2|LessThan8~1_combout\)))) # (!\vga_inst|LessThan14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan14~3_combout\,
	datab => \range_sensor_map|BCD_conv2|dist[6]~0_combout\,
	datac => \range_sensor_map|BCD_conv2|bcd~7_combout\,
	datad => \range_sensor_map|BCD_conv2|LessThan8~1_combout\,
	combout => \vga_inst|LessThan13~0_combout\);

-- Location: LCCOMB_X63_Y35_N26
\vga_inst|LessThan13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|LessThan13~4_combout\ = (\vga_inst|LessThan13~0_combout\) # ((\vga_inst|LessThan13~2_combout\ & (!\range_sensor_map|BCD_conv2|dist[6]~0_combout\ & \vga_inst|LessThan13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan13~2_combout\,
	datab => \range_sensor_map|BCD_conv2|dist[6]~0_combout\,
	datac => \vga_inst|LessThan13~3_combout\,
	datad => \vga_inst|LessThan13~0_combout\,
	combout => \vga_inst|LessThan13~4_combout\);

-- Location: LCCOMB_X62_Y35_N20
\vga_inst|HEX0[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|HEX0[4]~0_combout\ = (\vga_inst|LessThan14~5_combout\) # ((\vga_inst|LessThan13~4_combout\) # (!\vga_inst|LessThan12~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|LessThan14~5_combout\,
	datac => \vga_inst|LessThan12~19_combout\,
	datad => \vga_inst|LessThan13~4_combout\,
	combout => \vga_inst|HEX0[4]~0_combout\);

-- Location: LCCOMB_X62_Y35_N22
\vga_inst|HEX1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|HEX1[0]~0_combout\ = ((!\vga_inst|LessThan14~4_combout\ & (\vga_inst|LessThan14~5_combout\ & !\vga_inst|LessThan13~4_combout\))) # (!\vga_inst|LessThan12~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan14~4_combout\,
	datab => \vga_inst|LessThan14~5_combout\,
	datac => \vga_inst|LessThan12~19_combout\,
	datad => \vga_inst|LessThan13~4_combout\,
	combout => \vga_inst|HEX1[0]~0_combout\);

-- Location: LCCOMB_X62_Y35_N16
\vga_inst|HEX3[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|HEX3[3]~0_combout\ = ((!\vga_inst|LessThan14~4_combout\ & !\vga_inst|LessThan13~4_combout\)) # (!\vga_inst|LessThan12~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan14~4_combout\,
	datac => \vga_inst|LessThan12~19_combout\,
	datad => \vga_inst|LessThan13~4_combout\,
	combout => \vga_inst|HEX3[3]~0_combout\);

-- Location: LCCOMB_X62_Y35_N26
\vga_inst|HEX3[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|HEX3[4]~1_combout\ = (\vga_inst|LessThan14~5_combout\ & (\vga_inst|LessThan12~19_combout\ & !\vga_inst|LessThan13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_inst|LessThan14~5_combout\,
	datac => \vga_inst|LessThan12~19_combout\,
	datad => \vga_inst|LessThan13~4_combout\,
	combout => \vga_inst|HEX3[4]~1_combout\);

-- Location: LCCOMB_X62_Y35_N28
\vga_inst|HEX4[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|HEX4[0]~0_combout\ = (\vga_inst|LessThan12~19_combout\ & ((\vga_inst|LessThan14~4_combout\) # ((\vga_inst|LessThan14~5_combout\) # (\vga_inst|LessThan13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_inst|LessThan14~4_combout\,
	datab => \vga_inst|LessThan14~5_combout\,
	datac => \vga_inst|LessThan12~19_combout\,
	datad => \vga_inst|LessThan13~4_combout\,
	combout => \vga_inst|HEX4[0]~0_combout\);

-- Location: LCCOMB_X62_Y35_N10
\vga_inst|HEX0[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_inst|HEX0[4]~1_combout\ = (\vga_inst|LessThan13~4_combout\) # (!\vga_inst|LessThan12~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_inst|LessThan12~19_combout\,
	datad => \vga_inst|LessThan13~4_combout\,
	combout => \vga_inst|HEX0[4]~1_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


