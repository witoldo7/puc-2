library ieee;
use ieee.std_logic_1164.all;

entity foo is
	Port ( clk1 : out std_logic := '0');
end;
architecture behave of foo is
    signal clk: std_logic := '0';
begin
clk <=  '1' after 0.5 ns when clk = '0' else
        '0' after 0.5 ns when clk = '1';
clk1<=clk;
end;