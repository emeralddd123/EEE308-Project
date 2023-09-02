library ieee;
use ieee.std_logic_1164.all;
 
entity Trigger_generator is 
    port (
        -- clk
        clk: in std_logic;
        -- Sound wave output
        trigger: out std_logic 
    );
end Trigger_generator;
 
architecture Behavioral of Trigger_generator is
    -- Instantiate the Counter component
    component Counter is
        generic (
            n: POSITIVE := 10
        );
        port (
            clk: in std_logic;
            enable: in std_logic;
            reset: in std_logic;
            count_out: out std_logic_vector(n - 1 downto 0)
        );
    end component;
 
    -- Reset signal for the trigger sensor
    signal reset_counter: std_logic; 
    -- Calculate the distance in microseconds from the counter
    signal output_counter: std_logic_vector(23 downto 0);
begin  
    -- The trigger will be active when the counter has counted for 250 ms and less than 250 ms + 100 us
    -- Due to the configuration of the Ultrasonic Distance Sensor HC-SR04
    trigg : Counter generic map (24) port map (clk, '1', reset_counter, output_counter);    
    process (clk, output_counter) 
        constant ms250: std_logic_vector(23 downto 0) := "101111101011110000100000"; -- 12500000 ms
        constant ms250and100us: std_logic_vector(23 downto 0) := "101111101100000000001000"; -- 12501000 ms
    begin
        if (output_counter > ms250 and output_counter < ms250and100us) then
            trigger <= '1';
        else
            trigger <= '0';
        end if;  
        if (output_counter = ms250and100us or output_counter = "XXXXXXXXXXXXXXXXXXXXXXXX") then
            reset_counter <= '0';
        else
            reset_counter <= '1';
        end if;  
    end process;
end Behavioral;