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
    clk : in std_logic;
    regin : in std_logic_vector(31 downto 0);
    regout : out std_logic_vector(31 downto 0);
    enablereg: in std_logic;
    rst: in std_logic
  );
 end component;
 
 
  component abs_add is
    port(
        in_data1 : in std_logic_vector(31 downto 0);
        in_data2 : in std_logic_vector(31 downto 0);
        out_data : out std_logic_vector(31 downto 0)
            );
    end component;
 
 component add is
    port(
        in_data1 : in std_logic_vector(31 downto 0);
        in_data2 : in std_logic_vector(31 downto 0);
        out_data : out std_logic_vector(31 downto 0)
         );
    end component;
    
    
 component sub is
    port(
        in_data1 : in std_logic_vector(31 downto 0);
        in_data2 : in std_logic_vector(31 downto 0);
        out_data : out std_logic_vector(31 downto 0)
        );
    end component;

 component multiplier is
    port(
        in_data1 : in std_logic_vector(31 downto 0);
        in_data2 : in std_logic_vector(31 downto 0);
        out_data : out std_logic_vector(31 downto 0)    
        );
   end component;
    
    
     component accum
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


signal A_Rin :   std_logic_vector (11 downto 0);
signal A_Iin :   std_logic_vector (11 downto 0);
signal B_Rin :   std_logic_vector (11 downto 0);
signal B_Iin :   std_logic_vector (11 downto 0);
signal C_Rin :   std_logic_vector (11 downto 0);
signal C_Iin :   std_logic_vector (11 downto 0);
signal D_Rin :   std_logic_vector (11 downto 0);
signal D_Iin :   std_logic_vector (11 downto 0);


begin


reg1: registo port map(
    clk => clk,
    regin => A_Rin
    
    );

reg2: registo port map(
    clk => clk,
    regin => A_Iin
    
    );
    
reg3: registo port map(
    clk => clk,
    regin => B_Rin
    
    );

reg4: registo port map(
    clk => clk,
    regin => B_Iin
    
    );


reg5: registo port map(
    clk => clk,
    regin => C_Rin
    
    );
    
 reg6: registo port map(
    clk => clk,
    regin => C_Iin
    
    );
    
  reg7: registo port map(
    clk => clk,
    regin => D_Rin
    
    );
    
   reg8: registo port map(
    clk => clk,
    regin => D_Iin
    
    );
add1: add port map(
    clk => clk

        );
        
add2: add port map(
    clk => clk

        );
        
add3: add port map(
    clk => clk

        );
add4: add port map(
    clk => clk

        );

subb1: sub port map(
    clk => clk

        );
        
        
subb2: sub port map(
    clk => clk

        );
        
absadd: abs_add port map(
    clk => clk

        );


mult1: multiplier port map(
    clk => clk

        );  
        
mult2: multiplier port map(
    clk => clk

        ); 
        
 mult3: multiplier port map(
    clk => clk

        ); 
mult4: multiplier port map(
    clk => clk

        ); 
mult5: multiplier port map(
    clk => clk

        ); 
 mult6: multiplier port map(
    clk => clk

        ); 
 mult7: multiplier port map(
    clk => clk

        ); 


 mult8: multiplier port map(
    clk => clk

        );            
        
accum1: accum port map(
    clk => clk

        ); 
accum2: accum port map(
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
