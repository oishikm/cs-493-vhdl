library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity upCounter is port ( CLR, CLK : in std_logic;
    Q : out std_logic_vector(2 downto 0));
end upCounter;

architecture behavior of upCounter is
begin
	process(CLR, CLK)
		variable tmp : std_logic_vector(2 downto 0) := "000";
	begin
		if CLK'event and CLK = '1' then
			if tmp = "111" or CLR = '1' then 
             tmp := "000";
			else 
             tmp := tmp + '1';
			end if;
			Q <= tmp;
		end if;
	end process;
end behavior;
