LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity udcounter is
       generic ( WIDTH : integer := 8);  
   port (CLK, UP, DOWN, RESET : in std_logic;  
   Q    : out unsigned(WIDTH-1 downto 0)  );
end entity udcounter; 

architecture udcounter_a of udcounter is
  signal cnt : unsigned(WIDTH-1 downto 0);
  signal up1, dw1    : std_logic;

      begin  
    process(RESET, CLK)  
      begin
        if RESET = '1' then  
            cnt <= (others => '0');
       elsif rising_edge(CLK) then  
            if (UP='1' and up1='0' and DOWN='0') then
                 cnt <= cnt + 1;   
            elsif (DOWN='1' and dw1='0' and UP='0') then  
                cnt <= cnt - 1;   
           --else  leave cnt unchanged
           end if;
          up1 <= UP;
          dw1 <= DOWN;
       end if;  
    end process;   
    Q <= cnt; 
    end architecture udcounter_a;