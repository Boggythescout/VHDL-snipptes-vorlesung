
--In Package müsste das definiert sein da es ein Eingang der Entity ist
--type mode_type is (oder, exoder, und, nicht, inc, add, sub, dec);


entity einfache_Alu is 
	port(
		mode: in mode_type;
		x,y: in std_logic_vector(15 downto 0); 
		c_in: in std_logic;
		fc: out std_logic
		);
end entity einfache_Alu;

architecture behav of einfache_Alu is
begin
	process(mode, x, y,c_in) is
		variable f_au: std_logic_vector(x'range);
		variable y_int: std_logic_vector(x'range);
	begin
		if mode=inc or mode=dec then
			y_int :=(others=>'0');
		end if;

		if mode=add or mode = inc then
			f_au:=std_logic_vector(unsigned(x)+ unsigned(y));
		else 
			f_au:=std_logic_vector(unsigned(x)-unsigned(y));
		end if;

		case mode is
			when oder => fc<=x or y;
			when exoder => fc<=x xor y;
			when und => fc<=x and y;
			when nicht => fc<= not x;
			when inc|add|sub|dec => fc<=f_au;
		end case;
	end process;
end architecture;