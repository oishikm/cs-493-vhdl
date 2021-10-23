library ieee;
use ieee.std_logic_1164.all;

entity sisoreg is
	port(
		I, CLK, CLR : in bit;
		Q : out bit
	);
end sisoreg;

architecture behavior of sisoreg is
begin
	process (I, CLK)
		variable temp : bit_vector(3 downto 0) := "0000";
	begin
		if(CLR='1') then
			temp := "0000";
		elsif(CLK'event and CLK='1') then
			Q <= temp(0);
			temp(2 downto 0) := temp(3 downto 1);
			temp(3) := I;
		end if;
	end process;
end behavior;