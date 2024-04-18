library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity fully_connected_layer_1_3 is
    port (
        clk : in std_logic;
        x_0 : in STD_LOGIC_VECTOR(15 downto 0);
        x_1 : in STD_LOGIC_VECTOR(15 downto 0);
        x_2 : in STD_LOGIC_VECTOR(15 downto 0);
        x_3 : in STD_LOGIC_VECTOR(15 downto 0);
        x_4 : in STD_LOGIC_VECTOR(15 downto 0);
        x_5 : in STD_LOGIC_VECTOR(15 downto 0);
        x_6 : in STD_LOGIC_VECTOR(15 downto 0);
        x_7 : in STD_LOGIC_VECTOR(15 downto 0);
        x_8 : in STD_LOGIC_VECTOR(15 downto 0);
        x_9 : in STD_LOGIC_VECTOR(15 downto 0);
        y_3 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end fully_connected_layer_1_3 ;
architecture Behavioral of fully_connected_layer_1_3 is
signal store_sum : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_value : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_0 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_0 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_1 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_1 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_2 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_2 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_3 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_3 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_4 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_4 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_5 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_5 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_6 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_6 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_7 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_7 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_8 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_8 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_9 : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_weight_9 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_0 : STD_LOGIC_VECTOR(15 downto 0);
signal sum_1 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_2 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_3 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_4 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_5 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_6 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_7 : STD_LOGIC_VECTOR(15 downto 0);
signal sum_8 : STD_LOGIC_VECTOR(15 downto 0) ;

signal biases : STD_LOGIC_VECTOR(15 downto 0) ;
component ram_1_0 is
       port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(6 downto 0);
            di : in std_logic_vector(15 downto 0);
            do : out std_logic_vector(15 downto 0)
        );
end component ram_1_0 ;
component ram_sigmoid is
       port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(15 downto 0);
            di : in std_logic_vector(15 downto 0);
            do : out std_logic_vector(15 downto 0)
        );
end component ram_sigmoid ;

component  nn_addition is
	Port (
		inputx : in STD_LOGIC_VECTOR(15 downto 0);
		inputy : in STD_LOGIC_VECTOR(15 downto 0);
		output : out STD_LOGIC_VECTOR(15 downto 0));
end component nn_addition;

component  nn_multiplication is
	Port (
		inputx : in STD_LOGIC_VECTOR(15 downto 0);
		inputy : in STD_LOGIC_VECTOR(15 downto 0);
		output : out STD_LOGIC_VECTOR(15 downto 0));
end component nn_multiplication;
begin
    ut1_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0011110",
        di =>  (others => '0'),
        do => weight_0
    );
    ut2_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0011111",
        di =>  (others => '0'),
        do => weight_1
    );
    ut3_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100000",
        di =>  (others => '0'),
        do => weight_2
    );
    ut4_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100001",
        di =>  (others => '0'),
        do => weight_3
    );
    ut5_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100010",
        di =>  (others => '0'),
        do => weight_4
    );
    ut6_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100011",
        di =>  (others => '0'),
        do => weight_5
    );
    ut7_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100100",
        di =>  (others => '0'),
        do => weight_6
    );
    ut8_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100101",
        di =>  (others => '0'),
        do => weight_7
    );
    ut9_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100110",
        di =>  (others => '0'),
        do => weight_8
    );
    ut10_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "0100111",
        di =>  (others => '0'),
        do => weight_9
    );
	     ut11_ram_1_0: ram_1_0 port map(
        clk  => clk,
        we   => '0',
        a => "1100111",
        di =>  (others => '0'),
        do => biases
    );
ut1_nn_multiplication: nn_multiplication port map(
           inputx => weight_0 ,
            inputy => x_0 ,
            output => store_weight_0 );
ut2_nn_multiplication: nn_multiplication port map(
           inputx => weight_1 ,
            inputy => x_1 ,
            output => store_weight_1 );
ut3_nn_multiplication: nn_multiplication port map(
           inputx => weight_2 ,
            inputy => x_2 ,
            output => store_weight_2 );
ut4_nn_multiplication: nn_multiplication port map(
           inputx => weight_3 ,
            inputy => x_3 ,
            output => store_weight_3 );
ut5_nn_multiplication: nn_multiplication port map(
           inputx => weight_4 ,
            inputy => x_4 ,
            output => store_weight_4 );
ut6_nn_multiplication: nn_multiplication port map(
           inputx => weight_5 ,
            inputy => x_5 ,
            output => store_weight_5 );
ut7_nn_multiplication: nn_multiplication port map(
           inputx => weight_6 ,
            inputy => x_6 ,
            output => store_weight_6 );
ut8_nn_multiplication: nn_multiplication port map(
           inputx => weight_7 ,
            inputy => x_7 ,
            output => store_weight_7 );
ut9_nn_multiplication: nn_multiplication port map(
           inputx => weight_8 ,
            inputy => x_8 ,
            output => store_weight_8 );
ut10_nn_multiplication: nn_multiplication port map(
           inputx => weight_9 ,
            inputy => x_9 ,
            output => store_weight_9 );
ut1_nn_addition: nn_addition port map(
           inputx => store_weight_0 ,
            inputy =>store_weight_1 ,
            output => sum_0 );
ut2_nn_addition: nn_addition port map(
           inputx => store_weight_2 ,
            inputy =>store_weight_3 ,
            output => sum_1 );
ut3_nn_addition: nn_addition port map(
           inputx => store_weight_4 ,
            inputy =>store_weight_5 ,
            output => sum_2 );
ut4_nn_addition: nn_addition port map(
           inputx => store_weight_6 ,
            inputy =>store_weight_7 ,
            output => sum_3 );
ut5_nn_addition: nn_addition port map(
           inputx => store_weight_8 ,
            inputy =>store_weight_9 ,
            output => sum_4 );
ut6_nn_addition: nn_addition port map(
           inputx => sum_0 ,
            inputy => sum_1 ,
            output => sum_5 );
ut7_nn_addition: nn_addition port map(
           inputx => sum_2 ,
            inputy => sum_3 ,
            output => sum_6 );
ut8_nn_addition: nn_addition port map(
           inputx => sum_4 ,
            inputy => sum_5 ,
            output => sum_7 );
ut9_nn_addition: nn_addition port map(
           inputx => sum_6 ,
            inputy => sum_7 ,
            output => sum_8 );
ut10_nn_addition: nn_addition port map(
           inputx => sum_8 ,
            inputy => biases ,
            output => store_value );
	     ut1_ram_sigmoid: ram_sigmoid port map(
        clk  => clk,
        we   => '0',
        a => store_value,
        di =>  (others => '0'),
        do => y_3
    );
end Behavioral;
