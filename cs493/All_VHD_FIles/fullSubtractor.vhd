library ieee;
use ieee.std_logic_1164.all;
entity fullSubtractor is
port	(
	Bin, X, Y	: in bit;
	D, Bout		: out bit
);
end fullSubtractor;

architecture behaviour of fullSubtractor is
begin
	process(Bin, X, Y)
		begin
			if(Bin = '0') then
				D 		<= X xor Y;
				Bout 	<= X or Y;
			else
				D 		<= X xnor Y;
				Bout 	<= X and Y;
			end if;
	end process;
end behaviour;