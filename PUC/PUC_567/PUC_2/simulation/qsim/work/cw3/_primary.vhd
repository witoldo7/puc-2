library verilog;
use verilog.vl_types.all;
entity cw3 is
    port(
        LEDG9           : out    vl_logic;
        UP              : in     vl_logic;
        clk             : in     vl_logic;
        DOWN            : in     vl_logic;
        bcd0            : out    vl_logic_vector(3 downto 0);
        bcd1            : out    vl_logic_vector(3 downto 0);
        LED0            : out    vl_logic_vector(7 downto 0);
        LED1            : out    vl_logic_vector(7 downto 0)
    );
end cw3;
