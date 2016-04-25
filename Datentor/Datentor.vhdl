entity datentor is 
	port(
		e, g: in std_logic;
		a: out std_logic
		);
end entity datentor;


process(e,g) is
begin
	if g='1' then 
		a<=e;
	else
		a<='Z';
	end if;
end process;