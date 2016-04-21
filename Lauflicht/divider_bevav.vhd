LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

architecture behav of divider is
BEGIN
	process(clk, res_n) is
		type counter_type is range 0 to 4_999_999;
		variable counter: counter_type;
	begin
		if res_n ='0' then
			counter := counter_type'low;
			enable <= '0'; 
		else 
			if clk'event and clk='1' then
				if counter=counter_type'high then
					counter := counter_type'low;
					enable <= '1';
				else
					counter := counter+1;
					enable <= '0';
				end if;
			end if;
		end if;
	end process;
end architecture behav;