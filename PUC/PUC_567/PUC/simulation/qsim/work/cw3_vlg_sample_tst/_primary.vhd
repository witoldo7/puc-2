library verilog;
use verilog.vl_types.all;
entity cw3_vlg_sample_tst is
    port(
        BT1             : in     vl_logic;
        BT3             : in     vl_logic;
        SW0             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cw3_vlg_sample_tst;
