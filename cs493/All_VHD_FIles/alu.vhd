library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity alu is
	port(
		A, B : in std_logic_vector(3 downto 0);
		CLK, M : in std_logic;
		S : in std_logic_vector(2 downto 0);
		F : out std_logic_vector(3 downto 0)
	);
end alu;

architecture behavior of alu is
begin
	process(A, B, CLK, M, S)
	begin
		if(CLK'event and CLK = '1') then
			if(M='1') then
				case S is
					when "000" =>
						F <= not (A);
					when "001" =>
						F <= A and (not(B));
					when "010" =>
						F <= A xnor B;
					when "011" =>
						F <= "0001";
					when "100" =>
						F <= A and B;
					when "101" =>
						F <= A or (not(B));
					when "110" =>
						F <= B;
					when "111" =>
						F <= "0000";	
				end case;
			else
				case S is
					when "000" =>
						F <= A - 1;
					when "001" =>
						F <= not(B) + 1;
					when "010" =>
						F <= A + B + 1;
					when "011" =>
						F <= -"0001";
					when "100" =>
						F <= A + B - 1;
					when "101" =>
						F <= A and B + 1;
					when "110" =>
						F <= B + 1;
					when "111" =>
						F <= A;	
				end case;
			end if;
		end if;
	end process;
end behavior;