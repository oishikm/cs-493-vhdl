library ieee;
use ieee.std_logic_1164.all;

entity siporeg is
	port(
		I, CLK, CLR : in bit;
		M : out bit;
		Q : out bit_vector(3 downto 0)
	);
end siporeg;

architecture behavior of siporeg is
begin
	process (I, CLK)
		variable temp : bit_vector(3 downto 0) := "0000";
	begin
		if(CLR='1') then
			temp := "0000";
		elsif(CLK'event and CLK='1') then
			temp(3 downto 1) := temp(2 downto 0);
			temp(0) := I;
		end if;
		M <= I;
		Q <= temp;
	end process;
end behavior;