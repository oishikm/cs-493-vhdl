library ieee;
use ieee.std_logic_1164.all;
entity Half_Subtractor_Behavorial is
port	(
	X, Y : in bit;
	D, B : out bit
);
end Half_Subtractor_Behavorial;

architecture behaviour of Half_Subtractor_Behavorial is
signal E : bit;
begin
	E <= not Y;
	process(X, Y)
		begin
			if (X = '0') then
				B <= Y;
				D <= Y;
			else
				B <= '0';
				D <= E;
			end if;
		end process;

end behaviour;