LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		B :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		DIR :  OUT  STD_LOGIC;
		CLK :  OUT  STD_LOGIC
	);
END Block1;

ARCHITECTURE logic OF Block1 IS 

signal AT : std_logic;
signal BT : std_logic;

BEGIN 
AT <= A;
BT <= B;

CLK <= A xor B;
DIR <= A and not(B) ;
END logic;