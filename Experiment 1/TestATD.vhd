Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Part1_ent is 
port
(
	Input : in std_logic_vector(7	downto 0);
	HexLeft: out std_logic_vector(6 downto 0);
	HexRight: out std_logic_vector(6 downto 0)
);			

end Part1_ent;

architecture Part1_arch of Part1_ent is
begin

-- 7-segment display 1
with Input(7 downto 4) select
	HexLeft <= "1000000" when "0000", -- 0
	"1111001" when "0001", -- 1
	"0100100" when "0010", -- 2
	"0110000" when "0011", -- 3
	"0011001" when "0100", -- 4
	"0010010" when "0101", -- 5
	"0000010" when "0110", -- 6
	"1111000" when "0111", -- 7
	"0000000" when "1000", -- 8
	"0011000" when "1001", -- 9
	"0001000" when "1010", -- A
	"0000011" when "1011", -- B
	"1000110" when "1100", -- C
	"0100001" when "1101", -- D
	"0000110" when "1110", -- E
	"0001110" when "1111", -- F
 	"1000000" when others;
 
 -- other 7-segment display
 with Input(3 downto 0) select
	HexRight <= "1000000" when "0000", -- 0
	"1111001" when "0001", -- 1
	"0100100" when "0010", -- 2
	"0110000" when "0011", -- 3
	"0011001" when "0100", -- 4
	"0010010" when "0101", -- 5
	"0000010" when "0110", -- 6
	"1111000" when "0111", -- 7
	"0000000" when "1000", -- 8
	"0011000" when "1001", -- 9
	"0001000" when "1010", -- A
	"0000011" when "1011", -- B
	"1000110" when "1100", -- C
	"0100001" when "1101", -- D
	"0000110" when "1110", -- E
	"0001110" when "1111", -- F
	"1000000" when others;
	
end Part1_arch;
