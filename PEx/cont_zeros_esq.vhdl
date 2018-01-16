library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_zeros_esq is
    port(
        inpt: in std_logic_vector(3 downto 0);
        outp: out std_logic_vector(2 downto 0)
        );
end entity;

architecture contador of cont_zeros_esq is
    begin
        outp <= "100" when inpt = "0000" else
                "011" when inpt = "0001" else
                "010" when inpt = "0010" or inpt = "0011" else
                "001" when inpt = "0100" or inpt = "0101" or inpt = "0110" or inpt = "0111" else
                "000";
end architecture;