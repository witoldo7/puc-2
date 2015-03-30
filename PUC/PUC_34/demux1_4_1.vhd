library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1_4 is
port (
	we 	: in std_logic_vector(7 downto 0);
	adr 	: in std_logic_vector(1 downto 0);
	oe 	: in std_logic ;
	Y0,Y1,Y2,Y3 : out std_logic_vector (7 downto 0)
     );
end demux1_4;

architecture Behavioral of demux1_4 is

begin
process(oe,adr) is
begin
if oe = '1' then
	if adr="00" then
	Y0<=we; Y1<="11111111"; Y2<="11111111"; Y3<="11111111";
	elsif adr="01" then
	Y0<="11111111"; Y1<=we; Y2<="11111111"; Y3<="11111111";
	elsif adr="10" then
	Y0<="11111111"; Y1<="11111111"; Y2<=we; Y3<="11111111";
	elsif adr="11" then
	Y0<="11111111"; Y1<="11111111"; Y2<="11111111"; Y3<=we;
end if;
elsif oe='0' then 
Y0<="11111111"; Y1<="11111111"; Y2<="11111111"; Y3<="11111111";
end if;
end process;
end Behavioral;
