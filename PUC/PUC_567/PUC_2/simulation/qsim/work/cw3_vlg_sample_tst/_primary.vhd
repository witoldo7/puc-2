library verilog;
use verilog.vl_types.all;
entity cw3_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        DOWN            : in     vl_logic;
        UP              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cw3_vlg_sample_tst;
