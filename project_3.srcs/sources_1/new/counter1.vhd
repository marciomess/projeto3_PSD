----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2020 10:36:19 PM
-- Design Name: 
-- Module Name: counter1 - Behavioral
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

entity counter1 is
--  Port ( );
end counter1;

architecture Behavioral of counter1 is

begin


 counter : process (clk, rst)
  begin  -- process counter
    if clk'event and clk = '1' then                -- rising clock edge
      if rst = '1' then                            -- synchronous reset
        cnt <= (others => '0');
      elsif startMode = '1' and cnt(5) = '0' then  -- synchronous count upto
        cnt <= cnt + 1;                            -- 100000 = 32 after start
      end if;
    end if;
  end process counter;

end Behavioral;
