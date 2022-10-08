library verilog;
use verilog.vl_types.all;
entity Multiplexer6to1 is
    port(
        in0             : in     vl_logic_vector(63 downto 0);
        in1             : in     vl_logic_vector(63 downto 0);
        in2             : in     vl_logic_vector(63 downto 0);
        in3             : in     vl_logic_vector(63 downto 0);
        in4             : in     vl_logic_vector(63 downto 0);
        in5             : in     vl_logic_vector(63 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end Multiplexer6to1;
