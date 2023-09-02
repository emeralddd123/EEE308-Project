LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY vga_display IS
    PORT (
        clk : IN STD_LOGIC;
        red, grn, blu : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        hsync, vsync : OUT STD_LOGIC;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        rear_left, rear_center, rear_right : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
END ENTITY vga_display;

ARCHITECTURE display OF vga_display IS
    CONSTANT clk_freq : INTEGER := 50e6; -- The clock frequency of the DE10-Lite is 50 MHz.

    CONSTANT zero : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000000";
    CONSTANT one : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111001";
    CONSTANT two : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0100100";
    CONSTANT three : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0110000";
    CONSTANT four : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011001";
    CONSTANT five : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010010";
    CONSTANT six : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000010";
    CONSTANT seven : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111000";
    CONSTANT eight : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000000";
    CONSTANT nine : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011000";

    CONSTANT A : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0001000";
    CONSTANT b : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000011";
    CONSTANT C : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000110";
    CONSTANT d : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0100001";
    CONSTANT E : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000110";
    CONSTANT F : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0001110";
    CONSTANT g : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010000";
    CONSTANT h : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0001011";
    CONSTANT I : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1001111";
    CONSTANT J : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1110000";
    CONSTANT K : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0101000";
    CONSTANT L : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000111";
    CONSTANT M : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0001010";
    CONSTANT N : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1001000";
    CONSTANT O : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000000";
    CONSTANT P : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0001100";
    CONSTANT Q : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011000";
    CONSTANT r : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0101111";
    CONSTANT S : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010010";
    CONSTANT t : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000111";
    CONSTANT u : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000001";
    CONSTANT V : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0101001";
    CONSTANT Y : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1001101";

    CONSTANT blank : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111111";
    -- -- Signals that will hold the parameters at any point in time for a 640x480 display
    SIGNAL hfp : INTEGER := 16; -- horizontal front porch
    SIGNAL hsp : INTEGER := 96; -- horizontal sync pulse
    SIGNAL hbp : INTEGER := 48; -- horizontal back porch
    SIGNAL hva : INTEGER := 640; -- horizontal visible area
    SIGNAL vfp : INTEGER := 11; -- vertical front porch
    SIGNAL vsp : INTEGER := 2; -- vertical sync pulse
    SIGNAL vbp : INTEGER := 31; -- vertical back porch
    SIGNAL vva : INTEGER := 480; -- vertical visible area

    -- Signals for each of the clocks available to us VGA works with 25MHz
    SIGNAL clk25 : STD_LOGIC;

    SIGNAL s_clk : STD_LOGIC;
    -- Signals to hold the present horizontal and vertical positions.
    SIGNAL hposition : INTEGER RANGE 0 TO 4000 := 0;
    SIGNAL vposition : INTEGER RANGE 0 TO 4000 := 0;

    --signal for the distances
    --SIGNAL rear_left, rear_center, rear_right : INTEGER RANGE 0 TO 400;
BEGIN
    s_clk <= clk;
    disp_clk : work.clk25 PORT MAP(inclk0 => clk,
    c0 => clk25);

    output_logic : PROCESS (rear_left, rear_center, rear_right, hposition, vposition)
        VARIABLE hoffset : INTEGER := hfp + hsp + hbp;
        VARIABLE voffset : INTEGER := vfp + vsp + vbp;

        VARIABLE h1quarter : INTEGER := (hoffset + hva) / 4;
        VARIABLE hcentre : INTEGER := (hoffset + hva) / 2;
        VARIABLE h3quarters : INTEGER := hcentre/2;
        VARIABLE vcentre : INTEGER := (voffset + vva) / 2;

        VARIABLE light_width : INTEGER := (hva / 5);
        VARIABLE light_height : INTEGER := vva/20;
        VARIABLE h_light_centre1 : INTEGER := h1quarter - light_width;
        VARIABLE h_light_centre2 : INTEGER := hcentre - light_width;
        VARIABLE h_light_centre3 : INTEGER := h3quarters - light_width;

        VARIABLE v_light_centre : INTEGER := vcentre/2; --the light are gonna maintain same y-axis

        VARIABLE h_square1_start : INTEGER := 250;
        VARIABLE h_square2_start : INTEGER := 350;
        VARIABLE h_square3_start : INTEGER := 450;

        VARIABLE h_square1_stop : INTEGER := h_square1_start + 70;
        VARIABLE h_square2_stop : INTEGER := h_square2_start + 70;
        VARIABLE h_square3_stop : INTEGER := h_square3_start + 70;

        VARIABLE v_square_start : INTEGER := 400;
        VARIABLE v_square_stop : INTEGER := 450;

        -- Define the distance thresholds
        CONSTANT DIST_THRESHOLD_RED : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000001010000"; --50cm
        CONSTANT DIST_THRESHOLD_COLOUR_YELLOW : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000100000000"; --100cm

    BEGIN
        IF ((rear_left > DIST_THRESHOLD_COLOUR_YELLOW) AND (hposition >= h_square1_start) AND (hposition < h_square1_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"1";
            grn <= x"f";
            blu <= x"1";
        ELSIF ((rear_left > DIST_THRESHOLD_RED) AND (hposition >= h_square1_start) AND (hposition < h_square1_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"f";
            grn <= x"f";
            blu <= x"1";
        ELSIF ((rear_left < DIST_THRESHOLD_RED) AND (hposition >= h_square1_start) AND (hposition < h_square1_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"f";
            grn <= x"1";
            blu <= x"1";
        ELSE
            red <= x"1";
            grn <= x"1";
            blu <= x"1";
        END IF;

        IF ((rear_center > DIST_THRESHOLD_COLOUR_YELLOW) AND (hposition >= h_square2_start) AND (hposition < h_square2_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"1";
            grn <= x"f";
            blu <= x"1";
        ELSIF ((rear_center > DIST_THRESHOLD_RED) AND (hposition >= h_square2_start) AND (hposition < h_square2_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"f";
            grn <= x"f";
            blu <= x"1";
        ELSIF ((rear_center < DIST_THRESHOLD_RED) AND (hposition >= h_square2_start) AND (hposition < h_square2_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"f";
            grn <= x"1";
            blu <= x"1";
        ELSE
            red <= x"1";
            grn <= x"1";
            blu <= x"1";
        END IF;

        IF ((rear_right > DIST_THRESHOLD_COLOUR_YELLOW) AND (hposition >= h_square3_start) AND (hposition < h_square3_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"1";
            grn <= x"f";
            blu <= x"1";
        ELSIF ((rear_right > DIST_THRESHOLD_RED) AND (hposition >= h_square3_start) AND (hposition < h_square3_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"f";
            grn <= x"f";
            blu <= x"1";
        ELSIF ((rear_right < DIST_THRESHOLD_RED) AND (hposition >= h_square3_start) AND (hposition < h_square3_stop) AND (vposition >= v_square_start) AND (vposition <= v_square_stop)) THEN
            red <= x"f";
            grn <= x"1";
            blu <= x"1";
        ELSE

        END IF;

        IF ((rear_left > DIST_THRESHOLD_COLOUR_YELLOW)) THEN
            HEX5 <= F;
            HEX4 <= A;
            HEX3 <= R;
            HEX2 <= blank;
            HEX1 <= blank;
            HEX0 <= blank;
        ELSIF ((rear_left > DIST_THRESHOLD_RED)) THEN
            HEX5 <= C;
            HEX4 <= L;
            HEX3 <= O;
            HEX2 <= five;
            HEX1 <= E;
            HEX0 <= blank;
        ELSIF ((rear_left < DIST_THRESHOLD_RED)) THEN
            HEX5 <= D;
            HEX4 <= A;
            HEX3 <= N;
            HEX2 <= g;
            HEX1 <= E;
            HEX0 <= r;
        ELSE
            HEX5 <= blank;
            HEX4 <= blank;
            HEX3 <= blank;
            HEX2 <= blank;
            HEX1 <= blank;
            HEX0 <= blank;
        END IF;

        -- IF ((rear_center > DIST_THRESHOLD_COLOUR_YELLOw)) THEN
        --     HEX3 <= nine;
        --     HEX2 <= nine;
        -- ELSIF ((rear_center > DIST_THRESHOLD_RED)) THEN
        --     HEX3 <= three;
        --     HEX2 <= three;
        -- ELSIF ((rear_center < DIST_THRESHOLD_RED)) THEN
        --     HEX3 <= one;
        --     HEX2 <= zero;
        -- ELSE
        --     HEX3 <= zero;
        --     HEX2 <= zero;

        -- END IF;

        -- IF ((rear_right > DIST_THRESHOLD_COLOUR_YELLOW)) THEN
        --     HEX1 <= nine;
        --     HEX0 <= nine;
        -- ELSIF ((rear_right > DIST_THRESHOLD_RED)) THEN
        --     HEX1 <= three;
        --     HEX0 <= three;
        -- ELSIF ((rear_right < DIST_THRESHOLD_RED)) THEN
        --     HEX1 <= one;
        --     HEX0 <= zero;
        -- ELSE
        --     HEX1 <= zero;
        --     HEX0 <= zero;
        -- END IF;

    END PROCESS;

    display_things : PROCESS (clk25)
    BEGIN
        -- When horizontal position counter gets to the last pixel in a row, go back
        -- else increase hposition by 1
        IF rising_edge(clk25) THEN
            IF hposition >= (hfp + hsp + hbp + hva) THEN
                hposition <= 0;
                -- when vertical position counter gets to the end of rows, go back to the
                -- start of the first row else increment vposition by 1
                IF vposition >= (vfp + vsp + vbp + vva) THEN
                    vposition <= 0;
                ELSE
                    vposition <= vposition + 1;
                END IF;
            ELSE
                hposition <= hposition + 1;
            END IF;

            -- Generate horizontal synch pulse whenever the hposition is between the front
            -- porch and the back porch
            IF (hposition >= hfp) AND (hposition < (hfp + hsp)) THEN
                hsync <= '0';
            ELSE
                hsync <= '1';
            END IF;

            -- Generate vertical synch pulse whenever the vposition is between the front
            -- porch and the back porch
            IF (vposition >= vfp) AND (vposition < (vfp + vsp)) THEN
                vsync <= '0';
            ELSE
                vsync <= '1';
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE display;