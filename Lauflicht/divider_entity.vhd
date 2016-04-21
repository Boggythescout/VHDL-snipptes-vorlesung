
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY divider is 
  	PORT(
  		clk: in std_logic;
  		res_n: in std_logic;
  		ena: out std_logic
  	);
  END ENTITY divider;