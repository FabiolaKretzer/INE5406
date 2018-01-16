library ieee;
use ieee.std_logic_1164.all;
entity decodificador2x4 is
    port(
        inpt: in std_logic_vector(1 downto 0);
        enable: in std_logic;
        outp: out std_logic_vector(3 downto 0)
        );
end decodificador2x4;
architecture decoder of decodificador2x4 is
begin
    -- INSERT YOUR CODE HERE
end decoder;