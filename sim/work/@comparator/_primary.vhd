library verilog;
use verilog.vl_types.all;
entity Comparator is
    port(
        in0             : in     vl_logic_vector(63 downto 0);
        in1             : in     vl_logic_vector(63 downto 0);
        gt              : out    vl_logic
    );
end Comparator;
