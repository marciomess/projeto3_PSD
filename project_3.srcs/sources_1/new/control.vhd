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
  clk    : in  std_logic
 );
end control;


architecture Behavioral of control is


 component counter1
    port(
      clk    : in  std_logic
      );
  end component;
  
    component counter2
    port(
      clk    : in  std_logic
      );
  end component;

begin

  inst_counter1 : counter1 port map(
    clk    => clk
    );
  
    inst_counter2 : counter2 port map(
    clk    => clk
    );
    
    
    
    
-- state_reg : process (clk)
--  begin
--    if clk'event and clk = '1' then
--      currstate <= nextstate;
--      if rst = '1' then 
--       currstate <= s_initial;
--      end if;
--    end if;
--  end process;


--state_comb : process (currstate, adressin)
--begin  --  process

--    nextstate <= currstate;
    
    
--    case currstate is
--when s_initial =>

--            counter1en <= '0';
--            counter2en <= '0';
--            done <= '0';
--            we <= '0';
--            oper <= "000";
--            enable1 <= '0'; 
--            enable2 <= '0'; 
--            enable3 <= '0'; 
--            enable4 <= '0';
--            nextstate<= cycle1;
            
--            --end if;
--            when cycle1 =>
--            counter1en <= '0';
--            counter2en <= '0';
--            -- operacao 7, 4, 1
--            done <= '0';
--            we <= '0';
--            oper    <= "001";
--            enable1 <= '1'; 
--            enable2 <= '1'; 
--            enable3 <= '1'; 
--            enable4 <= '0';
--            nextstate<= cycle2 ;
            
            
--            when cycle2 =>
--            counter1en <= '0';
--            counter2en <= '0';
--            -- operacao 5, 9, 8
--            done <= '0';
--            we <= '0';
--            oper      <= "010";
--            enable1 <= '1'; 
--            enable2 <= '1'; 
--            enable3 <= '0'; 
--            enable4 <= '1'; 
--            nextstate<= cycle3 ;
            
--            when cycle3 =>
--            counter1en <= '0';
--            counter2en <= '0';
--            -- operacao 2, 6
--            done <= '0';
--            we <= '0';
--            oper      <= "100";
--            enable1 <= '1'; 
--            enable2 <= '1'; 
--            enable3 <= '0'; 
--            enable4 <= '0'; 
            
--            nextstate<= cycle4 ;
            
            
--            when cycle4 =>
--            counter1en <= '1';
--            counter2en <= '1';
--            done <= '0';
--            we <= '0';
--            oper      <= "101";
--            enable1 <= '0'; 
--            enable2 <= '0'; 
--            enable3 <= '0'; 
--            enable4 <= '1'; 
--            nextstate<= cycle5;

     
            
            
--           when cycle5 =>
--            counter1en <= '0';
--            counter2en <= '0';
--            done <= '0';
--            oper   <= "110";
--            enable1 <= '0'; 
--            enable2 <= '0'; 
--            enable3 <= '0'; 
--            enable4 <= '0';
--            we <= '1';
--            if adressin = X"10" then
--               nextstate<= s_finish;
--           else 
--               nextstate <= cycle1;
--            end if;   
          

          
--            when s_finish =>
--            counter1en <= '0';
--            counter2en <= '0';
--            done <= '1';
--            we <= '0';
--            oper <= "000";
--            enable1 <= '0'; 
--            enable2 <= '0'; 
--            enable3 <= '0'; 
--            enable4 <= '0';       
--end case;
--end process;

--addr_out <= adressout;
--address <= adressin;

end Behavioral;
