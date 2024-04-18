library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity f_c_mul is
    Port (
        inputx : in STD_LOGIC_VECTOR(7 downto 0);
        inputy : in STD_LOGIC_VECTOR(7 downto 0);
        output : out STD_LOGIC_VECTOR(7 downto 0)
    );
end f_c_mul;

architecture Behavioral of f_c_mul is

	 signal sign_bit : STD_LOGIC_VECTOR(7 downto 0);
	 

begin
      sign_bit(7) <= inputx(7) xor inputy(7) ;
      sign_bit(6 downto 0) <= std_logic_vector(to_unsigned((to_integer(unsigned(inputy(6 downto 0))) *(to_integer(unsigned(inputx(6 downto 0))))),7)) ;
    output <= "00000000" when ((inputx = "00000000") or (inputy = "00000000")) else sign_bit ;

            -- Check if either input is zero


end Behavioral;
