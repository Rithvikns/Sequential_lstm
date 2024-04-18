-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity f_c_sig is
	port (
		num:in integer ;
		y: out STD_LOGIC_VECTOR(15 downto 0)
		);
end f_c_sig;

architecture Behavioral of f_c_sig is
signal a : std_logic_vector (15 downto 0);
begin 

        
                 
      y <=     "0000000010000000" when  (num = 0) else
"0000000010111011" when  (num = 1) else
"0000000011100001" when  (num = 2) else
"0000000011110011" when  (num = 3) else
"0000000011111011" when  (num = 4) else
"0000000011111110" when  (num = 5) else
"0000000011111111" when  (num > 5 and num < 37) else
"0000000100000000" when  (num > 37 and num < 128) else
"0000000010000000" when  (num = 128) else
"0000000001000100" when  (num = 129) else
"0000000000011110" when  (num = 130) else
"0000000000001100" when  (num = 131) else
"0000000000000100" when  (num = 132) else
"0000000000000001" when  (num = 133) else
"0000000000000000" ;


end Behavioral;