  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  USE work.all;

ARCHITECTURE struct OF lauflicht IS 
  signal ena : std_logic;
    


  BEGIN

    i1: entity divider
    port map(
      clk => clk,
      res_n => res_n,
      ena => ena
    );

    i2: entity sreg
    port map(
      clk => clk,
      res_n => res_n,
      leds => leds,
      ena => ena
    );

  END ARCHITECTURE struct;
