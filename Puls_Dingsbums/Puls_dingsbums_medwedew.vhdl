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
				case state is
					when idle => if x='0' then 
									state := idle;
									y <= '0';
								else 
									state := A;
									y <= '1';
								end if;						
					when A => if x='0' then 
									state := B;
									y <= '0';
								else 
									state := A;
									y <= '1';
								end if;
					when B => if x='0' then 
									state := B;
									y <= '0';
								else 
									state := C;
									y <= '0';
								end if;
					when C => if x='0' then 
									state := idle;
									y <= '0';
								else 
									state := C;
									y <= '0';
								end if;
				end case;
			end if;
		end if;
	end process;
end architecture;