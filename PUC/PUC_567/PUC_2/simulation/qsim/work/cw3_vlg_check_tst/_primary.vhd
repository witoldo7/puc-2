library verilog;
use verilog.vl_types.all;
entity cw3_vlg_check_tst is
    port(
        bcd0            : in     vl_logic_vector(3 downto 0);
        bcd1            : in     vl_logic_vector(3 downto 0);
        LED0            : in     vl_logic_vector(7 downto 0);
        LED1            : in     vl_logic_vector(7 downto 0);
        LEDG9           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end cw3_vlg_check_tst;
