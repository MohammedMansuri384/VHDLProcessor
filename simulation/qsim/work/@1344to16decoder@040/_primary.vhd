library verilog;
use verilog.vl_types.all;
entity \4to16decoder\ is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        states          : in     vl_logic_vector(0 to 3);
        En              : in     vl_logic
    );
end \4to16decoder\;
