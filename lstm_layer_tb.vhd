library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testbench is
end testbench;

architecture Behavioral of testbench is
    constant CLK_PERIOD : time := 1 ns;
    signal clk_tb : std_logic := '0';
    signal reset_tb : std_logic := '0';
    signal y_tb : std_logic_vector(3 downto 0);
begin
    dut: entity work.lstm_layer
    port map (
        clk => clk_tb,
        reset => reset_tb,
        y_out => y_tb
    );

    clk_process: process
    begin
        while now < 10000 ns loop
            clk_tb <= '0';
            wait for CLK_PERIOD / 2;
            clk_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait; -- Simulation halts after the loop
    end process clk_process;

end Behavioral;
