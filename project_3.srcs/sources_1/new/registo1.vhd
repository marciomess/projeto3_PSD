----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2020 11:00:46 AM
-- Design Name: 
-- Module Name: registo - Behavioral
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

entity registo1 is
    Port (
    regin : in std_logic_vector(31 downto 0);
    regout : out std_logic_vector(31 downto 0);
    clk : in std_logic;
    enablereg: in std_logic;
    rst: in std_logic);
end registo1;

architecture Behavioral of registo1 is
begin
    process (clk)
    begin
        if (clk'event and clk='1' ) then
             if  rst = '1' then
               regout <= (others => '0');
            end if;
             if enablereg ='1' then
              regout <= regin;
            end if;  
        end if;
    end process;
end Behavioral;

