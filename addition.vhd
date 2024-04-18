library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity nn_addition is
    Port (
        inputx : in  STD_LOGIC_VECTOR(15 downto 0);
        inputy : in  STD_LOGIC_VECTOR(15 downto 0);
        output : out STD_LOGIC_VECTOR(15 downto 0)
    );
end nn_addition;

architecture Behavioral of nn_addition is
begin

    process(inputx, inputy)
        variable unsigned_A, unsigned_B : UNSIGNED(14 downto 0);
        variable sum_out                 : INTEGER;
        variable sign_out                 : std_logic ;
    begin
        unsigned_A := UNSIGNED(inputx(14 downto 0));
        unsigned_B := UNSIGNED(inputy(14 downto 0));

        if inputx(15) = inputy(15) then
            sum_out := TO_INTEGER(unsigned_A) + TO_INTEGER(unsigned_B);
            sign_out := inputx(15);
        elsif unsigned_A > unsigned_B then
            sum_out := TO_INTEGER(unsigned_A) - TO_INTEGER(unsigned_B);
            sign_out := inputx(15);
        else
            sum_out := TO_INTEGER(unsigned_B) - TO_INTEGER(unsigned_A);
            sign_out := inputy(15);
        end if;

        output <= sign_out  & std_logic_vector(TO_UNSIGNED(sum_out, 15));
    end process;

end Behavioral;
