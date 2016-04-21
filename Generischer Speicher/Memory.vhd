LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity memory is
	generic(
		N: positive;
		M: positive
	);
	port(
		clk: in std_logic;
		wena: in std_logic;
		ra, wa: in std_logic_vector(N-1 downto 0); 
		wd: in std_logic_vector(M-1 downto 0);
		rd: out std_logic_vector(M-1 downto 0)
	);
end entity memory;

architecture behav of memory is
	type mem_type is arrary(0 to 2**N-1) of std_logic_vector(M-1 downto 0);
	signal mem: mem_type; 
begin
	
	read: process(ra, mem) 
	begin
		rd <= mem(to_integer(unsigned(ra)));
	end process read;

	write: process(clk)
	begin
		if clk='1' and clk'event then
			if wena='1' then
				mem(to_integer(unsigned(wa))) <= wd;
			end if;
		end if;
	end process;
end architecture;
		end if;
	end process write;


end architecture behav;