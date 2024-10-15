-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 222 10/21/2009 SJ Full Version"

-- DATE "10/14/2024 17:30:32"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY STRATIXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXII.STRATIXII_COMPONENTS.ALL;

ENTITY 	\Register\ IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	C : IN std_logic_vector(7 DOWNTO 0);
	mult_result : OUT std_logic_vector(15 DOWNTO 0);
	mult_result_d : OUT std_logic_vector(15 DOWNTO 0);
	C_d_1 : OUT std_logic_vector(7 DOWNTO 0);
	C_d_2 : OUT std_logic_vector(7 DOWNTO 0);
	sum_result : OUT std_logic_vector(15 DOWNTO 0);
	sum_result_d : OUT std_logic_vector(15 DOWNTO 0);
	result : OUT std_logic_vector(15 DOWNTO 0)
	);
END \Register\;

-- Design Ports Information
-- mult_result[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result[3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result[4]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[5]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[6]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result[7]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[8]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result[9]	=>  Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[10]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[11]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result[12]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result[13]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[14]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result[15]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[1]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[2]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result_d[3]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[4]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result_d[5]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[6]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[7]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[8]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[9]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[10]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result_d[11]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result_d[12]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[13]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult_result_d[14]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- mult_result_d[15]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[2]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[4]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[5]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[6]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_1[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_2[0]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C_d_2[1]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_2[2]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_2[3]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C_d_2[4]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C_d_2[5]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C_d_2[6]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- C_d_2[7]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[0]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum_result[1]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum_result[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[3]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[4]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[5]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[7]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum_result[8]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[9]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[10]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[11]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[12]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[13]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[14]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result[15]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[0]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[1]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum_result_d[2]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[3]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[4]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[5]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[6]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum_result_d[7]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum_result_d[8]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[9]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[10]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[11]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum_result_d[12]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[13]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[14]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- sum_result_d[15]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- result[0]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- result[5]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- result[6]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- result[8]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- result[9]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[10]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- result[11]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[12]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[13]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[14]	=>  Location: PIN_P19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- result[15]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[0]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[1]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[2]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[3]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[4]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[5]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[7]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF \Register\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mult_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mult_result_d : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_C_d_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C_d_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sum_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sum_result_d : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out1_ACLR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out1_CLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out1_ENA_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult2_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult2_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT15\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~3\ : std_logic;
SIGNAL \mult_result[0]~reg0\ : std_logic;
SIGNAL \mult_result[1]~reg0\ : std_logic;
SIGNAL \mult_result[2]~reg0\ : std_logic;
SIGNAL \mult_result[3]~reg0\ : std_logic;
SIGNAL \mult_result[4]~reg0\ : std_logic;
SIGNAL \mult_result[5]~reg0\ : std_logic;
SIGNAL \mult_result[6]~reg0\ : std_logic;
SIGNAL \mult_result[7]~reg0\ : std_logic;
SIGNAL \mult_result[8]~reg0\ : std_logic;
SIGNAL \mult_result[9]~reg0\ : std_logic;
SIGNAL \mult_result[10]~reg0\ : std_logic;
SIGNAL \mult_result[11]~reg0\ : std_logic;
SIGNAL \mult_result[12]~reg0\ : std_logic;
SIGNAL \mult_result[13]~reg0\ : std_logic;
SIGNAL \mult_result[14]~reg0\ : std_logic;
SIGNAL \mult_result[15]~reg0\ : std_logic;
SIGNAL \mult_result_d[0]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[0]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[1]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[2]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[3]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[3]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[4]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[5]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[6]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[6]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[7]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[7]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[8]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[8]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[9]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[9]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[10]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[11]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[12]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[13]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[13]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[14]~reg0_regout\ : std_logic;
SIGNAL \mult_result_d[15]~reg0feeder_combout\ : std_logic;
SIGNAL \mult_result_d[15]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_1[0]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_1[1]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_1[2]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_1[3]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[4]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[5]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_1[6]~reg0_regout\ : std_logic;
SIGNAL \C_d_1[7]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[0]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_2[1]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[2]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_2[3]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[4]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_2[4]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_2[5]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[6]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_2[6]~reg0_regout\ : std_logic;
SIGNAL \C_d_2[7]~reg0feeder_combout\ : std_logic;
SIGNAL \C_d_2[7]~reg0_regout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \sum_result[0]~reg0_regout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \sum_result[1]~reg0_regout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \sum_result[2]~reg0_regout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \sum_result[3]~reg0_regout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \sum_result[4]~reg0_regout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \sum_result[5]~reg0_regout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \sum_result[6]~reg0_regout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \sum_result[7]~reg0_regout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \sum_result[8]~reg0_regout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \sum_result[9]~reg0_regout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \sum_result[10]~reg0_regout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \sum_result[11]~reg0_regout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \sum_result[12]~reg0_regout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \sum_result[13]~reg0_regout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \sum_result[14]~reg0_regout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \sum_result[15]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[0]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[1]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[1]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[2]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[3]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[3]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[4]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[5]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[5]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[6]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[7]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[7]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[8]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[8]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[9]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[9]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[10]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[11]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[11]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[12]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[13]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[13]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[14]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[14]~reg0_regout\ : std_logic;
SIGNAL \sum_result_d[15]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_result_d[15]~reg0_regout\ : std_logic;
SIGNAL \result[0]~reg0feeder_combout\ : std_logic;
SIGNAL \result[0]~reg0_regout\ : std_logic;
SIGNAL \result[1]~reg0_regout\ : std_logic;
SIGNAL \result[2]~reg0feeder_combout\ : std_logic;
SIGNAL \result[2]~reg0_regout\ : std_logic;
SIGNAL \result[3]~reg0feeder_combout\ : std_logic;
SIGNAL \result[3]~reg0_regout\ : std_logic;
SIGNAL \result[4]~reg0feeder_combout\ : std_logic;
SIGNAL \result[4]~reg0_regout\ : std_logic;
SIGNAL \result[5]~reg0feeder_combout\ : std_logic;
SIGNAL \result[5]~reg0_regout\ : std_logic;
SIGNAL \result[6]~reg0feeder_combout\ : std_logic;
SIGNAL \result[6]~reg0_regout\ : std_logic;
SIGNAL \result[7]~reg0_regout\ : std_logic;
SIGNAL \result[8]~reg0feeder_combout\ : std_logic;
SIGNAL \result[8]~reg0_regout\ : std_logic;
SIGNAL \result[9]~reg0feeder_combout\ : std_logic;
SIGNAL \result[9]~reg0_regout\ : std_logic;
SIGNAL \result[10]~reg0feeder_combout\ : std_logic;
SIGNAL \result[10]~reg0_regout\ : std_logic;
SIGNAL \result[11]~reg0feeder_combout\ : std_logic;
SIGNAL \result[11]~reg0_regout\ : std_logic;
SIGNAL \result[12]~reg0feeder_combout\ : std_logic;
SIGNAL \result[12]~reg0_regout\ : std_logic;
SIGNAL \result[13]~reg0_regout\ : std_logic;
SIGNAL \result[14]~reg0_regout\ : std_logic;
SIGNAL \result[15]~reg0feeder_combout\ : std_logic;
SIGNAL \result[15]~reg0_regout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_mult_result[0]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result[3]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result[6]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result[7]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result[8]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result[9]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result[13]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result[15]~reg0\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[6]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[7]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[8]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[9]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[10]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[11]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[12]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[13]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[14]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_mult_result_d[15]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_1[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_1[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_1[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_1[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_1[6]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_1[7]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[6]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C_d_2[7]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[7]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[8]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[9]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[11]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[13]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[14]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result[15]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[6]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[8]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[9]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[10]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[11]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[12]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_sum_result_d[15]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_C~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_A <= A;
ww_B <= B;
ww_C <= C;
mult_result <= ww_mult_result;
mult_result_d <= ww_mult_result_d;
C_d_1 <= ww_C_d_1;
C_d_2 <= ww_C_d_2;
sum_result <= ww_sum_result;
sum_result_d <= ww_sum_result_d;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out1_ACLR_bus\ <= (gnd & gnd & gnd & NOT \reset_n~clkctrl_outclk\);

\Mult0|auto_generated|mac_out1_CLK_bus\ <= (gnd & gnd & gnd & \clk~clkctrl_outclk\);

\Mult0|auto_generated|mac_out1_ENA_bus\ <= (vcc & vcc & vcc & vcc);

\Mult0|auto_generated|mac_out1_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult2~DATAOUT15\ & \Mult0|auto_generated|mac_mult2~DATAOUT14\ & \Mult0|auto_generated|mac_mult2~DATAOUT13\ & \Mult0|auto_generated|mac_mult2~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT11\ & \Mult0|auto_generated|mac_mult2~DATAOUT10\ & \Mult0|auto_generated|mac_mult2~DATAOUT9\ & \Mult0|auto_generated|mac_mult2~DATAOUT8\ & \Mult0|auto_generated|mac_mult2~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT6\ & \Mult0|auto_generated|mac_mult2~DATAOUT5\ & \Mult0|auto_generated|mac_mult2~DATAOUT4\ & \Mult0|auto_generated|mac_mult2~DATAOUT3\ & \Mult0|auto_generated|mac_mult2~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT1\ & \Mult0|auto_generated|mac_mult2~dataout\ & \Mult0|auto_generated|mac_mult2~3\ & \Mult0|auto_generated|mac_mult2~2\);

\Mult0|auto_generated|mac_out1~0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out1~1\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(1);
\mult_result[0]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(2);
\mult_result[1]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(3);
\mult_result[2]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(4);
\mult_result[3]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(5);
\mult_result[4]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(6);
\mult_result[5]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(7);
\mult_result[6]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(8);
\mult_result[7]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(9);
\mult_result[8]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(10);
\mult_result[9]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(11);
\mult_result[10]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(12);
\mult_result[11]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(13);
\mult_result[12]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(14);
\mult_result[13]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(15);
\mult_result[14]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(16);
\mult_result[15]~reg0\ <= \Mult0|auto_generated|mac_out1_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult2_DATAA_bus\ <= (\A~combout\(7) & \A~combout\(6) & \A~combout\(5) & \A~combout\(4) & \A~combout\(3) & \A~combout\(2) & \A~combout\(1) & \A~combout\(0) & gnd);

\Mult0|auto_generated|mac_mult2_DATAB_bus\ <= (\B~combout\(7) & \B~combout\(6) & \B~combout\(5) & \B~combout\(4) & \B~combout\(3) & \B~combout\(2) & \B~combout\(1) & \B~combout\(0) & gnd);

\Mult0|auto_generated|mac_mult2~2\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult2~3\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult2~dataout\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult2~DATAOUT1\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult2~DATAOUT2\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult2~DATAOUT3\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult2~DATAOUT4\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult2~DATAOUT5\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult2~DATAOUT6\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult2~DATAOUT7\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult2~DATAOUT8\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult2~DATAOUT9\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult2~DATAOUT10\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult2~DATAOUT11\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult2~DATAOUT12\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult2~DATAOUT13\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult2~DATAOUT14\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult2~DATAOUT15\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(17);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_mult_result[0]~reg0\ <= NOT \mult_result[0]~reg0\;
\ALT_INV_mult_result[3]~reg0\ <= NOT \mult_result[3]~reg0\;
\ALT_INV_mult_result[6]~reg0\ <= NOT \mult_result[6]~reg0\;
\ALT_INV_mult_result[7]~reg0\ <= NOT \mult_result[7]~reg0\;
\ALT_INV_mult_result[8]~reg0\ <= NOT \mult_result[8]~reg0\;
\ALT_INV_mult_result[9]~reg0\ <= NOT \mult_result[9]~reg0\;
\ALT_INV_mult_result[13]~reg0\ <= NOT \mult_result[13]~reg0\;
\ALT_INV_mult_result[15]~reg0\ <= NOT \mult_result[15]~reg0\;
\ALT_INV_mult_result_d[0]~reg0_regout\ <= NOT \mult_result_d[0]~reg0_regout\;
\ALT_INV_mult_result_d[1]~reg0_regout\ <= NOT \mult_result_d[1]~reg0_regout\;
\ALT_INV_mult_result_d[2]~reg0_regout\ <= NOT \mult_result_d[2]~reg0_regout\;
\ALT_INV_mult_result_d[3]~reg0_regout\ <= NOT \mult_result_d[3]~reg0_regout\;
\ALT_INV_mult_result_d[4]~reg0_regout\ <= NOT \mult_result_d[4]~reg0_regout\;
\ALT_INV_mult_result_d[5]~reg0_regout\ <= NOT \mult_result_d[5]~reg0_regout\;
\ALT_INV_mult_result_d[6]~reg0_regout\ <= NOT \mult_result_d[6]~reg0_regout\;
\ALT_INV_mult_result_d[7]~reg0_regout\ <= NOT \mult_result_d[7]~reg0_regout\;
\ALT_INV_mult_result_d[8]~reg0_regout\ <= NOT \mult_result_d[8]~reg0_regout\;
\ALT_INV_mult_result_d[9]~reg0_regout\ <= NOT \mult_result_d[9]~reg0_regout\;
\ALT_INV_mult_result_d[10]~reg0_regout\ <= NOT \mult_result_d[10]~reg0_regout\;
\ALT_INV_mult_result_d[11]~reg0_regout\ <= NOT \mult_result_d[11]~reg0_regout\;
\ALT_INV_mult_result_d[12]~reg0_regout\ <= NOT \mult_result_d[12]~reg0_regout\;
\ALT_INV_mult_result_d[13]~reg0_regout\ <= NOT \mult_result_d[13]~reg0_regout\;
\ALT_INV_mult_result_d[14]~reg0_regout\ <= NOT \mult_result_d[14]~reg0_regout\;
\ALT_INV_mult_result_d[15]~reg0_regout\ <= NOT \mult_result_d[15]~reg0_regout\;
\ALT_INV_C_d_1[1]~reg0_regout\ <= NOT \C_d_1[1]~reg0_regout\;
\ALT_INV_C_d_1[3]~reg0_regout\ <= NOT \C_d_1[3]~reg0_regout\;
\ALT_INV_C_d_1[4]~reg0_regout\ <= NOT \C_d_1[4]~reg0_regout\;
\ALT_INV_C_d_1[5]~reg0_regout\ <= NOT \C_d_1[5]~reg0_regout\;
\ALT_INV_C_d_1[6]~reg0_regout\ <= NOT \C_d_1[6]~reg0_regout\;
\ALT_INV_C_d_1[7]~reg0_regout\ <= NOT \C_d_1[7]~reg0_regout\;
\ALT_INV_C_d_2[0]~reg0_regout\ <= NOT \C_d_2[0]~reg0_regout\;
\ALT_INV_C_d_2[1]~reg0_regout\ <= NOT \C_d_2[1]~reg0_regout\;
\ALT_INV_C_d_2[2]~reg0_regout\ <= NOT \C_d_2[2]~reg0_regout\;
\ALT_INV_C_d_2[3]~reg0_regout\ <= NOT \C_d_2[3]~reg0_regout\;
\ALT_INV_C_d_2[4]~reg0_regout\ <= NOT \C_d_2[4]~reg0_regout\;
\ALT_INV_C_d_2[5]~reg0_regout\ <= NOT \C_d_2[5]~reg0_regout\;
\ALT_INV_C_d_2[6]~reg0_regout\ <= NOT \C_d_2[6]~reg0_regout\;
\ALT_INV_C_d_2[7]~reg0_regout\ <= NOT \C_d_2[7]~reg0_regout\;
\ALT_INV_sum_result[1]~reg0_regout\ <= NOT \sum_result[1]~reg0_regout\;
\ALT_INV_sum_result[3]~reg0_regout\ <= NOT \sum_result[3]~reg0_regout\;
\ALT_INV_sum_result[5]~reg0_regout\ <= NOT \sum_result[5]~reg0_regout\;
\ALT_INV_sum_result[7]~reg0_regout\ <= NOT \sum_result[7]~reg0_regout\;
\ALT_INV_sum_result[8]~reg0_regout\ <= NOT \sum_result[8]~reg0_regout\;
\ALT_INV_sum_result[9]~reg0_regout\ <= NOT \sum_result[9]~reg0_regout\;
\ALT_INV_sum_result[11]~reg0_regout\ <= NOT \sum_result[11]~reg0_regout\;
\ALT_INV_sum_result[13]~reg0_regout\ <= NOT \sum_result[13]~reg0_regout\;
\ALT_INV_sum_result[14]~reg0_regout\ <= NOT \sum_result[14]~reg0_regout\;
\ALT_INV_sum_result[15]~reg0_regout\ <= NOT \sum_result[15]~reg0_regout\;
\ALT_INV_sum_result_d[0]~reg0_regout\ <= NOT \sum_result_d[0]~reg0_regout\;
\ALT_INV_sum_result_d[2]~reg0_regout\ <= NOT \sum_result_d[2]~reg0_regout\;
\ALT_INV_sum_result_d[3]~reg0_regout\ <= NOT \sum_result_d[3]~reg0_regout\;
\ALT_INV_sum_result_d[4]~reg0_regout\ <= NOT \sum_result_d[4]~reg0_regout\;
\ALT_INV_sum_result_d[5]~reg0_regout\ <= NOT \sum_result_d[5]~reg0_regout\;
\ALT_INV_sum_result_d[6]~reg0_regout\ <= NOT \sum_result_d[6]~reg0_regout\;
\ALT_INV_sum_result_d[8]~reg0_regout\ <= NOT \sum_result_d[8]~reg0_regout\;
\ALT_INV_sum_result_d[9]~reg0_regout\ <= NOT \sum_result_d[9]~reg0_regout\;
\ALT_INV_sum_result_d[10]~reg0_regout\ <= NOT \sum_result_d[10]~reg0_regout\;
\ALT_INV_sum_result_d[11]~reg0_regout\ <= NOT \sum_result_d[11]~reg0_regout\;
\ALT_INV_sum_result_d[12]~reg0_regout\ <= NOT \sum_result_d[12]~reg0_regout\;
\ALT_INV_sum_result_d[15]~reg0_regout\ <= NOT \sum_result_d[15]~reg0_regout\;
\ALT_INV_C~combout\(0) <= NOT \C~combout\(0);
\ALT_INV_C~combout\(1) <= NOT \C~combout\(1);
\ALT_INV_C~combout\(2) <= NOT \C~combout\(2);
\ALT_INV_C~combout\(3) <= NOT \C~combout\(3);
\ALT_INV_C~combout\(6) <= NOT \C~combout\(6);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: DSPMULT_X28_Y22_N0
\Mult0|auto_generated|mac_mult2\ : stratixii_mac_mult
-- pragma translate_off
GENERIC MAP (
	bypass_multiplier => "no",
	dataa_clear => "none",
	dataa_clock => "none",
	dataa_width => 9,
	datab_clear => "none",
	datab_clock => "none",
	datab_width => 9,
	dynamic_mode => "no",
	mode_clear => "none",
	mode_clock => "none",
	output_clear => "none",
	output_clock => "none",
	round_clear => "none",
	round_clock => "none",
	saturate_clear => "none",
	saturate_clock => "none",
	signa_clear => "none",
	signa_clock => "none",
	signa_internally_grounded => "false",
	signb_clear => "none",
	signb_clock => "none",
	signb_internally_grounded => "false",
	zeroacc_clear => "none",
	zeroacc_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	sourcea => GND,
	sourceb => GND,
	round => GND,
	saturate => GND,
	dataa => \Mult0|auto_generated|mac_mult2_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult2_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult2_DATAOUT_bus\);

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: DSPOUT_X28_Y22_N2
\Mult0|auto_generated|mac_out1\ : stratixii_mac_out
-- pragma translate_off
GENERIC MAP (
	addnsub0_clear => "none",
	addnsub0_clock => "none",
	addnsub0_pipeline_clear => "none",
	addnsub0_pipeline_clock => "none",
	addnsub1_clear => "none",
	addnsub1_clock => "none",
	addnsub1_pipeline_clear => "none",
	addnsub1_pipeline_clock => "none",
	dataa_forced_to_zero => "no",
	dataa_width => 18,
	datac_forced_to_zero => "no",
	dataout_width => 18,
	mode0_clear => "none",
	mode0_clock => "none",
	mode0_pipeline_clear => "none",
	mode0_pipeline_clock => "none",
	mode1_clear => "none",
	mode1_clock => "none",
	mode1_pipeline_clear => "none",
	mode1_pipeline_clock => "none",
	multabsaturate_clear => "none",
	multabsaturate_clock => "none",
	multabsaturate_pipeline_clear => "none",
	multabsaturate_pipeline_clock => "none",
	multcdsaturate_clear => "none",
	multcdsaturate_clock => "none",
	multcdsaturate_pipeline_clear => "none",
	multcdsaturate_pipeline_clock => "none",
	operation_mode => "output_only",
	output1_clear => "none",
	output1_clock => "none",
	output2_clear => "none",
	output2_clock => "none",
	output3_clear => "none",
	output3_clock => "none",
	output4_clear => "none",
	output4_clock => "none",
	output5_clear => "none",
	output5_clock => "none",
	output6_clear => "none",
	output6_clock => "none",
	output7_clear => "none",
	output7_clock => "none",
	output_clear => "0",
	output_clock => "0",
	round0_clear => "none",
	round0_clock => "none",
	round0_pipeline_clear => "none",
	round0_pipeline_clock => "none",
	round1_clear => "none",
	round1_clock => "none",
	round1_pipeline_clear => "none",
	round1_pipeline_clock => "none",
	saturate1_clear => "none",
	saturate1_clock => "none",
	saturate1_pipeline_clear => "none",
	saturate1_pipeline_clock => "none",
	saturate_clear => "none",
	saturate_clock => "none",
	saturate_pipeline_clear => "none",
	saturate_pipeline_clock => "none",
	signa_clear => "none",
	signa_clock => "none",
	signa_pipeline_clear => "none",
	signa_pipeline_clock => "none",
	signb_clear => "none",
	signb_clock => "none",
	signb_pipeline_clear => "none",
	signb_pipeline_clock => "none",
	zeroacc1_clear => "none",
	zeroacc1_clock => "none",
	zeroacc1_pipeline_clear => "none",
	zeroacc1_pipeline_clock => "none",
	zeroacc_clear => "none",
	zeroacc_clock => "none",
	zeroacc_pipeline_clear => "none",
	zeroacc_pipeline_clock => "none")
-- pragma translate_on
PORT MAP (
	multabsaturate => GND,
	aclr => \Mult0|auto_generated|mac_out1_ACLR_bus\,
	clk => \Mult0|auto_generated|mac_out1_CLK_bus\,
	ena => \Mult0|auto_generated|mac_out1_ENA_bus\,
	dataa => \Mult0|auto_generated|mac_out1_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out1_DATAOUT_bus\);

-- Location: LCCOMB_X33_Y13_N16
\mult_result_d[0]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[0]~reg0feeder_combout\ = ( \mult_result[0]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[0]~reg0\,
	combout => \mult_result_d[0]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N17
\mult_result_d[0]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[0]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[0]~reg0_regout\);

-- Location: LCFF_X33_Y13_N23
\mult_result_d[1]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[1]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[1]~reg0_regout\);

-- Location: LCFF_X33_Y13_N21
\mult_result_d[2]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[2]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[2]~reg0_regout\);

-- Location: LCCOMB_X33_Y13_N26
\mult_result_d[3]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[3]~reg0feeder_combout\ = ( \mult_result[3]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[3]~reg0\,
	combout => \mult_result_d[3]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N27
\mult_result_d[3]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[3]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[3]~reg0_regout\);

-- Location: LCFF_X33_Y13_N25
\mult_result_d[4]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[4]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[4]~reg0_regout\);

-- Location: LCFF_X33_Y13_N29
\mult_result_d[5]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[5]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[5]~reg0_regout\);

-- Location: LCCOMB_X33_Y13_N30
\mult_result_d[6]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[6]~reg0feeder_combout\ = ( \mult_result[6]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[6]~reg0\,
	combout => \mult_result_d[6]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N31
\mult_result_d[6]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[6]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[6]~reg0_regout\);

-- Location: LCCOMB_X33_Y13_N0
\mult_result_d[7]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[7]~reg0feeder_combout\ = ( \mult_result[7]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[7]~reg0\,
	combout => \mult_result_d[7]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N1
\mult_result_d[7]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[7]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[7]~reg0_regout\);

-- Location: LCCOMB_X33_Y13_N2
\mult_result_d[8]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[8]~reg0feeder_combout\ = ( \mult_result[8]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[8]~reg0\,
	combout => \mult_result_d[8]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N3
\mult_result_d[8]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[8]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[8]~reg0_regout\);

-- Location: LCCOMB_X33_Y13_N6
\mult_result_d[9]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[9]~reg0feeder_combout\ = ( \mult_result[9]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[9]~reg0\,
	combout => \mult_result_d[9]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N7
\mult_result_d[9]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[9]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[9]~reg0_regout\);

-- Location: LCFF_X33_Y13_N5
\mult_result_d[10]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[10]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[10]~reg0_regout\);

-- Location: LCFF_X33_Y13_N9
\mult_result_d[11]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[11]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[11]~reg0_regout\);

-- Location: LCFF_X33_Y13_N11
\mult_result_d[12]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[12]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[12]~reg0_regout\);

