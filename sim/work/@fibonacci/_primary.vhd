library verilog;
use verilog.vl_types.all;
entity Fibonacci is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        N               : in     vl_logic_vector(4 downto 0);
        done            : out    vl_logic;
        result          : out    vl_logic_vector(63 downto 0)
    );
end Fibonacci;
