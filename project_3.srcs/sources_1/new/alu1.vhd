----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2020 12:23:53 PM
-- Design Name: 
-- Module Name: alu - Behavioral
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
use ieee.std_logic_signed.all;
use IEEE.STD_LOGIC_ARITH.ALL;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu1 is
    port(
    oper: in  std_logic_vector(2 downto 0);
    data_in1: in  std_logic_vector(31 downto 0);
    data_in2: in  std_logic_vector(31 downto 0);
    res_alu : out std_logic_vector (31 downto 0));

end alu1;

architecture Behavioral of alu1 is



 signal res_add : std_logic_vector (31 downto 0);
 signal res_sub : std_logic_vector (31 downto 0);

begin


 -- add
 res_add <= data_in1 + data_in2;
 
--sub
 res_sub <= data_in2 - data_in1;

with oper select

res_alu <= res_sub when "101",
           res_add  when others;
           
end Behavioral;
