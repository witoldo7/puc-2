LIBRARY ieee;
USE ieee.std_logic_1164.all; 
LIBRARY work;

ENTITY Block1 IS 
	PORT(
		D :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		E :  OUT  STD_LOGIC);
END Block1;

ARCHITECTURE logic OF Block1 IS 
BEGIN 
	E <= (D AND C AND A) OR (NOT(C) AND NOT(A)) OR (A AND NOT(B));
END logic;
