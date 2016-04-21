
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY clkres_gen is 
  	PORT(
  		clk: out std_logic;
  		res_n: out std_logic);
  END ENTITY clkres_gen;