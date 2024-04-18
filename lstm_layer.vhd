library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lstm_layer is
    port (
        clk : in std_logic;
        reset : in std_logic;
        y_out: out std_logic_vector(3 downto 0)
    );
end lstm_layer;

architecture Behavioral of lstm_layer is
    signal addr : std_logic_vector(9 downto 0) := (others => '0');
    signal x : std_logic_vector(7 downto 0) := (others => '0');
    signal y : std_logic_vector(7 downto 0) := (others => '0');
    signal z : std_logic_vector(7 downto 0) := (others => '0');
    signal wf0 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf1 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf2 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf3 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf4 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf5 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf6 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf7 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf8 : std_logic_vector(7 downto 0) := (others => '0');
    signal wf9 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf0 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf1 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf2 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf3 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf4 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf5 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf6 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf7 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf8 : std_logic_vector(7 downto 0) := (others => '0');
    signal bf9 : std_logic_vector(7 downto 0) := (others => '0');
        signal    y_0 :  std_logic_vector(15 downto 0);
      signal  y_1 :  std_logic_vector(15 downto 0);
      signal  y_2 :  std_logic_vector(15 downto 0);
      signal  y_3 :  std_logic_vector(15 downto 0);
      signal  y_4 :  std_logic_vector(15 downto 0);
      signal  y_5 : std_logic_vector(15 downto 0);
      signal  y_6 :  std_logic_vector(15 downto 0);
      signal  y_7 : std_logic_vector(15 downto 0);
      signal  y_8 :  std_logic_vector(15 downto 0);
      signal  y_9 :  std_logic_vector(15 downto 0);
    signal sum_reg_0 : STD_LOGIC_VECTOR(7 downto 0):= "10000001";
    signal sum_reg_1 : STD_LOGIC_VECTOR(7 downto 0):= "00000001";
    signal sum_reg_2 : STD_LOGIC_VECTOR(7 downto 0):= "00000001";
    signal sum_reg_3 : STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal sum_reg_4 : STD_LOGIC_VECTOR(7 downto 0):= "10000001";
    signal sum_reg_5 : STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal sum_reg_6 : STD_LOGIC_VECTOR(7 downto 0):= "00000001";
    signal sum_reg_7 : STD_LOGIC_VECTOR(7 downto 0):= "10000001";
    signal sum_reg_8 : STD_LOGIC_VECTOR(7 downto 0):= "10000001";
    signal sum_reg_9 : STD_LOGIC_VECTOR(7 downto 0):= "00000010";
    
    signal product_reg_0 , product_reg_1,product_reg_2,product_reg_3,product_reg_4,product_reg_5,product_reg_6,product_reg_7,product_reg_8,product_reg_9 : STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    
    signal sig_c_t_minus_in : std_logic_vector(15 downto 0) := (others => '0');
    signal sig_h_t_minus_in : std_logic_vector(15 downto 0) := (others => '0');
    signal sig_c_t_minus_out : std_logic_vector(15 downto 0) := (others => '0');
    signal sig_h_t_minus_out : std_logic_vector(15 downto 0) := (others => '0');
    signal counter : integer range 0 to 783 := 0; -- Counter to track iterations
    
  component  fully_connected_layer_1 is
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
    end component ;
     component ram_0 is
        port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
     component ram_1 is
		port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );       end component ;
     component ram_2 is
        port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
      component ram_3 is
        port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
     component ram_4 is
       port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
     component ram_5 is
        port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
     component ram_6 is
        port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
     component ram_7 is
       port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
     component ram_8 is
       port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
     component ram_9 is
        port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
       end component ;
   component f_c_mul is
        port (
        inputx : in STD_LOGIC_VECTOR(7 downto 0);
        inputy : in STD_LOGIC_VECTOR(7 downto 0);
        output : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
   component f_c_add is
        port (
        inputx : in STD_LOGIC_VECTOR(7 downto 0);
        inputy : in STD_LOGIC_VECTOR(7 downto 0);
        output : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
       
    component neuron is
        port (clk:in std_logic;
            x : in std_logic_vector(7 downto 0);
            c_t_minus_in : in std_logic_vector(15 downto 0);
            h_t_minus_in : in std_logic_vector(15 downto 0);
            c_t_minus_out : out std_logic_vector(15 downto 0);
            h_t_minus_out : out std_logic_vector(15 downto 0);
            y : out std_logic_vector(7 downto 0)
        );
    end component;
   component f_c_sig is
        port (
        num : in integer;
        y : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;
    component raminfr is
        port (
            clk  : in std_logic;
            we   : in std_logic;
            a : in std_logic_vector(9 downto 0);
            di : in std_logic_vector(7 downto 0);
            do : out std_logic_vector(7 downto 0)
        );
    end component;
    
begin
    ut1_raminfr: raminfr port map( 
        clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => x
    );
    ut1_ram_0: ram_0 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf0
    );
   ut1_ram_1: ram_1 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf1
    );
	 ut1_ram_2: ram_2 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf2
    );
	 ut1_ram_3: ram_3 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf3
    );
	 ut1_ram_4: ram_4 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf4
    );
	 ut1_ram_5: ram_5 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf5
    );
	 ut1_ram_6: ram_6 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf6
    );
	 ut1_ram_7: ram_7 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf7
    );
	 ut1_ram_8: ram_8 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf8
    );
	 ut1_ram_9: ram_9 port map(
		  clk  => clk,
        we   => '0',
        a => addr,
        di =>  (others => '0'),
        do => wf9
    );
    
    ut1_neuron: neuron port map( 
	 clk => clk,
       x  => x,
       c_t_minus_in  => sig_c_t_minus_in,
       h_t_minus_in  => sig_h_t_minus_in,
       c_t_minus_out => sig_c_t_minus_out,
       h_t_minus_out => sig_h_t_minus_out,
       y => y
    );
