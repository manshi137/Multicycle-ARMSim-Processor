LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity pm_io is
    port(
        pm_ad: in std_logic_vector(5 downto 0); --6bit address to access 64 std_logic_vectors 
        pm_ins: out std_logic_vector(31 downto 0)
    );
end pm_io;

architecture pm_arch of pm_io is
    type prog_m is array (0 to 63) of std_logic_vector(31 downto 0);
    --initalising array with 64 values, each value of 32 bits
    signal prog_mem : prog_m:=("00000000000000000000000000000001","00000000000000000000000000000010",
    "00000000000000000000000000000011","00000000000000000000000000000100",
    "00000000000000000000000000000101","00000000000000000000000000000110",
    "00000000000000000000000000000111","00000000000000000000000000001000",
    "00000000000000000000000000001001","00000000000000000000000000001010",
    "00000000000000000000000000001011","00000000000000000000000000001100",
    "00000000000000000000000000001101","00000000000000000000000000001110",
    "00000000000000000000000000001111","00000000000000000000000000010000",
    "00000000000000000000000000000001","00000000000000000000000000000010",
    "00000000000000000000000000000011","00000000000000000000000000000100",
    "00000000000000000000000000000101","00000000000000000000000000000110",
    "00000000000000000000000000000111","00000000000000000000000000001000",
    "00000000000000000000000000001001","00000000000000000000000000001010",
    "00000000000000000000000000001011","00000000000000000000000000001100",
    "00000000000000000000000000001101","00000000000000000000000000001110",
    "00000000000000000000000000001111","00000000000000000000000000010000",

    "00000000000000000000000000000001","00000000000000000000000000000010",
    "00000000000000000000000000000011","00000000000000000000000000000100",
    "00000000000000000000000000000101","00000000000000000000000000000110",
    "00000000000000000000000000000111","00000000000000000000000000001000",
    "00000000000000000000000000001001","00000000000000000000000000001010",
    "00000000000000000000000000001011","00000000000000000000000000001100",
    "00000000000000000000000000001101","00000000000000000000000000001110",
    "00000000000000000000000000001111","00000000000000000000000000010000",
    "00000000000000000000000000000001","00000000000000000000000000000010",
    "00000000000000000000000000000011","00000000000000000000000000000100",
    "00000000000000000000000000000101","00000000000000000000000000000110",
    "00000000000000000000000000000111","00000000000000000000000000001000",
    "00000000000000000000000000001001","00000000000000000000000000001010",
    "00000000000000000000000000001011","00000000000000000000000000001100",
    "00000000000000000000000000001101","00000000000000000000000000001110",
    "00000000000000000000000000001111","00000000000000000000000000010000"
    ); 
    begin
        process(pm_ad)
        begin 
            pm_ins <= prog_mem(CONV_INTEGER(pm_ad)); --address vector is converted to integer to use as index
        end process;
    end pm_arch;


