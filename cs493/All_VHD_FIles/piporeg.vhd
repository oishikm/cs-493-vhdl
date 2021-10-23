library ieee;
use ieee.std_logic_1164.all;

entity piporeg is
	port(
		CLK, CLR : in bit;
		I : in bit_vector(3 downto 0);
		Q : out bit_vector(3 downto 0)
	);
end piporeg;

architecture behavior of piporeg is
begin
	process (I, CLK)
		variable temp : bit_vector(3 downto 0) := "0000";
	begin
		if(CLR='1') then
			temp := "0000";
		elsif(CLK'event and CLK='1') then
			Q <= temp;
			temp := I;
		end if;
	end process;
end behavior;