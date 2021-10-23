library ieee;
use ieee.std_logic_1164.all;

entity dFlipFlop is
	port	(
		D, CLK	:	in std_logic;
		Q, Qb		:	out std_logic
	);
end dFlipFlop;

architecture behavior of dFlipFlop is
begin
	process(D, CLK)
	begin
		if(CLK'event and CLK = '1') then
			Q <= D;
			Qb <= not D;
		end if;
	end process;
end behavior;