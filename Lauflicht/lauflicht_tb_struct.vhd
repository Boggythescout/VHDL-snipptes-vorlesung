
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  USE work.all;

ARCHITECTURE struct OF lauflicht_tb IS 
    signal clk, res_n : std_logic;
    signal leds : std_logic_vector(7 downto 0);


  BEGIN

    i1: entity clkres_gen
    port map(
      clk => clk,
      res_n => res_n
    );

    i2: entity lauflicht
    port map(
      clk => clk,
      res_n => res_n,
      leds=> leds
    );

  END ARCHITECTURE;
