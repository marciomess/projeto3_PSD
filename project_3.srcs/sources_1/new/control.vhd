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
 enable1 : in std_logic;
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
 startMode: in std_logic
  
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


state_comb : process (currstate, adressin)
begin  --  process

    nextstate <= currstate;
    
    
    case currstate is
    
         when start =>

         
         when x11 =>

            counter1en <= '0';
            counter2en <= '0';
            nextstate<= x12;
            
          when x12 =>
            counter1en <= '0';
            counter2en <= '0';
            nextstate<= x21 ;
            
            
           when x21 =>
            counter1en <= '0';
            counter2en <= '0';
            nextstate<= x22 ;
            
            when x22 =>
            counter1en <= '0';
            counter2en <= '0';
            
            nextstate<= mult ;
            
            
            when mult =>
            counter1en <= '1';
            counter2en <= '1';
            nextstate<= add_sub;

     
            
            
           when add_sub =>
            counter1en <= '0';
            counter2en <= '0';
            nextstate<= add;
          

          
            when add =>
            counter1en <= '0';
            counter2en <= '0';
             nextstate<= accmbasadd;
             
            when accmbasadd =>
            counter1en <= '0';
            counter2en <= '0';
            nextstate<= mem_out;
            
            
           when mem_out =>
            counter1en <= '0';
            counter2en <= '0';
            nextstate<= finish;
            
           when finish =>
           
           
            

end case;
end process;


end Behavioral;
