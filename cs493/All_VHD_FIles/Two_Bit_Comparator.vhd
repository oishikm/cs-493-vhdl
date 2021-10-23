library ieee;
use ieee.std_logic_1164.all;
entity Two_Bit_Comparator is
port	(
	A1, B1, A0, B0 : in bit;
	Agreater, Bgreater, ABequal : out bit
);
end Two_Bit_Comparator;

architecture behave of Two_Bit_Comparator is
begin
	process(A1, A0, B1, B0)
	begin
		Agreater <= '0';
		Bgreater <= '0';
		ABequal <= '0';
		if(A1 > B1) then
			Agreater <= '1';
		elsif(A1 < B1) then
			Bgreater <= '1';
		else
			if(A0 > B0) then
				Agreater <= '1';
			elsif(A0 < B0) then
				Bgreater <= '1';
			else
				ABequal <= '1';
			end if;
		end if;
	end process;
end behave;