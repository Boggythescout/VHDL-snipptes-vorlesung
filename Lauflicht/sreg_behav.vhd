LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

architecture behav of sreg is
BEGIN
	process(clk, res_n) is
		variable leds_int : std_logic_vector(leds'range);
	begin
		if res_n = '0' then
			leds_int :=(leds'left => '1', others => '0');
		else
			if clk'event and clk='1' then
				if ena ='1' then
					leds_int := leds_int (leds'right) & leds_int(leds'left downto leds'right+1);
				end if;
			end if;	
		end if;

		leds<= leds_int;
	end process
end architecture behav;