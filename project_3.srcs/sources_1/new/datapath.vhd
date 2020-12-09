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
 enable9 : in std_logic;
 enable10 : in std_logic;
 enable11 : in std_logic;
 enable12 : in std_logic;
 enable13 : in std_logic;
 enable14 : in std_logic;
 enable15 : in std_logic;
 enable16 : in std_logic;
 enable17 : in std_logic;
 enable18 : in std_logic;
 enable19 : in std_logic;
 enable20 : in std_logic;
 enable21 : in std_logic;
 enable22 : in std_logic;
 data_Rin : in  std_logic_vector(11 downto 0);  -- Q5.7
 data_Iin : in  std_logic_vector(11 downto 0)  -- Q5.7
 
 );
end datapath;

architecture Behavioral of datapath is


component registo1 is
    port(
    clk : in std_logic;
    regin : in std_logic_vector(11 downto 0);
    regout : out std_logic_vector(11 downto 0);
    enablereg: in std_logic;
    rst: in std_logic
  );
 end component;
 
 
 component registo2 is
    port(
    clk : in std_logic;
    regin : in std_logic_vector(23 downto 0);
    regout : out std_logic_vector(23 downto 0);
    enablereg: in std_logic;
    rst: in std_logic
  );
 end component;
 
  component registo3 is
    port(
    clk : in std_logic;
    regin : in std_logic_vector(24 downto 0);
    regout : out std_logic_vector(24 downto 0);
    enablereg: in std_logic;
    rst: in std_logic
  );
 end component;
 
   component registo4 is
    port(
    clk : in std_logic;
    regin : in std_logic_vector(25 downto 0);
    regout : out std_logic_vector(25 downto 0);
    enablereg: in std_logic;
    rst: in std_logic
  );
 end component;
 
 
 
  component abs_add is
    port(
        data_in1: in  std_logic_vector(23 downto 0);
        data_in2: in  std_logic_vector(23 downto 0);
        res_abs_add : out std_logic_vector (23 downto 0)
        );
    end component;
    
    
 
 component add is
    port(
        data_in1: in  std_logic_vector(23 downto 0);
        data_in2: in  std_logic_vector(23 downto 0);
        res_add : out std_logic_vector (23 downto 0)
        );
    end component;
    
    
 component sub is
    port(
        data_in1: in  std_logic_vector(23 downto 0);
        data_in2: in  std_logic_vector(23 downto 0);
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
        clk : in std_logic;
        input : std_logic_vector (23 downto 0)
        
        );
    end component;



   component extreme is
    port(
        clk : in std_logic    
        
        );
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

--subtractor and adder outputs inputs
signal subin1_A :   std_logic_vector (23 downto 0);
signal subin2_A :   std_logic_vector (23 downto 0);
signal addin1_A :   std_logic_vector (23 downto 0);
signal addin2_A :   std_logic_vector (23 downto 0);
signal addin3_A :   std_logic_vector (23 downto 0);
signal addin4_A :   std_logic_vector (23 downto 0);


signal subin1_B :   std_logic_vector (23 downto 0);
signal subin2_B :   std_logic_vector (23 downto 0);
signal addin1_B :   std_logic_vector (23 downto 0);
signal addin2_B :   std_logic_vector (23 downto 0);
signal addin3_B :   std_logic_vector (23 downto 0);
signal addin4_B :   std_logic_vector (23 downto 0);


signal subout1 :   std_logic_vector (23 downto 0);
signal subout2 :   std_logic_vector (23 downto 0);
signal addout1 :   std_logic_vector (23 downto 0);
signal addout2 :   std_logic_vector (23 downto 0);
signal addout3 :   std_logic_vector (23 downto 0);
signal addout4 :   std_logic_vector (23 downto 0);

signal in_accm1 :   std_logic_vector (23 downto 0);
signal in_accm2 :   std_logic_vector (23 downto 0);




begin


reg1: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x11_Rout,
    enablereg => enable1
    );

reg2: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x12_Rout,
    enablereg => enable2
    );
    
reg3: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x21_Rout,
    enablereg => enable3
    );

reg4: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Rin,
    regout => x22_Rout,
    enablereg => enable4
    );


reg5: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x11_Iout,
    enablereg => enable5
    );
    
 reg6: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x12_Iout,
    enablereg => enable6
    );
    
  reg7: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x21_Iout,
    enablereg => enable7
    );
    
   reg8: registo1 port map(
    clk => clk,
    rst => rst,
    regin => data_Iin,
    regout => x22_Iout,
    enablereg => enable8
    );
    
    
   reg9: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout1,
    regout => subin1_A,
    enablereg => enable9
    );
    
    
  reg10: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout2,
    regout => subin1_B,
    enablereg => enable10
    );
    
    
   reg11: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout3,
    regout => addin1_A,
    enablereg => enable11
    );
    
    
    
   reg12: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout4,
    regout => addin1_B,
    enablereg => enable12
    );
    
    
       
   reg13: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout5,
    regout => subin2_A,
    enablereg => enable13
    );
    
    
  reg14: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout6,
    regout => subin2_B,
    enablereg => enable14
    );
    
    
    reg15: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout7,
    regout => addin2_A,
    enablereg => enable15
    );
    
    
    
    reg16: registo2 port map(
    clk => clk,
    rst => rst,
    regin => multout8,
    regout => addin2_B,
    enablereg => enable16
    );
    
    
    
    reg17: registo3 port map(
    clk => clk,
    rst => rst,
    regin => subout1,
    regout => addin3_A,
    enablereg => enable17
    );
    
    
    reg18: registo3 port map(
    clk => clk,
    rst => rst,
    regin => addout1,
    regout => addin3_B,
    enablereg => enable18
    );
    
    
    reg19: registo3 port map(
    clk => clk,
    rst => rst,
    regin => subout2,
    regout => addin4_A,
    enablereg => enable19
    );
    
    
    
    reg20: registo3 port map(
    clk => clk,
    rst => rst,
    regin => addout2,
    regout => addin4_B,
    enablereg => enable20
    );
    
    
    
    reg21: registo4 port map(
    clk => clk,
    rst => rst,
    regin => addout3,
    regout => in_accm1,
    enablereg => enable21
    
    );
    
    reg22: registo4 port map(
    clk => clk,
    rst => rst,
    regin => addout4,
    regout => in_accm2,
    enablereg => enable22
    
    );    
    
    
    
add1: add port map(
    data_in1 => addin1_A,
    data_in2 => addin1_B,
    res_add => addout1

        );
        
add2: add port map(
    data_in1 => addin2_A,
    data_in2 => addin1_B,
    res_add => addout2

        );
        
add3: add port map(
    data_in1 => addin3_A,
    data_in2 => addin3_B,
    res_add => addout3

        );
add4: add port map(
    data_in1 => addin4_A,
    data_in2 => addin4_B,
    res_add => addout4

        );

sub1: sub port map(
    data_in1 => subin1_A,
    data_in2 => subin1_B,
    res_sub => subout1

        );
        
        
sub2: sub port map(
    data_in1 => subin2_A,
    data_in2 => subin2_B,
    res_sub => subout2

        );
        
absadd: abs_add port map(
     data_in1 => in_accm1,
     data_in2 => in_accm2
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
    clk => clk,
    input => in_accm1
        ); 
        
        
accum2: accum port map(
    clk => clk,
    input => in_accm2
        );    
        
        
 extreme1: extreme port map(
    clk => clk

        );    
              
               
end Behavioral;

