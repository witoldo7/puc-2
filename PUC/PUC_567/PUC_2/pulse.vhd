library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_signed.all; 

entity pulse is
    Port (
      clko: out std_logic;   
      clk : in std_logic);
      constant clk_period : time := 1 ns;
end pulse;

architecture Behavioral of pulse is

begin
  process(clk)                                    
      begin
        if(clk'event and clk = '1') then
			wait for clk_period/2;  --for 0.5 ns signal is '0'.
			clko <= '0';
        end if;
        if(clk'event and clk = '0') then
             clko <= '1';
             wait for clk_period/2;
             clko <= '0';
        end if;

 end process;  

end Behavioral;