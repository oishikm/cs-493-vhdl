library ieee;
use ieee.std_logic_1164.all;

entity sRFlipFlop is
port(
	S		:	in std_logic;
	R		:	in std_logic;
	CLK	:	in std_logic;
	Q		:	out std_logic;
	Qb 	:	out std_logic
);
end sRFlipFlop;

architecture behavior of sRFlipFlop is
begin
	process(S, R, CLK)
		variable temp : std_logic := '0';
	begin
		if(CLK'event and CLK='1')	then	-- if(rising_edge(CLK))
			if(S='0' and R='0')	then
				temp := temp;
			elsif(S='0' and R='1')	then
				temp := '0';
			elsif(S='1' and R='0')	then
				temp := '1';
			else
				temp := 'Z';
			end if;
		end if;
		Q <= temp;
		Qb <= not temp;
	end process;
end behavior;
