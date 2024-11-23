----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2023 15:40:31
-- Design Name: 
-- Module Name: Reg1bit - Behavioral
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

entity Reg1bit is
    Port ( L : in STD_LOGIC;
           R : in STD_LOGIC;
           D0 : in STD_LOGIC;
           A0 : out STD_LOGIC;
           C : in STD_LOGIC);
end Reg1bit;

architecture Behavioral of Reg1bit is

component FFD
      Port ( D : in STD_LOGIC;
           C : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

signal and_r : std_logic ;
signal q : std_logic ;
signal mux_out : std_logic ;

begin

and_r <= (not r) and mux_out;

inst_FFD: FFD port map(
    D => and_r,
    C => C,
    Q => q
);

A0 <= q;

with L select
 mux_out <= D0 when '1',
             q when '0';

end Behavioral;
