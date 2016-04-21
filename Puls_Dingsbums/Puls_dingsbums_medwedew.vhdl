architecture medwedew of puls is
	type state_type is (idle, A, B, C);
	signal current_state, next_state: state_type;
	signal next_y: std_logic;
begin