ut1_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf0,
    output => bf0
    );
ut2_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf1,
    output => bf1
    );
ut3_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf2,
    output => bf2
    );
ut4_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf3,
    output => bf3
    );
ut5_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf4,
    output => bf4
    );
ut6_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf5,
    output => bf5
    );
ut7_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf6,
    output => bf6
    );
ut8_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf7,
    output => bf7
    );
 ut9_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf8,
    output => bf8
    );
 ut10_f_c_mul: f_c_mul port map(
    inputx => y,
    inputy => wf9,
    output => bf9
    );
  ut1_f_c_add: f_c_add port map(
    inputx => bf0,
    inputy => sum_reg_0,
    output => product_reg_0
    );
  ut2_f_c_add: f_c_add port map(
    inputx => bf1,
    inputy => sum_reg_1,
    output => product_reg_1
    );
      ut3_f_c_add: f_c_add port map(
    inputx => bf2,
    inputy => sum_reg_2,
    output => product_reg_2
    );
      ut4_f_c_add: f_c_add port map(
    inputx => bf3,
    inputy => sum_reg_3,
    output => product_reg_3
    );
      ut5_f_c_add: f_c_add port map(
    inputx => bf4,
    inputy => sum_reg_4,
    output => product_reg_4
    );
      ut6_f_c_add: f_c_add port map(
    inputx => bf5,
    inputy => sum_reg_5,
    output => product_reg_5
    );
      ut7_f_c_add: f_c_add port map(
    inputx => bf6,
    inputy => sum_reg_6,
    output => product_reg_6
    );
      ut8_f_c_add: f_c_add port map(
    inputx => bf7,
    inputy => sum_reg_7,
    output => product_reg_7
    );
      ut9_f_c_add: f_c_add port map(
    inputx => bf8,
    inputy => sum_reg_8,
    output => product_reg_8
    );
      ut10_f_c_add: f_c_add port map(
    inputx => bf9,
    inputy => sum_reg_9,
    output => product_reg_9
    );
  addr_counter : process (clk, reset)
    begin
        if reset = '1' then
            addr <= (others => '0');
            counter <= 0;
            sig_c_t_minus_in <= (others => '0');
            sig_h_t_minus_in <= (others => '0');
        elsif rising_edge(clk) then
                    if counter < 783 then
                        addr <= std_logic_vector(unsigned(addr) + 1);
                        sig_c_t_minus_in <= sig_c_t_minus_out;
                        sig_h_t_minus_in <= sig_h_t_minus_out;
                        sum_reg_0 <= product_reg_0 ;
                        sum_reg_1 <= product_reg_1 ;
                        sum_reg_2 <= product_reg_2 ;
                        sum_reg_3 <= product_reg_3 ;
                        sum_reg_4 <= product_reg_4 ;
                        sum_reg_5 <= product_reg_5 ;
                        sum_reg_6 <= product_reg_6 ;
                        sum_reg_7 <= product_reg_7 ;
                        sum_reg_8 <= product_reg_8 ;
                        sum_reg_9 <= product_reg_9 ;
                        counter <= counter + 1;
					else
						counter <= 0;
                    end if;
                end if;
    end process addr_counter;
    
ut1_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_0)),
    y => y_0
    );
ut2_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_1)),
    y => y_1
    );
ut3_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_2)),
    y => y_2
    );
ut4_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_3)),
    y => y_3
    );
ut5_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_4)),
    y => y_4
    );
ut6_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_5)),
    y => y_5
    );
ut7_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_6)),
    y => y_6
    );
ut8_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_7)),
    y => y_7
    );
ut9_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_8)),
    y => y_8
    );
ut10_f_c_sig: f_c_sig port map(
    num => to_integer(unsigned(sum_reg_9)),
    y => y_9
    );
ut0_fully_connected_layer_1: fully_connected_layer_1 port map(
clk => clk,
x_0 => y_0 ,
x_1 => y_1 ,
x_2 => y_2 ,
x_3 => y_3 ,
x_4 => y_4 ,
x_5 => y_5 ,
x_6 => y_6 ,
x_7 => y_7 ,
x_8 => y_8 ,
x_9 => y_9 ,
y => y_out 
    );
end Behavioral;