-- Location: LCCOMB_X33_Y13_N18
\mult_result_d[13]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[13]~reg0feeder_combout\ = ( \mult_result[13]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[13]~reg0\,
	combout => \mult_result_d[13]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N19
\mult_result_d[13]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[13]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[13]~reg0_regout\);

-- Location: LCFF_X33_Y13_N13
\mult_result_d[14]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \mult_result[14]~reg0\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[14]~reg0_regout\);

-- Location: LCCOMB_X33_Y13_N14
\mult_result_d[15]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \mult_result_d[15]~reg0feeder_combout\ = ( \mult_result[15]~reg0\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result[15]~reg0\,
	combout => \mult_result_d[15]~reg0feeder_combout\);

-- Location: LCFF_X33_Y13_N15
\mult_result_d[15]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mult_result_d[15]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mult_result_d[15]~reg0_regout\);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(0),
	combout => \C~combout\(0));

-- Location: LCCOMB_X31_Y12_N2
\C_d_1[0]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_1[0]~reg0feeder_combout\ = ( \C~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C~combout\(0),
	combout => \C_d_1[0]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N3
\C_d_1[0]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_1[0]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[0]~reg0_regout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(1),
	combout => \C~combout\(1));

-- Location: LCCOMB_X31_Y12_N20
\C_d_1[1]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_1[1]~reg0feeder_combout\ = ( \C~combout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C~combout\(1),
	combout => \C_d_1[1]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N21
\C_d_1[1]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_1[1]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[1]~reg0_regout\);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(2),
	combout => \C~combout\(2));

