library ieee;
use ieee.std_logic_1164.all;

entity multiplex2x1 is
    generic(N: natural := 4);
    port(
        input0, input1: in std_logic_vector(N-1 downto 0);
        sel: in std_logic;
        output: out std_logic_vector(N-1 downto 0)
    );
end;

architecture a1 of multiplex2x1 is
begin
    -- INSERT YOUR CODE HERE
end;
