library verilog;
use verilog.vl_types.all;
entity main_fsm is
    generic(
        S_WAIT_FOR_DATA : integer := 1;
        S_POPULATE_RAM_A: integer := 2;
        S_RUN_CORDICS   : integer := 4;
        S_FIND_MAX_FREQ : integer := 8;
        S_FIND_FUND_FREQ: integer := 16;
        S_FORCE_TO_SCALE: integer := 32;
        S_DIVIDE_SHIFT  : integer := 64;
        S_RATE_MUL      : integer := 128;
        S_INTERP_INDEX  : integer := 256
    );
    port(
        clk             : in     vl_logic;
        done            : out    vl_logic;
        note_done       : out    vl_logic;
        note_name       : out    vl_logic_vector(3 downto 0);
        note_octave     : out    vl_logic_vector(2 downto 0);
        fft_done        : in     vl_logic;
        fft_address     : in     vl_logic_vector(8 downto 0);
        fft_read_valid  : in     vl_logic;
        data_in_real    : in     vl_logic_vector(17 downto 0);
        data_in_imag    : in     vl_logic_vector(17 downto 0);
        result_address  : in     vl_logic_vector(8 downto 0);
        result_data     : out    vl_logic_vector(35 downto 0)
    );
end main_fsm;
