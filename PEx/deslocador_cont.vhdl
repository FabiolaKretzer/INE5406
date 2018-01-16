-- INSERT CODE HERE

--Nome do aluno: 

entity deslocador_cont is
    generic(width: integer := 8);
    port(
        inpt: in unsigned(width-1 downto 0);
        op: in unsigned(1 downto 0);
        outp: out unsigned(width-1 downto 0)
    );
end entity;

-- INSERT CODE HERE

