----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Fel
-- 
-- Create Date: 12.09.2023 15:53:01
-- Design Name: 
-- Module Name: MUX A - Behavioral
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

entity MUX is
    Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
           B : in STD_LOGIC_VECTOR (15 downto 0);
           C : in STD_LOGIC_VECTOR (15 downto 0);
           D : in STD_LOGIC_VECTOR (15 downto 0);
           O : out STD_LOGIC_VECTOR (15 downto 0);
           S1: in STD_LOGIC_VECTOR (1 downto 0));
end MUX;

architecture Behavioral of MUX is

begin

with S1 select
O <= A when "00",
     B when "01",
     C when "10",
     D when "11"; 

end Behavioral;
