LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ParkAssist IS
    PORT (
        -- Pin for input pulse
        pulse_pin : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        -- Pin for Trigger output
        trigger_pin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        -- FPGA clk pin
        clk : IN STD_LOGIC;
        red, grn, blu : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        hsync, vsync : OUT STD_LOGIC;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Arch OF ParkAssist IS
    COMPONENT Range_sensor IS
        PORT (clk: IN STD_LOGIC;
             pulse : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            trigger_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            rear_left, rear_center, rear_right : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
        );
    END COMPONENT;

    --vga component (output)
    COMPONENT vga_display IS
        PORT (
            clk : IN STD_LOGIC;
            red, grn, blu : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            hsync, vsync : OUT STD_LOGIC;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            rear_left, rear_center, rear_right : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL s_rear_left, s_rear_center, s_rear_right : STD_LOGIC_VECTOR(11 DOWNTO 0);

BEGIN
    range_sensor_map : Range_sensor PORT MAP(clk, pulse_pin, trigger_pin, s_rear_left, s_rear_center, s_rear_right);

    -- Instantiate vga_display component
    vga_inst : vga_display
    PORT MAP(
        clk => clk,
        red => red,
        grn => grn,
        blu => blu,
        hsync => hsync,
        vsync => vsync,
        rear_left => s_rear_left,
        rear_center => s_rear_center,
        rear_right => s_rear_right,
        HEX0 => HEX0,
        HEX1 => HEX1,
        HEX2 => HEX2,
        HEX3 => HEX3,
        HEX4 => HEX4,
        HEX5 => HEX5
    );
	 
END Arch;