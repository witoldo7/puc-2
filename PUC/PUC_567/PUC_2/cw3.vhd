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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.0 Build 132 02/25/2009 SJ Web Edition"
-- CREATED ON		"Mon Apr 13 15:13:20 2015"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY cw3 IS 
	PORT
	(
		sw0 :  IN  STD_LOGIC;
		bt3 :  IN  STD_LOGIC;
		sw1 :  IN  STD_LOGIC;
		LED0 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		LED1 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END cw3;

ARCHITECTURE bdf_type OF cw3 IS 

COMPONENT decod
	PORT(bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 segment7 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mod10
	PORT(dir : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : decod
PORT MAP(bcd => SYNTHESIZED_WIRE_0,
		 segment7 => LED0);


b2v_inst1 : mod10
PORT MAP(dir => sw0,
		 clr => sw1,
		 clk => bt3,
		 d => SYNTHESIZED_WIRE_0);


b2v_inst2 : mod10
PORT MAP(dir => sw0,
		 clr => sw1,
		 clk => bt3,
		 d => SYNTHESIZED_WIRE_1);



b2v_inst7 : decod
PORT MAP(bcd => SYNTHESIZED_WIRE_1,
		 segment7 => LED1);


END bdf_type;