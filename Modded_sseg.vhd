LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Modded_sseg IS
PORT (
bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
leds: OUT STD_LOGIC_VECTOR(0 TO 6)
);
END Modded_sseg;

ARCHITECTURE Behavior OF Modded_sseg IS
BEGIN
PROCESS (bcd)
BEGIN
CASE bcd IS   -- abcdefg
WHEN "0000" => leds <= "1101010"; --even
WHEN "0001" => leds <= "1000100"; --odd
WHEN OTHERS => leds <= "-------";
END CASE;
END PROCESS;
END Behavior;