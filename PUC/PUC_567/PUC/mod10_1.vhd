library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_signed.all; 

entity mod10_1 is
    Port ( d : out std_logic_vector(3 downto 0);
      dir: in std_logic;   
      clko: out std_logic;   
      clr: in std_logic;
      clk : in std_logic);
end mod10_1;

architecture Behavioral of mod10_1 is

begin
  process(clk)                                    
    variable temp:std_logic_vector(3 downto 0);
      begin
        if(clr='1') then temp:="0000";
          elsif(clk'event and(clk = '1')) then
				if(dir='1')then
					temp:=temp+1;
				elsif(dir='0') then
					temp:=temp-1;
				end if;
        if(temp="1010") then temp:="0000"; 
         clko<='0';
        end if;
        if(temp="1111") then temp:="1001";      
		clko<='1'; 
        end if;
        end if; 

      d<=temp;

 end process;  

end Behavioral;