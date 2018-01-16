library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity graycode_dist is
    generic(width: integer := 4);
    port(
        inpt0: in std_logic_vector(width-1 downto 0);
        inpt1: in std_logic_vector(width-1 downto 0);
        outp: out std_logic_vector(width-1 downto 0)
        );
end entity;

architecture distancia of graycode_dist is
    signal bin0: std_logic_vector(width-1 downto 0);
    signal bin1: std_logic_vector(width-1 downto 0);
    
    begin
        bin0(width-1) <= inpt0(width-1);
        bin1(width-1) <= inpt1(width-1);
        
    L1: for i in width-2 downto 0 generate
    begin
        bin0(i) <= inpt0(i) xor bin0(i+1);
        bin1(i) <= inpt1(i) xor bin1(i+1);
    end generate;
    
    process (bin0, bin1)
        begin
            if(bin0 > bin1) then
                outp <= std_logic_vector(unsigned(bin0) - unsigned(bin1));
            else
                outp <= std_logic_vector(unsigned(bin1) - unsigned(bin0));
            end if;
    end process;
end distancia;