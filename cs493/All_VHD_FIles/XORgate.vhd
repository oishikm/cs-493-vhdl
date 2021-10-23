library ieee;
use ieee.std_logic_1164.all;
entity XORgate is
port
(
	A, B: in std_logic;
	S: out std_logic
);
end XORgate;

architecture behaviour of XORgate is

begin
	S <= A xor B;

end behaviour;