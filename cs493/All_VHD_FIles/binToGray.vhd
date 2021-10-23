library ieee;
use ieee.std_logic_1164.all;

entity binToGray is
	port (
		I : in bit_vector(3 downto 0);
		O : out bit_vector(3 downto 0)
	);
end binToGray;

architecture behavior of binToGray is
begin
	process(I)
	begin
		O(3) <= I(3);
		O(2) <= I(3) xor I(2);
		O(1) <= I(2) xor I(1);
		O(0) <= I(1) xor I(0);
	end process;
end behavior;