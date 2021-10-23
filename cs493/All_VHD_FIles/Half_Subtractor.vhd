library ieee;
use ieee.std_logic_1164.all;
entity Half_Subtractor is
port	(
	X, Y : in std_logic;
	D, B : out std_logic
);
end Half_Subtractor;

architecture behaviour of Half_Subtractor is
signal e : std_logic;
	begin
		E <= not X;
		D <= X xor Y;
		B <= E and Y;

end behaviour;