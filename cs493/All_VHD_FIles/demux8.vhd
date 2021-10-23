library ieee;
use ieee.std_logic_1164.all;

entity demux8 is
port(
	I : in bit;
	En : in bit;
	S : in bit_vector(2 downto 0);
	Y : out bit_vector(7 downto 0)
);
end demux8;

architecture modelling of demux8 is
begin
	Y <= 	"00000000" when En = '1' else
			"00000000" when I = '0' else
			"00000001" when S = "000" else
			"00000010" when S = "001" else
			"00000100" when S = "010" else
			"00001000" when S = "011" else
			"00010000" when S = "100" else
			"00100000" when S = "101" else
			"01000000" when S = "110" else
			"10000000";
end modelling;