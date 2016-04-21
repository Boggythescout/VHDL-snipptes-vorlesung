LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

architecture behav of clkres_gen is
BEGIN
	
	takt: process is
	begin
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
	end process takt; 

	reset : process is
	begin
		res_n <= '0';
		wait for 25ns;
		res_n <= '1';
		wait;
	end process reset; 

end architecture behav;