-- Location: LCCOMB_X31_Y12_N26
\C_d_1[2]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_1[2]~reg0feeder_combout\ = ( \C~combout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C~combout\(2),
	combout => \C_d_1[2]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N27
\C_d_1[2]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_1[2]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[2]~reg0_regout\);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(3),
	combout => \C~combout\(3));

-- Location: LCCOMB_X31_Y12_N30
\C_d_1[3]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_1[3]~reg0feeder_combout\ = ( \C~combout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C~combout\(3),
	combout => \C_d_1[3]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N31
\C_d_1[3]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_1[3]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[3]~reg0_regout\);

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(4),
	combout => \C~combout\(4));

-- Location: LCFF_X31_Y12_N17
\C_d_1[4]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \C~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[4]~reg0_regout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(5),
	combout => \C~combout\(5));

-- Location: LCFF_X31_Y12_N5
\C_d_1[5]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \C~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[5]~reg0_regout\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(6),
	combout => \C~combout\(6));

-- Location: LCCOMB_X31_Y12_N10
\C_d_1[6]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_1[6]~reg0feeder_combout\ = ( \C~combout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C~combout\(6),
	combout => \C_d_1[6]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N11
\C_d_1[6]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_1[6]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[6]~reg0_regout\);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(7),
	combout => \C~combout\(7));

