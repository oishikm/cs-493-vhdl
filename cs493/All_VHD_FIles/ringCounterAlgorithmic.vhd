library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ringCounter is port ( CLR, CLK : in std_logic;
    Q : out std_logic_vector(0 to 3));
end ringCounter;

architecture behavior of ringCounter is
begin
	process(CLR, CLK)
		variable tmp : std_logic_vector(0 to 3) := "1000";
		variable index : integer := 1;
	begin
		if CLK'event and CLK = '1' then
			if CLR = '1' or index = 4 then
				index := 1;
				tmp := "1000";
			else
				tmp(index) := '1';
				tmp(index - 1) := '0';
				index := index + 1;
			end if;
			Q <= tmp;
		end if;
	end process;
end behavior;
