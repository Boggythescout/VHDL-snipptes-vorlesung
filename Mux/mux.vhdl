entity mux is 
	port(
		s, e0, e1, e2: in std_logic;
		a: out std_logic
		);
end entity mux;

architecture behav of mux is
begin
	process(s, e0, e1, e2) is
	begin
		case s is
			when "00" => a <= e0;
			when "01" => a <= e1;
			when "10" => a <= e2;
			when "11" => a <= '-';
			when others => a <= 'X';
		end case;
	end process;
end architecture;