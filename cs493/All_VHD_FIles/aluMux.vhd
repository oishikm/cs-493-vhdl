library ieee;
use ieee.std_logic_1164.all;

entity aluMux is
port(
	A, B : in std_logic;
	S : in std_logic_vector(1 downto 0);	-- For 4 selects : 00 01 10 11
	F : out std_logic
);
end aluMux;

architecture oishik_alu of aluMux is

	component mux4to1
		port	(
			I : in std_logic_vector(3 downto 0);
			Selects : in std_logic_vector(1 downto 0);
			Output : out std_logic
		);
	end component;

signal M : std_logic_vector(3 downto 0) := "0000";	
	
begin

	M(3) <= (A nand B);
	M(2) <= (A nor B);
	M(1) <= (not A);
	M(0) <= (not B);
	map1 : mux4to1 port map (M, S, F);
	
end oishik_alu;

-- Definition of 4 to 1 Multiplexer

library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
port(
	I : in std_logic_vector(3 downto 0);
	Selects : in std_logic_vector(1 downto 0);
	Output : out std_logic
);
end mux4to1;

architecture oishik_mux of mux4to1 is
begin
	Output <= I(3) when Selects = "00" else
				I(2) when Selects = "01" else
				I(1) when Selects = "10" else
				I(0);
end oishik_mux;