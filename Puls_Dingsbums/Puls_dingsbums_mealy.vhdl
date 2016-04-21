entity puls is 
	port(
		clk, x, res_n: in std_logic;
		y: out std_logic
		);
end entity puls;

architecture behav of puls is
	type state_type is (idle, A, B, C);
	signal current_state, next_state: state_type;
begin 
	process(x, current_state) is
	begin
		case current_state is 
			when idle => 
				if x = '1' then
					next_state <= A;
				else
					next_state <= idle;
				end if;
			when A =>
				if x = '0' then 
					next_state <= B;
				else
					next_state <= A;
				end if;
			when B =>
				if x = '1' then 
					next_state <= C;
				else
					next_state <= B;
				end if;
			when C =>
				if x = '0' then 
					next_state <= idle;
				else
					next_state <= C;
				end if;
		end case;
	end process;

	register: process(clk, res_n) is
	begin
		if res_n='0' then
			current_state <= idle;
		else
			if clk='1' and clk'event then
				current_state <= next_state;
			end if;
		end if;
	end process register;

	process(x, current_state) is 
		type table_type is array (state_type), bit) of std_logic;
		constant table: table_type := (	idle=>('0','1'),
										A=>('0','1'),
										B=>('0','1'),
										C=>('0','1'));
	begin 
		y<= table(current_state, x);
	end process;
end architecture;