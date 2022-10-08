library verilog;
use verilog.vl_types.all;
entity Shifter1bit is
    port(
        \in\            : in     vl_logic_vector(63 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end Shifter1bit;
