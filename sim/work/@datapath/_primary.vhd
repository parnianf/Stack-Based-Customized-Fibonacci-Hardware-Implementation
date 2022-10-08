library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        push            : in     vl_logic;
        pop             : in     vl_logic;
        top             : in     vl_logic;
        ld1             : in     vl_logic;
        ld2             : in     vl_logic;
        ld3             : in     vl_logic;
        sel_reg1        : in     vl_logic;
        sel_reg2        : in     vl_logic;
        sel             : in     vl_logic;
        sel_res         : in     vl_logic;
        ld_res          : in     vl_logic;
        sel_stack       : in     vl_logic_vector(2 downto 0);
        N               : in     vl_logic_vector(63 downto 0);
        is_empty        : out    vl_logic;
        gt1             : out    vl_logic;
        gt2             : out    vl_logic;
        gt3             : out    vl_logic;
        reg1_sign       : out    vl_logic;
        reg2_sign       : out    vl_logic;
        res             : out    vl_logic_vector(63 downto 0)
    );
end Datapath;
