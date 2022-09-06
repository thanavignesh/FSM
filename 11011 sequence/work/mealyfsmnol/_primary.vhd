library verilog;
use verilog.vl_types.all;
entity mealyfsmnol is
    generic(
        s0              : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        s1              : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        s2              : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        s3              : vl_logic_vector(1 downto 0) := (Hi1, Hi1);
        s4              : vl_logic_vector(1 downto 0) := (Hi0, Hi0)
    );
    port(
        \in\            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of s0 : constant is 2;
    attribute mti_svvh_generic_type of s1 : constant is 2;
    attribute mti_svvh_generic_type of s2 : constant is 2;
    attribute mti_svvh_generic_type of s3 : constant is 2;
    attribute mti_svvh_generic_type of s4 : constant is 2;
end mealyfsmnol;
