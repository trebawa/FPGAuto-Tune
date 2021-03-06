library verilog;
use verilog.vl_types.all;
entity nn_multiplier is
    port(
        shift           : in     vl_logic_vector(31 downto 0);
        index           : in     vl_logic_vector(8 downto 0);
        shifted_index   : out    vl_logic_vector(10 downto 0)
    );
end nn_multiplier;
