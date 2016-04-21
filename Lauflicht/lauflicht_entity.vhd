
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY lauflicht is 
  	PORT(
  		clk: in std_logic;
  		res_n: in std_logic;
  		leds: out std_logic_vector(7 downto 0)
  	);
  END ENTITY lauflicht;