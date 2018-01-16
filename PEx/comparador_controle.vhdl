-- INSERT CODE HERE

--Nome do aluno: 

entity comparador_controle is
    generic(width: integer := 8);
    port(
        inpt0: in std_logic_vector(width-1 downto 0);
        inpt1: in std_logic_vector(width-1 downto 0);
        op: in std_logic;
        outp: out std_logic_vector(width-1 downto 0)
    );
end entity;

-- INSERT CODE HERE