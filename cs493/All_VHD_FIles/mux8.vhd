library ieee;
use ieee.std_logic_1164.all;
entity mux8 is
port(
	I 	: in bit_vector(7 downto 0);
	S 	: in bit_vector(2 downto 0);
	En : in bit;
	Y 	: out bit
);
end mux8;

architecture behaviour of mux8 is
	begin
	process(I, S, En)
		begin
			if(En = '0') then		-- Low enable
				if(S="000") 	then	Y <= I(0);
				elsif(S="001")	then	Y <= I(1);
				elsif(S="010")	then	Y <= I(2);
				elsif(S="011")	then	Y <= I(3);
				elsif(S="100")	then	Y <= I(4);
				elsif(S="101")	then	Y <= I(5);
				elsif(S="110")	then	Y <= I(6);
				else						Y <= I(7);
				end if;
			else	Y<='0';
			end if;
	end process;
end behaviour;
