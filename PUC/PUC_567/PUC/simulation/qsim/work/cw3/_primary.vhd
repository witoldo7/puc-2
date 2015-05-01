library verilog;
use verilog.vl_types.all;
entity cw3 is
    port(
        LEDG9           : out    vl_logic;
        SW0             : in     vl_logic;
        BT3             : in     vl_logic;
        BT1             : in     vl_logic;
        bcd0            : out    vl_logic_vector(3 downto 0);
        bcd1            : out    vl_logic_vector(3 downto 0);
        LED0            : out    vl_logic_vector(7 downto 0);
        LED1            : out    vl_logic_vector(7 downto 0)
    );
end cw3;
