-- Full Adder by cascading two Half Adders
-- @auth Oishik Mukhopadhyay
-- 12 May 2018 :: 21:14
library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is port (Cin, X, Y : in bit; Sum, Cout : out bit);
end fullAdder;

architecture behavior of fullAdder is
	component halfAdder port(A, B : in bit; S, C : out bit);
	end component;
	
	signal sigsum, sigcarryA, sigcarryB : bit;
begin
	MAP1 : halfAdder port map(X, Y, sigsum, sigcarryA);
	MAP2 : halfAdder port map(sigsum, Cin, Sum, sigcarryB);
	Cout <= sigcarryA or sigcarryB;
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is port(A, B : in bit; S, C : out bit);
end halfAdder;

architecture halfAdderWiki of halfAdder is
begin
	S <= A xor B;
	C <= A and B;
end halfAdderWiki;
