----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2020 04:39:49 PM
-- Design Name: 
-- Module Name: multiplier - Behavioral
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

entity multiplier is
port(
   data_in1: in  std_logic_vector(11 downto 0);
   data_in2: in  std_logic_vector(11 downto 0);
   res_mult : out std_logic_vector (23 downto 0));
end multiplier;


architecture Behavioral of multiplier is

--signal int_in1 :   std_logic_vector (8 downto 0);
--signal int_in2 :   std_logic_vector (8 downto 0);

--signal frac_in1 :   std_logic_vector (12 downto 0);
--signal frac_in2 :   std_logic_vector (12 downto 0);



begin
--int_in1 <= data_in1(11 downto 7);
--int_in2 <= data_in2(11 downto 7);
--int_in1 <= data_in1(6 downto 0);
--int_in2 <= data_in2(6 downto 0);
res_mult <= data_in1 * data_in2;

end Behavioral;
