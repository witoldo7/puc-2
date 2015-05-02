library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;

entity mod10_1 is 
Port (  outp : out std_logic_vector(3 downto 0);
	UP   : in std_logic;   
	clk  : in std_logic;  
	carry: out std_logic;   
	clr  : in std_logic;
	dir  : out std_logic;
	DOWN : in std_logic);
end mod10_1;

architecture Behavioral of mod10_1 is
signal temp : std_logic_vector(3 downto 0);
-- pomocnicze zmienne zabezpieczja wy przed inkrementowaniem z kazdym 
-- narastajacym zboczem zegara
signal up1, dw1    : std_logic; 

begin
process(clk,clr)
begin
if clr = '1' then
	temp<="0000";
	carry <= '0';
elsif rising_edge(clk) then
	-- licz w gore jesli narastajace zbocze zegara, na sygnale UP "1"
	-- poprzednia wartosc UP "0" patrz komentarz wyzej oraz DOWN "0"
	if (UP='1' and up1='0' and DOWN='0') then
		dir <= '1'; 
		if temp <= "1000" then
			temp <= temp+1;
			carry <='0';
		else
			temp <= "0000";
			carry <= '1';
		end if;		
	elsif (DOWN='1' and dw1='0' and UP='0') then
		dir <= '0';
		if temp >= "0001" then
			temp <= temp - 1;
			carry <='0';
		else
			temp <= "1001";
			carry <= '1';
		end if;
	end if;
	up1 <= UP;
	dw1 <= DOWN;
end if;
outp<=temp;
end process;  
end Behavioral;
