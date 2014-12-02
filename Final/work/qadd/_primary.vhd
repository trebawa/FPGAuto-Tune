library verilog;
use verilog.vl_types.all;
entity qadd is
    generic(
        Q               : integer := 15;
        N               : integer := 32
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        c               : out    vl_logic_vector
    );
end qadd;
