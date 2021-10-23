library ieee;
use ieee.std_logic_1164.all;

entity bCDtoSSD is
	port(
		I : in std_logic_vector (3 downto 0);
		H : out std_logic_vector(6 downto 0)
	);
end bCDtoSSD;

architecture behavior of bCDtoSSD is
begin
		H <= 	"1000000" when I = "0000" else
				"1111001" when I = "0001" else
				"0100100" when I = "0010" else
				"0110000" when I = "0011" else
				"0011001" when I = "0100" else
				"0010010" when I = "0101" else
				"0000010" when I = "0110" else
				"1111000" when I = "0111" else
				"0000000" when I = "1000" else
				"0010000" when I = "1001" else
				"0001000" when I = "1010" else
				"0000011" when I = "1011" else
				"1000110" when I = "1100" else
				"0100001" when I = "1101" else
				"0000110" when I = "1110" else
				"0001110";
end behavior;

 