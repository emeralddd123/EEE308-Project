library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BCD_converter is
    port (
        -- Binary input distance
        Distance: in std_logic_vector(8 downto 0);
        -- Output in base-10 measurement units combined as dist
        dist: out std_logic_vector(11 downto 0) -- Decimal
    );
end BCD_converter;

architecture Behavioral of BCD_converter is
begin
    process(Distance)
    variable i: integer := 0;
    variable bcd: std_logic_vector(20 downto 0);
    begin
        bcd := (others => '0');
        bcd(8 downto 0) := Distance;
        -- Create a left shift of 8 repetitions
        for i in 0 to 8 loop
            -- Use the binary division method
            bcd(19 downto 0) := bcd(18 downto 0) & '0';
            if (i < 8 and bcd(12 downto 9) > "0100") then
                bcd(12 downto 9) := bcd(12 downto 9) + "0011";
            end if;
            if (i < 8 and bcd(16 downto 13) > "0100") then
                bcd(16 downto 13) := bcd(16 downto 13) + "0011";
            end if;
            if (i < 8 and bcd(20 downto 17) > "0100") then
                bcd(20 downto 17) := bcd(20 downto 17) + "0011";
            end if;
        end loop;
        -- Output dist combines hundreds, tens, and unit as a single 12-bit value
        dist <= bcd(20 downto 9);
    end process;
end Behavioral;

