----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2020 07:23:12 PM
-- Design Name: 
-- Module Name: abs_add - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--o abs add está mal e adicionei esta linha para testar o git merge
--o main branch tem esta mensagem

entity abs_add is
port(
   data_in1: in  std_logic_vector(23 downto 0);
   data_in2: in  std_logic_vector(23 downto 0);
   res_abs_add : out std_logic_vector (23 downto 0));
end abs_add;

architecture Behavioral of abs_add is

begin
res_abs_add <= std_logic_vector(abs(signed(data_in1)+signed(data_in2)));
end Behavioral;
