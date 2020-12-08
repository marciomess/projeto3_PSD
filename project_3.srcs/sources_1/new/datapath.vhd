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
 clk : in std_logic;
 rst : in std_logic;
 enable1 : in std_logic;
 enable2 : in std_logic;
 enable3 : in std_logic;
 enable4 : in std_logic;
 enable5 : in std_logic;
 enable6 : in std_logic;
 enable7 : in std_logic;
 enable8 : in std_logic;
 data_Rin : in  std_logic_vector(11 downto 0);  -- Q5.7
 data_Iin : in  std_logic_vector(11 downto 0)  -- Q5.7
 
 );
end datapath;

architecture Behavioral of datapath is


component registo is
    port(
    clk : in std_logic;
    regin : in std_logic_vector(11 downto 0);
    regout : out std_logic_vector(11 downto 0);
    enablereg: in std_logic;
    rst: in std_logic
  );
 end component;
 
 
  component abs_add is
    port(
        data_in1: in  std_logic_vector(11 downto 0);
        data_in2: in  std_logic_vector(11 downto 0);
        res_abs_add : out std_logic_vector (23 downto 0)
        );
    end component;
 
 component add is
    port(
        data_in1: in  std_logic_vector(11 downto 0);
        data_in2: in  std_logic_vector(11 downto 0);
        res_add : out std_logic_vector (23 downto 0)
        );
    end component;
    
    
 component sub is
    port(
        data_in1: in  std_logic_vector(11 downto 0);
        data_in2: in  std_logic_vector(11 downto 0);
        res_sub : out std_logic_vector (23 downto 0));
    end component;

 component multiplier is
    port(
        data_in1: in  std_logic_vector(11 downto 0);
        data_in2: in  std_logic_vector(11 downto 0);
        res_mult : out std_logic_vector (23 downto 0));    
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


--register inputs and outputs
--signal x11_Rin :   std_logic_vector (11 downto 0);
--signal x11_Iin :   std_logic_vector (11 downto 0);
--signal x12_Rin :   std_logic_vector (11 downto 0);
--signal x12_Iin :   std_logic_vector (11 downto 0);
--signal x21_Rin :   std_logic_vector (11 downto 0);
--signal x21_Iin :   std_logic_vector (11 downto 0);
--signal x22_Rin :   std_logic_vector (11 downto 0);
--signal x22_Iin :   std_logic_vector (11 downto 0);

signal x11_Rout :   std_logic_vector (11 downto 0);
signal x11_Iout :   std_logic_vector (11 downto 0);
signal x12_Rout :   std_logic_vector (11 downto 0);
signal x12_Iout :   std_logic_vector (11 downto 0);
signal x21_Rout :   std_logic_vector (11 downto 0);
signal x21_Iout :   std_logic_vector (11 downto 0);
signal x22_Rout :   std_logic_vector (11 downto 0);
signal x22_Iout :   std_logic_vector (11 downto 0);

--multplication result signals
signal multout1 :   std_logic_vector (23 downto 0);
signal multout2 :   std_logic_vector (23 downto 0);
signal multout3 :   std_logic_vector (23 downto 0);
signal multout4 :   std_logic_vector (23 downto 0);
signal multout5 :   std_logic_vector (23 downto 0);
signal multout6 :   std_logic_vector (23 downto 0);
signal multout7 :   std_logic_vector (23 downto 0);
signal multout8 :   std_logic_vector (23 downto 0);

--subtractor and adder outputs
signal subout1 :   std_logic_vector (23 downto 0);
signal subout2 :   std_logic_vector (23 downto 0);
signal addout1 :   std_logic_vector (23 downto 0);
signal addout2 :   std_logic_vector (23 downto 0);
signal addout3 :   std_logic_vector (23 downto 0);
signal addout4 :   std_logic_vector (23 downto 0);


--absolute sum signal out
signal abs_add_out :   std_logic_vector (23 downto 0);



begin


reg1: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x11_Rout,
    enablereg => enable1
    );

reg2: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x12_Rout,
    enablereg => enable2
    );
    
reg3: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x21_Rout,
    enablereg => enable3
    );

reg4: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x22_Rout,
    enablereg => enable4
    );


reg5: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x11_Iout,
    enablereg => enable5
    );
    
 reg6: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x12_Iout,
    enablereg => enable6
    );
    
  reg7: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x21_Iout,
    enablereg => enable7
    );
    
   reg8: registo port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x22_Iout,
    enablereg => enable8
    );
add1: add port map(
    data_in1 => multout3,
    data_in2 => multout4,
    res_add => addout1

        );
        
add2: add port map(
    data_in1 => multout7,
    data_in2 => multout8,
    res_add => addout2

        );
        
add3: add port map(
    data_in1 => subout1,
    data_in2 => addout1,
    res_add => addout3

        );
add4: add port map(
    data_in1 => subout2,
    data_in2 => addout2,
    res_add => addout4

        );

sub1: sub port map(
    data_in1 => multout1,
    data_in2 => multout2,
    res_sub => subout1

        );
        
        
sub2: sub port map(
    data_in1 => multout5,
    data_in2 => multout6,
    res_sub => subout2

        );
        
absadd: abs_add port map(
    data_in1 => addout3,
    data_in2 => addout4,
    res_abs_add => abs_add_out
        );


mult1: multiplier port map(
    data_in1 => x11_Rout,
    data_in2 => x22_Rout,
    res_mult => multout1

        );  
        
mult2: multiplier port map(
    data_in1 => x11_Iout,
    data_in2 => x22_Iout,
    res_mult => multout2

        ); 
        
 mult3: multiplier port map(
    data_in1 => x11_Iout,
    data_in2 => x22_Rout,
    res_mult => multout3

        ); 
mult4: multiplier port map(
    data_in1 => x11_Rout,
    data_in2 => x22_Iout,
    res_mult => multout4

        ); 
mult5: multiplier port map(
    data_in1 => x12_Rout,
    data_in2 => x21_Rout,
    res_mult => multout5

        ); 
 mult6: multiplier port map(
    data_in1 => x12_Iout,
    data_in2 => x21_Iout,
    res_mult => multout6

        ); 
 mult7: multiplier port map(
    data_in1 => x12_Iout,
    data_in2 => x21_Rout,
    res_mult => multout7

        ); 


 mult8: multiplier port map(
    data_in1 => x12_Rout,
    data_in2 => x21_Iout,
    res_mult => multout8

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
