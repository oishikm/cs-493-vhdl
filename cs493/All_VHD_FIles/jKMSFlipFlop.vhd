library ieee;
use ieee.std_logic_1164.all;

entity jKMSFlipFlop is
port(
	J		:	in std_logic;
	K		:	in std_logic;
	CLK	:	in std_logic;
	Q		:	out std_logic;
	Qb 	:	out std_logic
);
end jKMSFlipFlop;

architecture behavior of jKMSFlipFlop is
begin
	process(J, K, CLK)
		variable temp : std_logic := '0';
	begin
		if(CLK'event and CLK='1')	then
			if(J='0' and K='0')	then
				temp := temp;
			elsif(J='0' and K='1')	then
				temp := '0';
			elsif(J='1' and K='0')	then
				temp := '1';
			else
				temp := not temp;
			end if;
		elsif(CLK'event and CLK='0')	then
			Q <= temp;
			Qb <= not(temp);
		end if;
	end process;
end behavior;
