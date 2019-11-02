-- Lab 5 - "Programmable calculator"
-- Students: Francisco Miamoto
--           João Pedro Zanlorensi
--           Luan Roberto
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc is
    port (
        instruction : in unsigned(11 downto 0);
        clk         : in std_logic;
        rst         : in std_logic;
        jump_en     : out std_logic;
        wr_en       : out std_logic
    );
end entity;

architecture a_uc of uc is
    signal state  : unsigned(1 downto 0);
    signal opcode : unsigned(3 downto 0);
begin
    process (clk, rst)
    begin
        if rst = '1' then
            state <= "00";
        elsif rising_edge(clk) then
            if state = "10" then
                state <= "00";
            else
                state <= state + 1;
            end if;
        end if;
    end process;

    opcode <= instruction(11 downto 8);

    jump_en <= '1' when state = '1' and opcode = "1111" else
        '0';

    wr_en <= '1' when state = '1' else
        '0';

end architecture;