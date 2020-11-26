----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2020 03:43:42 PM
-- Design Name: 
-- Module Name: datapath - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
 Port ( 
 clk : in std_logic
 
 );
end datapath;

architecture Behavioral of datapath is


component registo is
    port(
    clk : in std_logic
  );
 end component;
 
 
 component alu1 is
    port(
 clk : in std_logic    );
    end component;

 component multiplier1 is
    port(
 clk : in std_logic    );
    end component;
    
    
     component accum1 is
    port(
 clk : in std_logic    );
    end component;



   component extreme is
    port(
 clk : in std_logic    );
    end component;
    
    
     component splitter is
    port(
 clk : in std_logic    );
    end component;
    
     component absolute is
    port(
 clk : in std_logic    );
    end component;



begin

reg1: registo port map(
    clk => clk
    
    );

alucode1: alu1 port map(
    clk => clk

        );
        
        
mult1: multiplier port map(
    clk => clk

        );  
        
        
        
accumone: accum port map(
    clk => clk

        );   
        
        
 extreme1: extreme port map(
    clk => clk

        );    
        
splitter1: splitter port map(
    clk => clk

        );        

absolute1: absolute port map(
    clk => clk

        );        
               

end Behavioral;
