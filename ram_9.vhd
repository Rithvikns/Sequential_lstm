library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram_9 is
    Port ( clk : in std_logic;
we : in std_logic;
a : in STD_LOGIC_vector(9 downto 0);
di : in std_logic_vector(7 downto 0);
do : out std_logic_vector(7 downto 0)
);
end ram_9;

architecture syn of ram_9 is

    type ram_type is array (0 to 783) of std_logic_vector(7 downto 0);
    signal ram : ram_type := ( 
"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000001","00000001","00000001","00000001","00000000","00000001","00000001","00000001","00000001","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000001","00000001","00000010","00000010","00000010","00000010","00000010","00000010","00000011","00000011","00000100","00000010","00000001","00000010","00000001","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000001","00000010","00000001","00000011","00000011","00000011","00000011","00000010","00000011","00000010","00000010","00000001","00000000","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000001","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","10000001","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","10000001","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000000","00000001","00000000","00000001","00000000","00000000","00000000","10000001","10000001","10000001","10000001","10000001","10000001","10000001","10000001","10000001","00000000","10000001","00000000","00000000","10000001","10000001","10000001","00000000","00000000","00000001","00000001","00000001","00000000","00000001","00000000","00000000","10000001","10000001","10000001","00000000","10000001","00000000","00000000","00000000","00000000","00000000","10000001","10000001","10000001","10000001","10000001","10000001","10000001","10000010","10000010","10000010","10000010","00000000","00000001","00000001","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","10000001","10000001","00000000","00000000","00000000","10000001","10000001","10000001","00000000","00000000","00000000","00000001","00000001","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000001","00000000","00000000","00000001","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000010","00000000","00000001","00000001","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000001","00000001","00000001","00000001","00000001","00000001","00000000","00000001","00000000","00000000","00000000","00000001","00000001","00000000","10000001","10000001","10000001","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000001","10000001","00000001","00000000","00000001","00000001","00000001","00000001","00000000","00000000","10000001","10000001","10000001","10000001","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000001","00000000","00000001","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000001","00000000","00000010","00000001","00000000","00000000","00000000","00000001","00000001","00000000","00000001","00000000","00000000","00000001","00000001","00000001","00000001","00000001","00000000","00000001","00000000","00000000","00000001","00000000","00000000","00000001","00000001","00000000","00000001","00000001","00000010","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000001","00000001","00000000","00000000","00000001","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000001","00000000","00000000","00000001","00000001","00000000","00000000","00000001","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000001","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000001","00000000","00000001","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","10000001","10000001","10000001","10000001","10000001","10000001","00000000","10000001","10000001","10000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000001","00000000","10000001","10000001","10000001","10000001","10000001","00000000","00000000","00000000","00000000","00000000");
begin
process (clk)
begin
if (clk'event and clk = '1') then
if (we = '1') then
RAM(conv_integer(a)) <= di;
end if;
end if;
end process;
do <= RAM(conv_integer(a));
end syn;
