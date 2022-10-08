library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        A               : in     vl_logic_vector(63 downto 0);
        B               : in     vl_logic_vector(63 downto 0);
        ALUControl      : in     vl_logic_vector(1 downto 0);
        ALUResult       : out    vl_logic_vector(63 downto 0)
    );
end ALU;
