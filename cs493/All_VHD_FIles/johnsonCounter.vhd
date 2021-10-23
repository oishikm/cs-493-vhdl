library ieee;
use ieee.std_logic_1164.all;

entity johnsonCounter is port ( CLR, CLK : in std_logic;
    Q : out std_logic_vector(0 to 3));
end johnsonCounter;
 
architecture behavior of johnsonCounter is
	component dFlipFlop port(D, DCLR, DCLK : in std_logic;
		Q, Qb : out std_logic);
	end component;
	
	signal S1, S2, S3, S4, S1b, S2b, S3b, S4b : std_logic;
begin
	MAP0 : dFlipFlop port map(S4b, CLR, CLK, S1, S1b);
	Q(0) <= S1;
	MAP1 : dFlipFlop port map(S1, CLR, CLK, S2, S2b);
	Q(1) <= S2;
	MAP2 : dFlipFlop port map(S2, CLR, CLK, S3, S3b);
	Q(2) <= S3;
	MAP3 : dFlipFlop port map(S3, CLR, CLK, S4, S4b);
	Q(3) <= S4;
	
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity dFlipFlop is
	port	(
		D, DCLR, DCLK	:	in std_logic;
		Q, Qb		:	out std_logic
	);
end dFlipFlop;

architecture behavior of dFlipFlop is
begin
	process(D, DCLR, DCLK)
	begin
		if(DCLK'event and DCLK = '1') then
			if DCLR = '1' then
				Q <= '0';
				Qb <= '1';
			else
				Q <= D;
				Qb <= not D;
			end if;
		end if;
	end process;
end behavior;