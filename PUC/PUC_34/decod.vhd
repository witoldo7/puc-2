library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decod is
port (
	--wejscie BCD.
	bcd : in std_logic_vector(3 downto 0);  
	-- wyjscie dekodera 8 bit.
	segment7 : out std_logic_vector(7 downto 0)  
    );
end decod;

architecture Behavioral of decod is

begin
process (bcd)
BEGIN
case  bcd is
	when "0000"=> segment7 <="00000011";  -- '0'
	when "0001"=> segment7 <="10011111";  -- '1'
	when "0010"=> segment7 <="00100101";  -- '2'
	when "0011"=> segment7 <="00001101";  -- '3'
	when "0100"=> segment7 <="10011001";  -- '4' 
	when "0101"=> segment7 <="01001001";  -- '5'
	when "0110"=> segment7 <="01000001";  -- '6'
	when "0111"=> segment7 <="00011111";  -- '7'
	when "1000"=> segment7 <="00000001";  -- '8'
	when "1001"=> segment7 <="00001001";  -- '9'
	-- stany wyzsze od 9 wygaczaja segement
	when others=> segment7 <="11111111"; 
end case;
end process;
end Behavioral;
