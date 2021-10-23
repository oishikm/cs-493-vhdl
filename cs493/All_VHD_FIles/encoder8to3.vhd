library ieee;
use ieee.std_logic_1164.all;

entity encoder8to3 is
port	(
	En : in bit;
	I : in bit_vector(7 downto 0);
	O : out bit_vector(2 downto 0)
);
end encoder8to3;

architecture behaviour of encoder8to3 is
begin
	process(En, I)
	begin
		if (En='1') then
			O <= "000";
		else	--Low enable
			if (I = "00000001") then
				O <= "000";
			elsif (I = "00000010") then
				O <= "001";
			elsif (I = "00000100") then
				O <= "010";
			elsif (I = "00001000") then
				O <= "011";
			elsif (I = "00010000") then
				O <= "100";
			elsif (I = "00100000") then
				O <= "101";
			elsif (I = "01000000") then
				O <= "110";
			elsif (I = "10000000") then
				O <= "111";
			else
				O <= "000";
			end if;
		end if;
	end process;
end behaviour;