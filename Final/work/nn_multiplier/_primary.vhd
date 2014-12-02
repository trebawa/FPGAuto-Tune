library verilog;
use verilog.vl_types.all;
entity nn_multiplier is
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(16 downto 0);
        p               : out    vl_logic_vector(11 downto 0)
    );
end nn_multiplier;
