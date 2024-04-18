library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity nn_multiplication is
    Port (
        inputx : in STD_LOGIC_VECTOR(15 downto 0);
        inputy : in STD_LOGIC_VECTOR(15 downto 0);
        output : out STD_LOGIC_VECTOR(15 downto 0)
    );
end nn_multiplication;

architecture Behavioral of nn_multiplication is

    signal unsigned_A, unsigned_B : UNSIGNED(15 downto 0);
	 signal unsigned_x, unsigned_y : UNSIGNED(14 downto 0);
	 signal mul_out : STD_LOGIC_VECTOR(32 downto 0);
	 signal mul_result : INTEGER;
	 signal sign_bit : STD_LOGIC_VECTOR(15 downto 0);
	 

begin

     unsigned_A <= unsigned(inputx);
     unsigned_B <= unsigned(inputy);
	 unsigned_x <= unsigned_A(14 downto 0);
     unsigned_y <= unsigned_B(14 downto 0);
     
      mul_result <= to_integer(unsigned_y) * to_integer(unsigned_x);
      mul_out <= std_logic_vector(shift_right(to_unsigned(mul_result, mul_out'length), 8)) ;
      sign_bit(15) <= inputx(15) xor inputy(15) ;
      sign_bit(14 downto 0) <= mul_out(14 downto 0);
    output <= "0000000000000000" when ((inputx = "0000000000000000") or (inputy = "0000000000000000")) else sign_bit ;

            -- Check if either input is zero


end Behavioral;
