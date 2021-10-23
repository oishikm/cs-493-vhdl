library ieee;
use ieee.std_logic_1164.all;

entity decoder3to8 is
port(
	En : in bit;
	I	: in bit_vector(2 downto 0);
	Y	: out bit_vector(7 downto 0)
);
end decoder3to8;

architecture behaviour of decoder3to8 is
begin
		Y <= "00000000" when En = '1' else
			  "00000001" when I = "000" else
			  "00000010" when I = "001" else
			  "00000100" when I = "010" else
			  "00001000" when I = "011" else
			  "00010000" when I = "100" else
			  "00100000" when I = "101" else
			  "01000000" when I = "110" else
			  "10000000";
end behaviour;
