library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aritmetico is
    generic (width: integer:= 8);
    port (
        inpt0: in signed(width-1 downto 0);
        inpt1: in signed(width-1 downto 0);
        ctrl: in std_logic_vector(1 downto 0);
        outp: out signed(width-1 downto 0)
    );
end;

architecture arch of aritmetico is
begin
    outp <= inpt0 + inpt1 when ctrl <="00" else
    inpt0 - inpt1 when ctrl <="01" else
    inpt0 + 1 when ctrl <= "10" else
    inpt0 - 1;
end;
