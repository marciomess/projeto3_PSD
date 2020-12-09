----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2020 03:43:59 PM
-- Design Name: 
-- Module Name: control - Behavioral
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

entity control is
 Port ( 
  clk    : in  std_logic;
  rst : in std_logic;
 enable1 : out std_logic;
 enable2 : out std_logic;
 enable3 : out std_logic;
 enable4 : out std_logic;
 enable5 : out std_logic;
 enable6 : out std_logic;
 enable7 : out std_logic;
 enable8 : out std_logic;
 enable9 : out std_logic;
 enable10 : out std_logic;
 enable11 : out std_logic;
 enable12 : out std_logic;
 enable13 : out std_logic;
 enable14 : out std_logic;
 enable15 : out std_logic;
 enable16 : out std_logic;
 enable17 : out std_logic;
 enable18 : out std_logic;
 enable19 : out std_logic;
 enable20 : out std_logic;
 enable21 : out std_logic;
 enable22 : out std_logic;
 startMode: in std_logic;
 cnt : in std_logic_vector(5 downto 0)
  
 );
end control;


architecture Behavioral of control is

  
  
  type fsm_states is (start, x11, x12, x21, x22, mult, add_sub, add, accmbasadd, mem_out, finish);
  signal currstate, nextstate : fsm_states;
  signal adressout :  std_logic_vector(9 downto 0);
   signal adressin :  std_logic_vector(9 downto 0);
  signal count_en :  std_logic;
  signal control :  std_logic;
  signal counter1en :  std_logic;
   signal counter2en :  std_logic;

begin

    
 state_reg : process (clk, startMode)
  begin
    if clk'event and clk = '1' then
      currstate <= nextstate;
      if rst = '1' and startMode = '1' then 
       currstate <= x11;
      elsif  rst = '1' then
      currstate <= start;
      end if;
    end if;
  end process;


state_comb : process (currstate, cnt)
begin  --  process

    nextstate <= currstate;
    
    
    case currstate is
    
         when start =>

         nextstate<= x11;

         when x11 =>
            
            enable1 <= '1';
            enable2 <= '1';

            nextstate<= x12;
            
          when x12 =>
          
          
            enable3 <= '1';
            enable4 <= '1';
            nextstate<= x21 ;
            
            
           when x21 =>
           
            enable5 <= '1';
            enable6 <= '1';
            nextstate<= x22 ;
            
            when x22 =>
  
            enable7 <= '1';
            enable8 <= '1';
            nextstate<= mult ;
            
            
            when mult =>
            
            
            enable9 <= '1';
            enable10 <= '1';
            enable11 <= '1';
            enable12 <= '1';
            enable13 <= '1';
            enable14 <= '1';
            enable15 <= '1';
            enable16 <= '1';
            
            nextstate<= add_sub;


           when add_sub =>
            
            enable17 <= '1';
            enable18 <= '1';
            enable19 <= '1';
            enable20 <= '1';
            nextstate<= add;
          
          
            when add =>

             nextstate<= accmbasadd;
             
            when accmbasadd =>

            nextstate<= mem_out;
            

            
            
           when mem_out =>
 
          if cnt = X"1F" then
               nextstate<= finish;
           else 
               nextstate <= mult;
            end if;   
            
           when finish =>
           
           
            

end case;
end process;


end Behavioral;
