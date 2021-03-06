library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;

entity mod10 is --porty we / wy
    Port(outp : out std_logic_vector(3 downto 0);
	dir : in std_logic;   
	carry: out std_logic;   
	clr : in std_logic;
	clk : in std_logic);
end mod10;

architecture Behavioral of mod10 is
signal temp : std_logic_vector(3 downto 0);
begin

process(clk,clr, dir)
begin	-- wyzeruj licznik oraz pozyczke 
	if clr = '1' then
		temp<="0000";
		carry <= '0';
	-- licz gdu narastajace zbocze na zegarze
	elsif rising_edge(clk) then
		--jesli dir "1" liczy do gory, oraz sprawdza stan licznika
		--po przepelnieni zeruje sie i ustawia pozyczke na "1"
		--analogicznie dla dir "0"
		if dir = '1' then
			if temp <= "1000" then
				temp <= temp+1;
				carry <='0';
			else
				temp <= "0000";
				carry <= '1';
			end if;		
		elsif dir = '0' then
				if temp >= "0001" then
				temp <= temp - 1;
				carry <='0';
			else
				temp <= "1001";
				carry <= '1';
			end if;
		end if;
	end if;
	outp<=temp;
end process; 
end Behavioral;
