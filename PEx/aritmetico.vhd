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
    -- INSERT YOUR CODE HERE
end;