library verilog;
use verilog.vl_types.all;
entity scale_freq_select is
    port(
        note_name       : in     vl_logic_vector(3 downto 0);
        note_octave     : in     vl_logic_vector(2 downto 0);
        greater         : in     vl_logic;
        scale           : in     vl_logic_vector(11 downto 0);
        start           : in     vl_logic;
        clk             : in     vl_logic;
        done            : out    vl_logic;
        freq_desired    : out    vl_logic_vector(31 downto 0)
    );
end scale_freq_select;
