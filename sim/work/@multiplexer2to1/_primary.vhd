library verilog;
use verilog.vl_types.all;
entity Multiplexer2to1 is
    port(
        in0             : in     vl_logic_vector(63 downto 0);
        in1             : in     vl_logic_vector(63 downto 0);
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end Multiplexer2to1;
