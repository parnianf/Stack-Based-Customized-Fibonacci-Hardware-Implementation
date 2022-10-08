library verilog;
use verilog.vl_types.all;
entity Stack is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        push            : in     vl_logic;
        pop             : in     vl_logic;
        top             : in     vl_logic;
        d_in            : in     vl_logic_vector(63 downto 0);
        is_empty        : out    vl_logic;
        d_out           : out    vl_logic_vector(63 downto 0)
    );
end Stack;
