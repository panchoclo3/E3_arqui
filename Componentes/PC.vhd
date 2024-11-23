----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2023 16:27:53
-- Design Name: 
-- Module Name: PC - Behavioral
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

entity PC is
    Port ( Count_in : in STD_LOGIC_VECTOR (15 downto 0);
           loadPC : in STD_LOGIC;
           DCClear : in STD_LOGIC;
           Cout : out STD_LOGIC_VECTOR (15 downto 0);
           Clock : in STD_LOGIC);
end PC;

architecture Behavioral of PC is


component Reg16Bits
    Port ( D : in STD_LOGIC_VECTOR (15 downto 0);
           A : out STD_LOGIC_VECTOR (15 downto 0);
           C : in STD_LOGIC;
           L : in STD_LOGIC;
           R : in STD_LOGIC);
end component;

signal reg_out : std_logic_vector(15 downto 0) ;

begin


inst_Reg16Bits : Reg16Bits port map(
    D => Count_in,
    A => reg_out,
    C => Clock,
    L => '1',
    R => DCClear
);

Cout <= reg_out;

end Behavioral;
