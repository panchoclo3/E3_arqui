----------------------------------------------------------------------------------
-- Company: 
-- Engineer:
-- 
-- Create Date: 12.09.2023 16:04:39
-- Design Name: 
-- Module Name: STATUS - Behavioral
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

entity STATUS is
    Port ( inC : in STD_LOGIC;
           inZ : in STD_LOGIC;
           inN : in STD_LOGIC;
           DCClear : in STD_LOGIC;
           Cout : out STD_LOGIC_VECTOR (2 downto 0);
           Clock : in STD_LOGIC);
end STATUS;


architecture Behavioral of STATUS is

component Reg3bits
         Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           A : out STD_LOGIC_VECTOR (2 downto 0);
           C : in STD_LOGIC;
           L : in STD_LOGIC;
           R : in STD_LOGIC);
end component;

signal reg_in : std_logic_vector(2 downto 0);

begin

reg_in(2) <= inC;
reg_in(1) <= inZ;
reg_in(0) <= inN;

inst_Reg3Bits : Reg3bits port map(
    D => reg_in,
    A => Cout,
    C => Clock,
    L => '1',
    R => DCClear
);

end Behavioral;
