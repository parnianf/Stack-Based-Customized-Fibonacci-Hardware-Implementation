library verilog;
use verilog.vl_types.all;
entity \Register\ is
    port(
        clk             : in     vl_logic;
        ld              : in     vl_logic;
        \in\            : in     vl_logic_vector(63 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end \Register\;
