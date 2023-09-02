library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Range_sensor is
    port (
        -- clk of the board, input pulse
        clk: in std_logic;
        pulse: in std_logic_vector(2 downto 0);
        -- Trigger output
        trigger_out: out std_logic_vector(2 downto 0);
        -- Distance conversion in base-10 measurement units
        rear_left, rear_center, rear_right : out std_logic_vector(11 downto 0)
    );
end Range_sensor;

architecture Behavioral of Range_sensor is
    component trigger_generator is
        port (
            clk: in std_logic;
            trigger: out std_logic
        );
    end component;

    component Distance_calculator is
        port (
            clk: in std_logic;
            Calculation_Reset: in std_logic;
            pulse: in std_logic;
            Distance: out std_logic_vector(8 downto 0)
        );
    end component;

    component BCD_converter is
        port (
            Distance: in std_logic_vector(8 downto 0);
            dist: out std_logic_vector(11 downto 0)  --decimal format---cm
        );
    end component;

    -- Signal for distance calculation output for measurement in meters
    signal distance_out2: std_logic_vector(8 downto 0);
    signal distance_out1: std_logic_vector(8 downto 0);
    signal distance_out0: std_logic_vector(8 downto 0);

    signal strigger_out2: std_logic;
    signal strigger_out1: std_logic;
    signal strigger_out0: std_logic;
begin
    trigger_out(2) <= strigger_out2;
    trigger_out(1) <= strigger_out1;
    trigger_out(0)<= strigger_out0;

    -- Instantiate trigger_generator
    trig2: trigger_generator port map(clk, strigger_out2);
    trig1: trigger_generator port map(clk, strigger_out1);
    trig0: trigger_generator port map(clk, strigger_out0);
    -- Instantiate Distance_calculator
    distan2: Distance_calculator port map(clk, strigger_out2, pulse(2), distance_out2);
    distan1: Distance_calculator port map(clk, strigger_out1, pulse(1), distance_out1);
    distan0: Distance_calculator port map(clk, strigger_out0, pulse(0), distance_out0);

    BCD_conv2: BCD_converter port map(distance_out2, rear_left);
    BCD_conv1: BCD_converter port map(distance_out1, rear_center);
    BCD_conv0: BCD_converter port map(distance_out0, rear_right);
end Behavioral;
