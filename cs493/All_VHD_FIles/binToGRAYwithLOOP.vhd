library ieee;
use ieee.std_logic_1164.all;

entity binToGRAYwithLOOP is
	port (
		I : in bit_vector(7 downto 0);
		O : out bit_vector(7 downto 0)
	);
end binToGRAYwithLOOP;

architecture behavior of binToGRAYwithLOOP is
begin
	process(I)
		variable index : integer;
	begin
		O(7) <= I(7);
		for index in 6 downto 0 loop
			O(index) <= I(index+1) xor I(index);
		end loop;
	end process;
end behavior;