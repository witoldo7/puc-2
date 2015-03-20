LIBRARY ieee;
USE ieee.std_logic_1164.all; 
LIBRARY work;

ENTITY bramki IS 
	PORT(
		B :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		Y :  OUT  STD_LOGIC;
		Y1 :  OUT  STD_LOGIC);
END bramki;

ARCHITECTURE logic OF bramki IS 
BEGIN 
	Y <= A AND B;
	Y1 <= A OR B;
END logic;