-- Location: LCFF_X31_Y12_N15
\C_d_1[7]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \C~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_1[7]~reg0_regout\);

-- Location: LCFF_X31_Y12_N1
\C_d_2[0]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \C_d_1[0]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[0]~reg0_regout\);

-- Location: LCCOMB_X31_Y12_N22
\C_d_2[1]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_2[1]~reg0feeder_combout\ = ( \C_d_1[1]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C_d_1[1]~reg0_regout\,
	combout => \C_d_2[1]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N23
\C_d_2[1]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_2[1]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[1]~reg0_regout\);

-- Location: LCFF_X31_Y12_N25
\C_d_2[2]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \C_d_1[2]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[2]~reg0_regout\);

-- Location: LCCOMB_X31_Y12_N28
\C_d_2[3]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_2[3]~reg0feeder_combout\ = ( \C_d_1[3]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C_d_1[3]~reg0_regout\,
	combout => \C_d_2[3]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N29
\C_d_2[3]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_2[3]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[3]~reg0_regout\);

-- Location: LCCOMB_X31_Y12_N18
\C_d_2[4]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_2[4]~reg0feeder_combout\ = ( \C_d_1[4]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C_d_1[4]~reg0_regout\,
	combout => \C_d_2[4]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N19
\C_d_2[4]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_2[4]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[4]~reg0_regout\);

