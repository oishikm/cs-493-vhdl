library ieee;
use ieee.std_logic_1164.all;
entity mux4 is
port(
	I3, I2, I1, I0, S1, S0 	: in bit;
	F								: out bit
);
end mux4;

architecture behaviour of mux4 is
begin
	process(I3, I2, I1, I0, S1, S0)
	begin
		if(S1='0' and S0='0') 		then
			F <= I0;
		elsif(S1='0' and S0='1') 	then
			F <= I1;
		elsif(S1='1' and S0='0')	then
			F <= I2;
		else
			F <= I3;
		end if;
	end process;
end behaviour;