library verilog;
use verilog.vl_types.all;
entity qmult is
    generic(
        Q               : integer := 15;
        N               : integer := 32
    );
    port(
        i_multiplicand  : in     vl_logic_vector;
        i_multiplier    : in     vl_logic_vector;
        o_result        : out    vl_logic_vector;
        ovr             : out    vl_logic
    );
end qmult;