-- Location: LCCOMB_X31_Y12_N6
\C_d_2[5]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_2[5]~reg0feeder_combout\ = ( \C_d_1[5]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C_d_1[5]~reg0_regout\,
	combout => \C_d_2[5]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N7
\C_d_2[5]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_2[5]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[5]~reg0_regout\);

-- Location: LCCOMB_X31_Y12_N8
\C_d_2[6]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_2[6]~reg0feeder_combout\ = ( \C_d_1[6]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C_d_1[6]~reg0_regout\,
	combout => \C_d_2[6]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N9
\C_d_2[6]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_2[6]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[6]~reg0_regout\);

-- Location: LCCOMB_X31_Y12_N12
\C_d_2[7]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \C_d_2[7]~reg0feeder_combout\ = ( \C_d_1[7]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_C_d_1[7]~reg0_regout\,
	combout => \C_d_2[7]~reg0feeder_combout\);

-- Location: LCFF_X31_Y12_N13
\C_d_2[7]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C_d_2[7]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_d_2[7]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N0
\Add0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \mult_result_d[0]~reg0_regout\ ) + ( \C_d_2[0]~reg0_regout\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \mult_result_d[0]~reg0_regout\ ) + ( \C_d_2[0]~reg0_regout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_mult_result_d[0]~reg0_regout\,
	dataf => \ALT_INV_C_d_2[0]~reg0_regout\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LCFF_X33_Y12_N1
\sum_result[0]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~1_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[0]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N2
\Add0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \C_d_2[1]~reg0_regout\ ) + ( \mult_result_d[1]~reg0_regout\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \C_d_2[1]~reg0_regout\ ) + ( \mult_result_d[1]~reg0_regout\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_C_d_2[1]~reg0_regout\,
	dataf => \ALT_INV_mult_result_d[1]~reg0_regout\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LCFF_X33_Y12_N3
\sum_result[1]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~5_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[1]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N4
\Add0~9\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \C_d_2[2]~reg0_regout\ ) + ( \mult_result_d[2]~reg0_regout\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \C_d_2[2]~reg0_regout\ ) + ( \mult_result_d[2]~reg0_regout\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_C_d_2[2]~reg0_regout\,
	dataf => \ALT_INV_mult_result_d[2]~reg0_regout\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LCFF_X33_Y12_N5
\sum_result[2]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~9_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[2]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N6
\Add0~13\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \mult_result_d[3]~reg0_regout\ ) + ( \C_d_2[3]~reg0_regout\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \mult_result_d[3]~reg0_regout\ ) + ( \C_d_2[3]~reg0_regout\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_mult_result_d[3]~reg0_regout\,
	dataf => \ALT_INV_C_d_2[3]~reg0_regout\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LCFF_X33_Y12_N7
\sum_result[3]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~13_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[3]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N8
\Add0~17\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \C_d_2[4]~reg0_regout\ ) + ( \mult_result_d[4]~reg0_regout\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \C_d_2[4]~reg0_regout\ ) + ( \mult_result_d[4]~reg0_regout\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_C_d_2[4]~reg0_regout\,
	dataf => \ALT_INV_mult_result_d[4]~reg0_regout\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LCFF_X33_Y12_N9
\sum_result[4]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~17_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[4]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N10
\Add0~21\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \C_d_2[5]~reg0_regout\ ) + ( \mult_result_d[5]~reg0_regout\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \C_d_2[5]~reg0_regout\ ) + ( \mult_result_d[5]~reg0_regout\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_C_d_2[5]~reg0_regout\,
	dataf => \ALT_INV_mult_result_d[5]~reg0_regout\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LCFF_X33_Y12_N11
\sum_result[5]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~21_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[5]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N12
\Add0~25\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \mult_result_d[6]~reg0_regout\ ) + ( \C_d_2[6]~reg0_regout\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \mult_result_d[6]~reg0_regout\ ) + ( \C_d_2[6]~reg0_regout\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C_d_2[6]~reg0_regout\,
	datad => \ALT_INV_mult_result_d[6]~reg0_regout\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LCFF_X33_Y12_N13
\sum_result[6]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~25_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[6]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N14
\Add0~29\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \C_d_2[7]~reg0_regout\ ) + ( \mult_result_d[7]~reg0_regout\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \C_d_2[7]~reg0_regout\ ) + ( \mult_result_d[7]~reg0_regout\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_C_d_2[7]~reg0_regout\,
	dataf => \ALT_INV_mult_result_d[7]~reg0_regout\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LCFF_X33_Y12_N15
\sum_result[7]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~29_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[7]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N16
\Add0~33\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \mult_result_d[8]~reg0_regout\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \mult_result_d[8]~reg0_regout\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_mult_result_d[8]~reg0_regout\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LCFF_X33_Y12_N17
\sum_result[8]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~33_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[8]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N18
\Add0~37\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \mult_result_d[9]~reg0_regout\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \mult_result_d[9]~reg0_regout\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_mult_result_d[9]~reg0_regout\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LCFF_X33_Y12_N19
\sum_result[9]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~37_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[9]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N20
\Add0~41\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( GND ) + ( \mult_result_d[10]~reg0_regout\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( GND ) + ( \mult_result_d[10]~reg0_regout\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result_d[10]~reg0_regout\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LCFF_X33_Y12_N21
\sum_result[10]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~41_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[10]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N22
\Add0~45\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \mult_result_d[11]~reg0_regout\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \mult_result_d[11]~reg0_regout\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_mult_result_d[11]~reg0_regout\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LCFF_X33_Y12_N23
\sum_result[11]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~45_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[11]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N24
\Add0~49\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( GND ) + ( \mult_result_d[12]~reg0_regout\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( GND ) + ( \mult_result_d[12]~reg0_regout\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result_d[12]~reg0_regout\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LCFF_X33_Y12_N25
\sum_result[12]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~49_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[12]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N26
\Add0~53\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( GND ) + ( \mult_result_d[13]~reg0_regout\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( GND ) + ( \mult_result_d[13]~reg0_regout\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result_d[13]~reg0_regout\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LCFF_X33_Y12_N27
\sum_result[13]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~53_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[13]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N28
\Add0~57\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( GND ) + ( \mult_result_d[14]~reg0_regout\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( GND ) + ( \mult_result_d[14]~reg0_regout\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result_d[14]~reg0_regout\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LCFF_X33_Y12_N29
\sum_result[14]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~57_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[14]~reg0_regout\);

-- Location: LCCOMB_X33_Y12_N30
\Add0~61\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( GND ) + ( \mult_result_d[15]~reg0_regout\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_mult_result_d[15]~reg0_regout\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: LCFF_X33_Y12_N31
\sum_result[15]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~61_sumout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result[15]~reg0_regout\);

-- Location: LCFF_X33_Y8_N17
\sum_result_d[0]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result[0]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[0]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N22
\sum_result_d[1]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[1]~reg0feeder_combout\ = ( \sum_result[1]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[1]~reg0_regout\,
	combout => \sum_result_d[1]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N23
\sum_result_d[1]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[1]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[1]~reg0_regout\);

-- Location: LCFF_X33_Y8_N27
\sum_result_d[2]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result[2]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[2]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N30
\sum_result_d[3]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[3]~reg0feeder_combout\ = ( \sum_result[3]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[3]~reg0_regout\,
	combout => \sum_result_d[3]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N31
\sum_result_d[3]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[3]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[3]~reg0_regout\);

-- Location: LCFF_X33_Y8_N1
\sum_result_d[4]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result[4]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[4]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N4
\sum_result_d[5]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[5]~reg0feeder_combout\ = ( \sum_result[5]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[5]~reg0_regout\,
	combout => \sum_result_d[5]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N5
\sum_result_d[5]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[5]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[5]~reg0_regout\);

-- Location: LCFF_X33_Y8_N11
\sum_result_d[6]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result[6]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[6]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N12
\sum_result_d[7]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[7]~reg0feeder_combout\ = ( \sum_result[7]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[7]~reg0_regout\,
	combout => \sum_result_d[7]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N13
\sum_result_d[7]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[7]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[7]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N0
\sum_result_d[8]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[8]~reg0feeder_combout\ = ( \sum_result[8]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[8]~reg0_regout\,
	combout => \sum_result_d[8]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N1
\sum_result_d[8]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[8]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[8]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N4
\sum_result_d[9]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[9]~reg0feeder_combout\ = ( \sum_result[9]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[9]~reg0_regout\,
	combout => \sum_result_d[9]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N5
\sum_result_d[9]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[9]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[9]~reg0_regout\);

-- Location: LCFF_X39_Y8_N27
\sum_result_d[10]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result[10]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[10]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N30
\sum_result_d[11]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[11]~reg0feeder_combout\ = ( \sum_result[11]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[11]~reg0_regout\,
	combout => \sum_result_d[11]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N31
\sum_result_d[11]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[11]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[11]~reg0_regout\);

-- Location: LCFF_X39_Y8_N17
\sum_result_d[12]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result[12]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[12]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N22
\sum_result_d[13]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[13]~reg0feeder_combout\ = ( \sum_result[13]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[13]~reg0_regout\,
	combout => \sum_result_d[13]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N23
\sum_result_d[13]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[13]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[13]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N8
\sum_result_d[14]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[14]~reg0feeder_combout\ = ( \sum_result[14]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[14]~reg0_regout\,
	combout => \sum_result_d[14]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N9
\sum_result_d[14]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[14]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[14]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N14
\sum_result_d[15]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \sum_result_d[15]~reg0feeder_combout\ = ( \sum_result[15]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result[15]~reg0_regout\,
	combout => \sum_result_d[15]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N15
\sum_result_d[15]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \sum_result_d[15]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum_result_d[15]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N18
\result[0]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[0]~reg0feeder_combout\ = ( \sum_result_d[0]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[0]~reg0_regout\,
	combout => \result[0]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N19
\result[0]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[0]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[0]~reg0_regout\);

-- Location: LCFF_X33_Y8_N21
\result[1]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result_d[1]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[1]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N24
\result[2]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[2]~reg0feeder_combout\ = ( \sum_result_d[2]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[2]~reg0_regout\,
	combout => \result[2]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N25
\result[2]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[2]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[2]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N28
\result[3]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[3]~reg0feeder_combout\ = ( \sum_result_d[3]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[3]~reg0_regout\,
	combout => \result[3]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N29
\result[3]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[3]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[3]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N2
\result[4]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[4]~reg0feeder_combout\ = ( \sum_result_d[4]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[4]~reg0_regout\,
	combout => \result[4]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N3
\result[4]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[4]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[4]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N6
\result[5]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[5]~reg0feeder_combout\ = ( \sum_result_d[5]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[5]~reg0_regout\,
	combout => \result[5]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N7
\result[5]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[5]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[5]~reg0_regout\);

-- Location: LCCOMB_X33_Y8_N8
\result[6]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[6]~reg0feeder_combout\ = ( \sum_result_d[6]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[6]~reg0_regout\,
	combout => \result[6]~reg0feeder_combout\);

-- Location: LCFF_X33_Y8_N9
\result[6]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[6]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[6]~reg0_regout\);

-- Location: LCFF_X33_Y8_N15
\result[7]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result_d[7]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[7]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N2
\result[8]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[8]~reg0feeder_combout\ = ( \sum_result_d[8]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[8]~reg0_regout\,
	combout => \result[8]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N3
\result[8]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[8]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[8]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N6
\result[9]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[9]~reg0feeder_combout\ = ( \sum_result_d[9]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[9]~reg0_regout\,
	combout => \result[9]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N7
\result[9]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[9]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[9]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N24
\result[10]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[10]~reg0feeder_combout\ = ( \sum_result_d[10]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[10]~reg0_regout\,
	combout => \result[10]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N25
\result[10]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[10]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[10]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N28
\result[11]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[11]~reg0feeder_combout\ = ( \sum_result_d[11]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[11]~reg0_regout\,
	combout => \result[11]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N29
\result[11]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[11]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[11]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N18
\result[12]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[12]~reg0feeder_combout\ = ( \sum_result_d[12]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[12]~reg0_regout\,
	combout => \result[12]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N19
\result[12]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[12]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[12]~reg0_regout\);

-- Location: LCFF_X39_Y8_N21
\result[13]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result_d[13]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[13]~reg0_regout\);

-- Location: LCFF_X39_Y8_N11
\result[14]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \sum_result_d[14]~reg0_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[14]~reg0_regout\);

-- Location: LCCOMB_X39_Y8_N12
\result[15]~reg0feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \result[15]~reg0feeder_combout\ = ( \sum_result_d[15]~reg0_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sum_result_d[15]~reg0_regout\,
	combout => \result[15]~reg0feeder_combout\);

-- Location: LCFF_X39_Y8_N13
\result[15]~reg0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[15]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[15]~reg0_regout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[0]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(0));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[1]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[2]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(2));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[3]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(3));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[4]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(4));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[5]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(5));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[6]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(6));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[7]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(7));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[8]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(8));

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[9]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(9));

-- Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[10]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(10));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[11]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(11));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[12]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(12));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[13]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(13));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[14]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(14));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result[15]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result(15));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(0));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(1));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result_d[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(2));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(3));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result_d[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(4));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(5));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(6));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(7));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(8));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(9));

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result_d[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(10));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result_d[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(11));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(12));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult_result_d[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(13));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(14));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\mult_result_d[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \mult_result_d[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult_result_d(15));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(1));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(3));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(4));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(5));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(6));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_1[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_1[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_1(7));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C_d_2[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(0));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_2[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(1));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_2[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(2));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C_d_2[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(3));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C_d_2[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(4));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C_d_2[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(5));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_2[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(6));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\C_d_2[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \C_d_2[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_d_2(7));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum_result[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(0));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum_result[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(1));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(2));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(3));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(4));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(6));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum_result[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(7));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(8));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(9));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(10));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(11));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(12));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(13));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(14));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result(15));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(0));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum_result_d[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(1));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(2));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(3));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(4));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(5));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum_result_d[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(6));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum_result_d[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(7));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(8));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(9));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(10));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum_result_d[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(11));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(12));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(13));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(14));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\sum_result_d[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \sum_result_d[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum_result_d(15));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\result[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\result[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\result[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(7));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\result[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(8));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(9));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\result[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(10));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(11));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(12));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(13));

-- Location: PIN_P19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\result[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(14));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \result[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(15));
END structure;


