entity puls is 
	port(
		clk, x, res_n: in std_logic;
		y: out std_logic
		);
end entity puls;

architecture medwedew of puls is
begin
	
register: process(clk, res_n) is
		type state_type is (idle, A, B, C);
		variable state: state_type;
	begin
		if res_n='0' then
			state:=idle;
			y<='0';
		else 
			if clk='1' and clk'event then 

			end if;
		end if;
	end process;