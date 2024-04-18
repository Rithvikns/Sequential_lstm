library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity fully_connected_layer_1 is

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

        y : out STD_LOGIC_VECTOR(3 downto 0)

    );

end fully_connected_layer_1 ;

architecture Behavioral of fully_connected_layer_1 is
       signal y_0 : STD_LOGIC_VECTOR(15 downto 0);

       signal y_1 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_2 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_3 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_4 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_5 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_6 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_7 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_8 : STD_LOGIC_VECTOR(15 downto 0);
		 signal y_9 : STD_LOGIC_VECTOR(15 downto 0);
		 

component fully_connected_layer_1_0  is

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

        y_0 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_1  is

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

        y_1 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_2  is

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

        y_2 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_3  is

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

end component ;

component fully_connected_layer_1_4  is

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

        y_4 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_5  is

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

        y_5 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_6  is

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

        y_6 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_7  is

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

        y_7 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_8  is

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

        y_8 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_1_9  is

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

        y_9 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

shared variable max_value : STD_LOGIC_VECTOR(15 downto 0);
shared variable max_index : STD_LOGIC_VECTOR(3 downto 0);


begin

ut0_fully_connected_layer_1_0: fully_connected_layer_1_0 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_0 => y_0 

    );

ut1_fully_connected_layer_1_1: fully_connected_layer_1_1 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_1 => y_1 

    );

ut2_fully_connected_layer_1_2: fully_connected_layer_1_2 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_2 => y_2 

    );

ut3_fully_connected_layer_1_3: fully_connected_layer_1_3 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_3 => y_3 

    );

ut4_fully_connected_layer_1_4: fully_connected_layer_1_4 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_4 => y_4 

    );

ut5_fully_connected_layer_1_5: fully_connected_layer_1_5 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_5 => y_5 

    );

ut6_fully_connected_layer_1_6: fully_connected_layer_1_6 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_6 => y_6 

    );

ut7_fully_connected_layer_1_7: fully_connected_layer_1_7 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_7 => y_7 

    );

ut8_fully_connected_layer_1_8: fully_connected_layer_1_8 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_8 => y_8 

    );

ut9_fully_connected_layer_1_9: fully_connected_layer_1_9 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_9 => y_9 

    );

    process (y_0, y_1, y_2, y_3, y_4, y_5, y_6, y_7, y_8, y_9)
    begin
        max_value := y_0;
        max_index := "0000";
		  
		  		  
        if y_1 > max_value then
            max_value := y_1;
            max_index := "0001";
        end if;
        
        if y_2 > max_value then
            max_value := y_2;
            max_index := "0010";
        end if;

       if y_3 > max_value then
            max_value := y_3;
            max_index := "0011";
        end if;
        
        if y_4 > max_value then
            max_value := y_4;
            max_index := "0100";
        end if;
        
        if y_5 > max_value then
            max_value := y_5;
            max_index := "0101";
        end if;
		  
        if y_6 > max_value then
            max_value := y_6;
            max_index := "0110";
        end if;
        
        if y_7 > max_value then
            max_value := y_7;
            max_index := "0111";
        end if;
        
        if y_8 > max_value then
            max_value := y_8;
            max_index := "1000";
        end if;
        
        if y_9 > max_value then
            max_value := y_9;
            max_index := "1001";
        end if;
        y <= max_index;
    end process;
end Behavioral;