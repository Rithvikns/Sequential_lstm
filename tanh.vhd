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

entity tanh is
	port (
		num:in integer ;
		y: out STD_LOGIC_VECTOR(15 downto 0)
		);
end tanh;

architecture Behavioral of tanh is
begin 

y <= "0000000000000000" when  (num = 0 or num = 1 or num = 32768) else
"0000000000000001" when  (num = 2 ) else
"0000000000000010" when  (num = 3 ) else
"0000000000000011" when  (num = 4 ) else
"0000000000000100" when  (num = 5 ) else
"0000000000000101" when  (num = 6 ) else
"0000000000000110" when  (num = 7 ) else
"0000000000000111" when  (num = 8 ) else
"0000000000001000" when  (num = 9 ) else
"0000000000001001" when  (num = 10 ) else
"0000000000001010" when  (num = 11 ) else
"0000000000001011" when  (num = 12 ) else
"0000000000001100" when  (num = 13 ) else
"0000000000001101" when  (num = 14 ) else
"0000000000001110" when  (num = 15 ) else
"0000000000001111" when  (num = 16 ) else
"0000000000010000" when  (num = 17 ) else
"0000000000010001" when  (num = 18 ) else
"0000000000010010" when  (num = 19 ) else
"0000000000010011" when  (num = 20 ) else
"0000000000010100" when  (num = 21 ) else
"0000000000010101" when  (num = 22 ) else
"0000000000010110" when  (num = 23 ) else
"0000000000010111" when  (num = 24 ) else
"0000000000011000" when  (num = 25 ) else
"0000000000011001" when  (num = 26 ) else
"0000000000011010" when  (num = 27 ) else
"0000000000011011" when  (num = 28 ) else
"0000000000011100" when  (num = 29 ) else
"0000000000011101" when  (num = 30 ) else
"0000000000011110" when  (num = 31 ) else
"0000000000011111" when  (num = 32 ) else
"0000000000100000" when  (num = 33 ) else
"0000000000100001" when  (num = 34 ) else
"0000000000100010" when  (num = 35 ) else
"0000000000100011" when  (num = 36 ) else
"0000000000100100" when  (num = 37 ) else
"0000000000100101" when  (num = 38 ) else
"0000000000100110" when  (num = 39 ) else
"0000000000100111" when  (num = 40 ) else
"0000000000101000" when  (num = 41 ) else
"0000000000101001" when  (num = 42 ) else
"0000000000101010" when  (num = 43 ) else
"0000000000101011" when  (num = 44 ) else
"0000000000101100" when  (num = 45 ) else
"0000000000101101" when  (num = 46 ) else
"0000000000101110" when  (num = 47 ) else
"0000000000101111" when  (num = 48 ) else
"0000000000110000" when  (num = 49 ) else
"0000000000110001" when  (num = 50 ) else
"0000000000110010" when  (num = 51 ) else
"0000000000110011" when  (num = 52 ) else
"0000000000110100" when  (num = 53 ) else
"0000000000110101" when  (num = 54 ) else
"0000000000110110" when  (num = 55 ) else
"0000000000110111" when  (num = 56 ) else
"0000000000111000" when  (num = 57 ) else
"0000000000111001" when  (num >= 58 and num <= 59) else
"0000000000111010" when  (num = 60 ) else
"0000000000111011" when  (num = 61 ) else
"0000000000111100" when  (num = 62 ) else
"0000000000111101" when  (num = 63 ) else
"0000000000111110" when  (num = 64 ) else
"0000000000111111" when  (num = 65 ) else
"0000000001000000" when  (num = 66 ) else
"0000000001000001" when  (num = 67 ) else
"0000000001000010" when  (num = 68 ) else
"0000000001000011" when  (num = 69 ) else
"0000000001000100" when  (num = 70 ) else
"0000000001000101" when  (num = 71 ) else
"0000000001000110" when  (num = 72 ) else
"0000000001000111" when  (num = 73 ) else
"0000000001001000" when  (num >= 74 and num <= 75) else
"0000000001001001" when  (num = 76 ) else
"0000000001001010" when  (num = 77 ) else
"0000000001001011" when  (num = 78 ) else
"0000000001001100" when  (num = 79 ) else
"0000000001001101" when  (num = 80 ) else
"0000000001001110" when  (num = 81 ) else
"0000000001001111" when  (num = 82 ) else
"0000000001010000" when  (num = 83 ) else
"0000000001010001" when  (num = 84 ) else
"0000000001010010" when  (num >= 85 and num <= 86) else
"0000000001010011" when  (num = 87 ) else
"0000000001010100" when  (num = 88 ) else
"0000000001010101" when  (num = 89 ) else
"0000000001010110" when  (num = 90 ) else
"0000000001010111" when  (num = 91 ) else
"0000000001011000" when  (num = 92 ) else
"0000000001011001" when  (num >= 93 and num <= 94) else
"0000000001011010" when  (num = 95 ) else
"0000000001011011" when  (num = 96 ) else
"0000000001011100" when  (num = 97 ) else
"0000000001011101" when  (num = 98 ) else
"0000000001011110" when  (num = 99 ) else
"0000000001011111" when  (num = 100 ) else
"0000000001100000" when  (num >= 101 and num <= 102) else
"0000000001100001" when  (num = 103 ) else
"0000000001100010" when  (num = 104 ) else
"0000000001100011" when  (num = 105 ) else
"0000000001100100" when  (num = 106 ) else
"0000000001100101" when  (num = 107 ) else
"0000000001100110" when  (num >= 108 and num <= 109) else
"0000000001100111" when  (num = 110 ) else
"0000000001101000" when  (num = 111 ) else
"0000000001101001" when  (num = 112 ) else
"0000000001101010" when  (num = 113 ) else
"0000000001101011" when  (num >= 114 and num <= 115) else
"0000000001101100" when  (num = 116 ) else
"0000000001101101" when  (num = 117 ) else
"0000000001101110" when  (num = 118 ) else
"0000000001101111" when  (num >= 119 and num <= 120) else
"0000000001110000" when  (num = 121 ) else
"0000000001110001" when  (num = 122 ) else
"0000000001110010" when  (num = 123 ) else
"0000000001110011" when  (num >= 124 and num <= 125) else
"0000000001110100" when  (num = 126 ) else
"0000000001110101" when  (num = 127 ) else
"0000000001110110" when  (num = 128 ) else
"0000000001110111" when  (num >= 129 and num <= 130) else
"0000000001111000" when  (num = 131 ) else
"0000000001111001" when  (num = 132 ) else
"0000000001111010" when  (num >= 133 and num <= 134) else
"0000000001111011" when  (num = 135 ) else
"0000000001111100" when  (num = 136 ) else
"0000000001111101" when  (num = 137 ) else
"0000000001111110" when  (num >= 138 and num <= 139) else
"0000000001111111" when  (num = 140 ) else
"0000000010000000" when  (num = 141 ) else
"0000000010000001" when  (num >= 142 and num <= 143) else
"0000000010000010" when  (num = 144 ) else
"0000000010000011" when  (num >= 145 and num <= 146) else
"0000000010000100" when  (num = 147 ) else
"0000000010000101" when  (num = 148 ) else
"0000000010000110" when  (num >= 149 and num <= 150) else
"0000000010000111" when  (num = 151 ) else
"0000000010001000" when  (num = 152 ) else
"0000000010001001" when  (num >= 153 and num <= 154) else
"0000000010001010" when  (num = 155 ) else
"0000000010001011" when  (num >= 156 and num <= 157) else
"0000000010001100" when  (num = 158 ) else
"0000000010001101" when  (num >= 159 and num <= 160) else
"0000000010001110" when  (num = 161 ) else
"0000000010001111" when  (num = 162 ) else
"0000000010010000" when  (num >= 163 and num <= 164) else
"0000000010010001" when  (num = 165 ) else
"0000000010010010" when  (num >= 166 and num <= 167) else
"0000000010010011" when  (num = 168 ) else
"0000000010010100" when  (num >= 169 and num <= 170) else
"0000000010010101" when  (num = 171 ) else
"0000000010010110" when  (num >= 172 and num <= 173) else
"0000000010010111" when  (num = 174 ) else
"0000000010011000" when  (num >= 175 and num <= 176) else
"0000000010011001" when  (num >= 177 and num <= 178) else
"0000000010011010" when  (num = 179 ) else
"0000000010011011" when  (num >= 180 and num <= 181) else
"0000000010011100" when  (num = 182 ) else
"0000000010011101" when  (num >= 183 and num <= 184) else
"0000000010011110" when  (num >= 185 and num <= 186) else
"0000000010011111" when  (num = 187 ) else
"0000000010100000" when  (num >= 188 and num <= 189) else
"0000000010100001" when  (num = 190 ) else
"0000000010100010" when  (num >= 191 and num <= 192) else
"0000000010100011" when  (num >= 193 and num <= 194) else
"0000000010100100" when  (num >= 195 and num <= 196) else
"0000000010100101" when  (num = 197 ) else
"0000000010100110" when  (num >= 198 and num <= 199) else
"0000000010100111" when  (num >= 200 and num <= 201) else
"0000000010101000" when  (num >= 202 and num <= 203) else
"0000000010101001" when  (num = 204 ) else
"0000000010101010" when  (num >= 205 and num <= 206) else
"0000000010101011" when  (num >= 207 and num <= 208) else
"0000000010101100" when  (num >= 209 and num <= 210) else
"0000000010101101" when  (num >= 211 and num <= 212) else
"0000000010101110" when  (num = 213 ) else
"0000000010101111" when  (num >= 214 and num <= 215) else
"0000000010110000" when  (num >= 216 and num <= 217) else
"0000000010110001" when  (num >= 218 and num <= 219) else
"0000000010110010" when  (num >= 220 and num <= 221) else
"0000000010110011" when  (num >= 222 and num <= 223) else
"0000000010110100" when  (num >= 224 and num <= 225) else
"0000000010110101" when  (num >= 226 and num <= 227) else
"0000000010110110" when  (num >= 228 and num <= 229) else
"0000000010110111" when  (num >= 230 and num <= 231) else
"0000000010111000" when  (num >= 232 and num <= 233) else
"0000000010111001" when  (num >= 234 and num <= 235) else
"0000000010111010" when  (num >= 236 and num <= 238) else
"0000000010111011" when  (num >= 239 and num <= 240) else
"0000000010111100" when  (num >= 241 and num <= 242) else
"0000000010111101" when  (num >= 243 and num <= 244) else
"0000000010111110" when  (num >= 245 and num <= 246) else
"0000000010111111" when  (num >= 247 and num <= 249) else
"0000000011000000" when  (num >= 250 and num <= 251) else
"0000000011000001" when  (num >= 252 and num <= 253) else
"0000000011000010" when  (num >= 254 and num <= 256) else
"0000000011000011" when  (num >= 257 and num <= 258) else
"0000000011000100" when  (num >= 259 and num <= 260) else
"0000000011000101" when  (num >= 261 and num <= 263) else
"0000000011000110" when  (num >= 264 and num <= 265) else
"0000000011000111" when  (num >= 266 and num <= 268) else
"0000000011001000" when  (num >= 269 and num <= 271) else
"0000000011001001" when  (num >= 272 and num <= 273) else
"0000000011001010" when  (num >= 274 and num <= 276) else
"0000000011001011" when  (num >= 277 and num <= 279) else
"0000000011001100" when  (num >= 280 and num <= 281) else
"0000000011001101" when  (num >= 282 and num <= 284) else
"0000000011001110" when  (num >= 285 and num <= 287) else
"0000000011001111" when  (num >= 288 and num <= 290) else
"0000000011010000" when  (num >= 291 and num <= 293) else
"0000000011010001" when  (num >= 294 and num <= 296) else
"0000000011010010" when  (num >= 297 and num <= 299) else
"0000000011010011" when  (num >= 300 and num <= 302) else
"0000000011010100" when  (num >= 303 and num <= 305) else
"0000000011010101" when  (num >= 306 and num <= 309) else
"0000000011010110" when  (num >= 310 and num <= 312) else
"0000000011010111" when  (num >= 313 and num <= 315) else
"0000000011011000" when  (num >= 316 and num <= 319) else
"0000000011011001" when  (num >= 320 and num <= 323) else
"0000000011011010" when  (num >= 324 and num <= 326) else
"0000000011011011" when  (num >= 327 and num <= 330) else
"0000000011011100" when  (num >= 331 and num <= 334) else
"0000000011011101" when  (num >= 335 and num <= 338) else
"0000000011011110" when  (num >= 339 and num <= 342) else
"0000000011011111" when  (num >= 343 and num <= 346) else
"0000000011100000" when  (num >= 347 and num <= 350) else
"0000000011100001" when  (num >= 351 and num <= 355) else
"0000000011100010" when  (num >= 356 and num <= 360) else
"0000000011100011" when  (num >= 361 and num <= 364) else
"0000000011100100" when  (num >= 365 and num <= 369) else
"0000000011100101" when  (num >= 370 and num <= 374) else
"0000000011100110" when  (num >= 375 and num <= 380) else
"0000000011100111" when  (num >= 381 and num <= 385) else
"0000000011101000" when  (num >= 386 and num <= 391) else
"0000000011101001" when  (num >= 392 and num <= 397) else
"0000000011101010" when  (num >= 398 and num <= 403) else
"0000000011101011" when  (num >= 404 and num <= 409) else
"0000000011101100" when  (num >= 410 and num <= 416) else
"0000000011101101" when  (num >= 417 and num <= 423) else
"0000000011101110" when  (num >= 424 and num <= 431) else
"0000000011101111" when  (num >= 432 and num <= 439) else
"0000000011110000" when  (num >= 440 and num <= 448) else
"0000000011110001" when  (num >= 449 and num <= 457) else
"0000000011110010" when  (num >= 458 and num <= 466) else
"0000000011110011" when  (num >= 467 and num <= 477) else
"0000000011110100" when  (num >= 478 and num <= 488) else
"0000000011110101" when  (num >= 489 and num <= 501) else
"0000000011110110" when  (num >= 502 and num <= 514) else
"0000000011110111" when  (num >= 515 and num <= 530) else
"0000000011111000" when  (num >= 531 and num <= 547) else
"0000000011111001" when  (num >= 548 and num <= 567) else
"0000000011111010" when  (num >= 568 and num <= 591) else
"0000000011111011" when  (num >= 592 and num <= 620) else
"0000000011111100" when  (num >= 621 and num <= 657) else
"0000000011111101" when  (num >= 658 and num <= 709) else
"0000000011111110" when  (num >= 710 and num <= 798) else
"0000000011111111" when  (num >= 799 and num <= 4861) else
"0000000100000000" when  (num >= 4862 and num <= 32767) else
"1000000000000000" when  (num = 32769 ) else
"1000000000000001" when  (num = 32770 ) else
"1000000000000010" when  (num = 32771 ) else
"1000000000000011" when  (num = 32772 ) else
"1000000000000100" when  (num = 32773 ) else
"1000000000000101" when  (num = 32774 ) else
"1000000000000110" when  (num = 32775 ) else
"1000000000000111" when  (num = 32776 ) else
"1000000000001000" when  (num = 32777 ) else
"1000000000001001" when  (num = 32778 ) else
"1000000000001010" when  (num = 32779 ) else
"1000000000001011" when  (num = 32780 ) else
"1000000000001100" when  (num = 32781 ) else
"1000000000001101" when  (num = 32782 ) else
"1000000000001110" when  (num = 32783 ) else
"1000000000001111" when  (num = 32784 ) else
"1000000000010000" when  (num = 32785 ) else
"1000000000010001" when  (num = 32786 ) else
"1000000000010010" when  (num = 32787 ) else
"1000000000010011" when  (num = 32788 ) else
"1000000000010100" when  (num = 32789 ) else
"1000000000010101" when  (num = 32790 ) else
"1000000000010110" when  (num = 32791 ) else
"1000000000010111" when  (num = 32792 ) else
"1000000000011000" when  (num = 32793 ) else
"1000000000011001" when  (num = 32794 ) else
"1000000000011010" when  (num = 32795 ) else
"1000000000011011" when  (num = 32796 ) else
"1000000000011100" when  (num = 32797 ) else
"1000000000011101" when  (num = 32798 ) else
"1000000000011110" when  (num = 32799 ) else
"1000000000011111" when  (num = 32800 ) else
"1000000000100000" when  (num = 32801 ) else
"1000000000100001" when  (num = 32802 ) else
"1000000000100010" when  (num = 32803 ) else
"1000000000100011" when  (num = 32804 ) else
"1000000000100100" when  (num = 32805 ) else
"1000000000100101" when  (num = 32806 ) else
"1000000000100110" when  (num = 32807 ) else
"1000000000100111" when  (num = 32808 ) else
"1000000000101000" when  (num = 32809 ) else
"1000000000101001" when  (num = 32810 ) else
"1000000000101010" when  (num = 32811 ) else
"1000000000101011" when  (num = 32812 ) else
"1000000000101100" when  (num = 32813 ) else
"1000000000101101" when  (num = 32814 ) else
"1000000000101110" when  (num = 32815 ) else
"1000000000101111" when  (num = 32816 ) else
"1000000000110000" when  (num = 32817 ) else
"1000000000110001" when  (num = 32818 ) else
"1000000000110010" when  (num = 32819 ) else
"1000000000110011" when  (num = 32820 ) else
"1000000000110100" when  (num = 32821 ) else
"1000000000110101" when  (num = 32822 ) else
"1000000000110110" when  (num = 32823 ) else
"1000000000110111" when  (num = 32824 ) else
"1000000000111000" when  (num = 32825 ) else
"1000000000111001" when  (num >= 32826 and num <= 32827) else
"1000000000111010" when  (num = 32828 ) else
"1000000000111011" when  (num = 32829 ) else
"1000000000111100" when  (num = 32830 ) else
"1000000000111101" when  (num = 32831 ) else
"1000000000111110" when  (num = 32832 ) else
"1000000000111111" when  (num = 32833 ) else
"1000000001000000" when  (num = 32834 ) else
"1000000001000001" when  (num = 32835 ) else
"1000000001000010" when  (num = 32836 ) else
"1000000001000011" when  (num = 32837 ) else
"1000000001000100" when  (num = 32838 ) else
"1000000001000101" when  (num = 32839 ) else
"1000000001000110" when  (num = 32840 ) else
"1000000001000111" when  (num = 32841 ) else
"1000000001001000" when  (num >= 32842 and num <= 32843) else
"1000000001001001" when  (num = 32844 ) else
"1000000001001010" when  (num = 32845 ) else
"1000000001001011" when  (num = 32846 ) else
"1000000001001100" when  (num = 32847 ) else
"1000000001001101" when  (num = 32848 ) else
"1000000001001110" when  (num = 32849 ) else
"1000000001001111" when  (num = 32850 ) else
"1000000001010000" when  (num = 32851 ) else
"1000000001010001" when  (num = 32852 ) else
"1000000001010010" when  (num >= 32853 and num <= 32854) else
"1000000001010011" when  (num = 32855 ) else
"1000000001010100" when  (num = 32856 ) else
"1000000001010101" when  (num = 32857 ) else
"1000000001010110" when  (num = 32858 ) else
"1000000001010111" when  (num = 32859 ) else
"1000000001011000" when  (num = 32860 ) else
"1000000001011001" when  (num >= 32861 and num <= 32862) else
"1000000001011010" when  (num = 32863 ) else
"1000000001011011" when  (num = 32864 ) else
"1000000001011100" when  (num = 32865 ) else
"1000000001011101" when  (num = 32866 ) else
"1000000001011110" when  (num = 32867 ) else
"1000000001011111" when  (num = 32868 ) else
"1000000001100000" when  (num >= 32869 and num <= 32870) else
"1000000001100001" when  (num = 32871 ) else
"1000000001100010" when  (num = 32872 ) else
"1000000001100011" when  (num = 32873 ) else
"1000000001100100" when  (num = 32874 ) else
"1000000001100101" when  (num = 32875 ) else
"1000000001100110" when  (num >= 32876 and num <= 32877) else
"1000000001100111" when  (num = 32878 ) else
"1000000001101000" when  (num = 32879 ) else
"1000000001101001" when  (num = 32880 ) else
"1000000001101010" when  (num = 32881 ) else
"1000000001101011" when  (num >= 32882 and num <= 32883) else
"1000000001101100" when  (num = 32884 ) else
"1000000001101101" when  (num = 32885 ) else
"1000000001101110" when  (num = 32886 ) else
"1000000001101111" when  (num >= 32887 and num <= 32888) else
"1000000001110000" when  (num = 32889 ) else
"1000000001110001" when  (num = 32890 ) else
"1000000001110010" when  (num = 32891 ) else
"1000000001110011" when  (num >= 32892 and num <= 32893) else
"1000000001110100" when  (num = 32894 ) else
"1000000001110101" when  (num = 32895 ) else
"1000000001110110" when  (num = 32896 ) else
"1000000001110111" when  (num >= 32897 and num <= 32898) else
"1000000001111000" when  (num = 32899 ) else
"1000000001111001" when  (num = 32900 ) else
"1000000001111010" when  (num >= 32901 and num <= 32902) else
"1000000001111011" when  (num = 32903 ) else
"1000000001111100" when  (num = 32904 ) else
"1000000001111101" when  (num = 32905 ) else
"1000000001111110" when  (num >= 32906 and num <= 32907) else
"1000000001111111" when  (num = 32908 ) else
"1000000010000000" when  (num = 32909 ) else
"1000000010000001" when  (num >= 32910 and num <= 32911) else
"1000000010000010" when  (num = 32912 ) else
"1000000010000011" when  (num >= 32913 and num <= 32914) else
"1000000010000100" when  (num = 32915 ) else
"1000000010000101" when  (num = 32916 ) else
"1000000010000110" when  (num >= 32917 and num <= 32918) else
"1000000010000111" when  (num = 32919 ) else
"1000000010001000" when  (num = 32920 ) else
"1000000010001001" when  (num >= 32921 and num <= 32922) else
"1000000010001010" when  (num = 32923 ) else
"1000000010001011" when  (num >= 32924 and num <= 32925) else
"1000000010001100" when  (num = 32926 ) else
"1000000010001101" when  (num >= 32927 and num <= 32928) else
"1000000010001110" when  (num = 32929 ) else
"1000000010001111" when  (num = 32930 ) else
"1000000010010000" when  (num >= 32931 and num <= 32932) else
"1000000010010001" when  (num = 32933 ) else
"1000000010010010" when  (num >= 32934 and num <= 32935) else
"1000000010010011" when  (num = 32936 ) else
"1000000010010100" when  (num >= 32937 and num <= 32938) else
"1000000010010101" when  (num = 32939 ) else
"1000000010010110" when  (num >= 32940 and num <= 32941) else
"1000000010010111" when  (num = 32942 ) else
"1000000010011000" when  (num >= 32943 and num <= 32944) else
"1000000010011001" when  (num >= 32945 and num <= 32946) else
"1000000010011010" when  (num = 32947 ) else
"1000000010011011" when  (num >= 32948 and num <= 32949) else
"1000000010011100" when  (num = 32950 ) else
"1000000010011101" when  (num >= 32951 and num <= 32952) else
"1000000010011110" when  (num >= 32953 and num <= 32954) else
"1000000010011111" when  (num = 32955 ) else
"1000000010100000" when  (num >= 32956 and num <= 32957) else
"1000000010100001" when  (num = 32958 ) else
"1000000010100010" when  (num >= 32959 and num <= 32960) else
"1000000010100011" when  (num >= 32961 and num <= 32962) else
"1000000010100100" when  (num >= 32963 and num <= 32964) else
"1000000010100101" when  (num = 32965 ) else
"1000000010100110" when  (num >= 32966 and num <= 32967) else
"1000000010100111" when  (num >= 32968 and num <= 32969) else
"1000000010101000" when  (num >= 32970 and num <= 32971) else
"1000000010101001" when  (num = 32972 ) else
"1000000010101010" when  (num >= 32973 and num <= 32974) else
"1000000010101011" when  (num >= 32975 and num <= 32976) else
"1000000010101100" when  (num >= 32977 and num <= 32978) else
"1000000010101101" when  (num >= 32979 and num <= 32980) else
"1000000010101110" when  (num = 32981 ) else
"1000000010101111" when  (num >= 32982 and num <= 32983) else
"1000000010110000" when  (num >= 32984 and num <= 32985) else
"1000000010110001" when  (num >= 32986 and num <= 32987) else
"1000000010110010" when  (num >= 32988 and num <= 32989) else
"1000000010110011" when  (num >= 32990 and num <= 32991) else
"1000000010110100" when  (num >= 32992 and num <= 32993) else
"1000000010110101" when  (num >= 32994 and num <= 32995) else
"1000000010110110" when  (num >= 32996 and num <= 32997) else
"1000000010110111" when  (num >= 32998 and num <= 32999) else
"1000000010111000" when  (num >= 33000 and num <= 33001) else
"1000000010111001" when  (num >= 33002 and num <= 33003) else
"1000000010111010" when  (num >= 33004 and num <= 33006) else
"1000000010111011" when  (num >= 33007 and num <= 33008) else
"1000000010111100" when  (num >= 33009 and num <= 33010) else
"1000000010111101" when  (num >= 33011 and num <= 33012) else
"1000000010111110" when  (num >= 33013 and num <= 33014) else
"1000000010111111" when  (num >= 33015 and num <= 33017) else
"1000000011000000" when  (num >= 33018 and num <= 33019) else
"1000000011000001" when  (num >= 33020 and num <= 33021) else
"1000000011000010" when  (num >= 33022 and num <= 33024) else
"1000000011000011" when  (num >= 33025 and num <= 33026) else
"1000000011000100" when  (num >= 33027 and num <= 33028) else
"1000000011000101" when  (num >= 33029 and num <= 33031) else
"1000000011000110" when  (num >= 33032 and num <= 33033) else
"1000000011000111" when  (num >= 33034 and num <= 33036) else
"1000000011001000" when  (num >= 33037 and num <= 33039) else
"1000000011001001" when  (num >= 33040 and num <= 33041) else
"1000000011001010" when  (num >= 33042 and num <= 33044) else
"1000000011001011" when  (num >= 33045 and num <= 33047) else
"1000000011001100" when  (num >= 33048 and num <= 33049) else
"1000000011001101" when  (num >= 33050 and num <= 33052) else
"1000000011001110" when  (num >= 33053 and num <= 33055) else
"1000000011001111" when  (num >= 33056 and num <= 33058) else
"1000000011010000" when  (num >= 33059 and num <= 33061) else
"1000000011010001" when  (num >= 33062 and num <= 33064) else
"1000000011010010" when  (num >= 33065 and num <= 33067) else
"1000000011010011" when  (num >= 33068 and num <= 33070) else
"1000000011010100" when  (num >= 33071 and num <= 33073) else
"1000000011010101" when  (num >= 33074 and num <= 33077) else
"1000000011010110" when  (num >= 33078 and num <= 33080) else
"1000000011010111" when  (num >= 33081 and num <= 33083) else
"1000000011011000" when  (num >= 33084 and num <= 33087) else
"1000000011011001" when  (num >= 33088 and num <= 33091) else
"1000000011011010" when  (num >= 33092 and num <= 33094) else
"1000000011011011" when  (num >= 33095 and num <= 33098) else
"1000000011011100" when  (num >= 33099 and num <= 33102) else
"1000000011011101" when  (num >= 33103 and num <= 33106) else
"1000000011011110" when  (num >= 33107 and num <= 33110) else
"1000000011011111" when  (num >= 33111 and num <= 33114) else
"1000000011100000" when  (num >= 33115 and num <= 33118) else
"1000000011100001" when  (num >= 33119 and num <= 33123) else
"1000000011100010" when  (num >= 33124 and num <= 33128) else
"1000000011100011" when  (num >= 33129 and num <= 33132) else
"1000000011100100" when  (num >= 33133 and num <= 33137) else
"1000000011100101" when  (num >= 33138 and num <= 33142) else
"1000000011100110" when  (num >= 33143 and num <= 33148) else
"1000000011100111" when  (num >= 33149 and num <= 33153) else
"1000000011101000" when  (num >= 33154 and num <= 33159) else
"1000000011101001" when  (num >= 33160 and num <= 33165) else
"1000000011101010" when  (num >= 33166 and num <= 33171) else
"1000000011101011" when  (num >= 33172 and num <= 33177) else
"1000000011101100" when  (num >= 33178 and num <= 33184) else
"1000000011101101" when  (num >= 33185 and num <= 33191) else
"1000000011101110" when  (num >= 33192 and num <= 33199) else
"1000000011101111" when  (num >= 33200 and num <= 33207) else
"1000000011110000" when  (num >= 33208 and num <= 33216) else
"1000000011110001" when  (num >= 33217 and num <= 33225) else
"1000000011110010" when  (num >= 33226 and num <= 33234) else
"1000000011110011" when  (num >= 33235 and num <= 33245) else
"1000000011110100" when  (num >= 33246 and num <= 33256) else
"1000000011110101" when  (num >= 33257 and num <= 33269) else
"1000000011110110" when  (num >= 33270 and num <= 33282) else
"1000000011110111" when  (num >= 33283 and num <= 33298) else
"1000000011111000" when  (num >= 33299 and num <= 33315) else
"1000000011111001" when  (num >= 33316 and num <= 33335) else
"1000000011111010" when  (num >= 33336 and num <= 33359) else
"1000000011111011" when  (num >= 33360 and num <= 33388) else
"1000000011111100" when  (num >= 33389 and num <= 33425) else
"1000000011111101" when  (num >= 33426 and num <= 33477) else
"1000000011111110" when  (num >= 33478 and num <= 33566) else
"1000000011111111" when  (num >= 33567 and num <= 37629) else
"1000000100000000" when  (num >= 37630 and num <= 65535) else
"0000000000000000" ;

end Behavioral;