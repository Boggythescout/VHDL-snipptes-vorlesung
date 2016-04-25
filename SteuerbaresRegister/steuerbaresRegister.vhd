entity strg_reg is 
	port(
		e, d, clk, res_n: in std_logic;
		q: out std_logic
		);
end entity strg_reg;

architecture behav of strg_reg is
begin
	process(clk, res_n) is
	begin
		if res_n ='0' then
			q<=(others=>'0');
		else
			if clk'event and clk='1' then
				if ena='1' then
					q<=d;
				end if;
			end if;
		end if;
	end process;
end architecture;