library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity f_c_add is
    Port (
        inputx : in STD_LOGIC_VECTOR(7 downto 0);
        inputy : in STD_LOGIC_VECTOR(7 downto 0);
        output : out STD_LOGIC_VECTOR(7 downto 0)
    );
end f_c_add;

architecture Behavioral of f_c_add is

	 signal sign_bit : STD_LOGIC_VECTOR(7 downto 0);
	 

begin
    process(inputx, inputy)
        variable unsigned_A, unsigned_B : UNSIGNED(6 downto 0);
        variable sum_out                 : INTEGER;
        variable sign_out                 : std_logic ;
    begin
        unsigned_A := UNSIGNED(inputx(6 downto 0));
        unsigned_B := UNSIGNED(inputy(6 downto 0));

        if inputx(7) = inputy(7) then
            sum_out := TO_INTEGER(unsigned_A) + TO_INTEGER(unsigned_B);
            sign_out := inputx(7);
        elsif unsigned_A > unsigned_B then
            sum_out := TO_INTEGER(unsigned_A) - TO_INTEGER(unsigned_B);
            sign_out := inputx(7);
        else
            sum_out := TO_INTEGER(unsigned_B) - TO_INTEGER(unsigned_A);
            sign_out := inputy(7);
        end if;

        output <= sign_out  & std_logic_vector(TO_UNSIGNED(sum_out, 7));
    end process;


            -- Check if either input is zero


end Behavioral;
