library ieee;
use ieee.std_logic_1164.all;

entity pisoreg is
	port(
		CLK, CLR, S : in bit;	-- S is select line for I/P or O/P
		I : in bit_vector(3 downto 0);
		Q : out bit
	);
end pisoreg;

architecture behavior of pisoreg is
begin
	process (I, CLK)
		variable temp : bit_vector(3 downto 0) := "0000";
	begin
		if(CLR='1') then
			temp := "0000";
		elsif(CLK'event and CLK='1') then
			if(S = '1')	then	-- High = O/P
				Q <= temp(0);
				temp(2 downto 0) := temp(3 downto 1);
				temp(3) := '0';
			else					-- Low = I/P
				temp := I;
			end if;
		end if;
	end process;
end behavior;