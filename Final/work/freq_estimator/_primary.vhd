library verilog;
use verilog.vl_types.all;
entity freq_estimator is
    port(
        max_phase       : in     vl_logic_vector(31 downto 0);
        max_index       : in     vl_logic_vector(9 downto 0);
        clk             : in     vl_logic;
        start           : in     vl_logic;
        done            : out    vl_logic;
        frequency       : out    vl_logic_vector(31 downto 0)
    );
end freq_estimator;
