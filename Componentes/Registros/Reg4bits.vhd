----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2023 15:40:31
-- Design Name: 
-- Module Name: Reg4bits - Behavioral
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

entity Reg3bits is
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           A : out STD_LOGIC_VECTOR (2 downto 0);
           C : in STD_LOGIC;
           L : in STD_LOGIC;
           R : in STD_LOGIC);
end Reg3bits;

architecture Behavioral of Reg3bits is

component Reg1bit
         Port ( L : in STD_LOGIC;
           R : in STD_LOGIC;
           D0 : in STD_LOGIC;
           A0 : out STD_LOGIC;
           C : in STD_LOGIC);
end component;

begin

inst_Reg1 : Reg1bit port map(
    L => L,
    R => R,
    D0 => D(0),
    A0 => A(0),
    C => C
);

inst_Reg2 : Reg1bit port map(
    L => L,
    R => R,
    D0 => D(1),
    A0 => A(1),
    C => C
);

inst_Reg3 : Reg1bit port map(
    L => L,
    R => R,
    D0 => D(2),
    A0 => A(2),
    C => C
);

end Behavioral;
