library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Distance_calculator is
    port (
        -- clk
        clk: in std_logic;
        -- Reset is active low
        Calculation_Reset: in std_logic;
        -- Trigger pulse input
        pulse : in std_logic;
        -- Distance calculation output
        Distance: out std_logic_vector(8 downto 0)
    );
end Distance_calculator;

architecture Behavioral of Distance_calculator is
    -- Instantiate the Counter component
    component Counter is
        generic (
            n: POSITIVE := 10
        );
        port (
            clk: in std_logic;
            enable: in std_logic;
            reset: in std_logic;
            count_out: out std_logic_vector(n-1 downto 0)
        );
    end component;

    -- Output signal for Pulse width
    signal Pulse_width : STD_LOGIC_VECTOR(21 downto 0);
begin
    Counter_pulse : Counter generic map(22) port map(clk, pulse, not Calculation_reset, Pulse_width);
    Distance_calculator : process(pulse)
        -- Use the shift and subtract method to divide Pulse by 58, converting
        -- nanoseconds to seconds, according to the sensor's Data Sheet
        variable Result : integer; -- Integer value in base 10
        -- Temporary vector for multiplication
        variable Multiplier : STD_LOGIC_VECTOR(23 downto 0);
        begin
            if(pulse = '0') then
                -- Multiply the vector by 3
                Multiplier := Pulse_width * "11";
                -- Multiply the most significant bits by 3 and store them in Result
                Result := to_integer(unsigned(Multiplier(23 downto 13)));
                -- If Result reaches the maximum value, Distance will be "111111111"
                if(Result > 458) then
                    Distance <= "111111111";
                -- Otherwise, Distance will be the value of Result in a 9-position vector
                else
                    Distance <= STD_LOGIC_VECTOR(to_unsigned(Result, 9));
                end if;
            end if;
        end process;
end architecture;
