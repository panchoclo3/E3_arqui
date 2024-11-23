----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2023 16:34:23
-- Design Name: 
-- Module Name: Control Unit - Behavioral
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

entity Control_Unit is
    Port ( Dataout : in STD_LOGIC_VECTOR (19 downto 0);
           Statusout : in STD_LOGIC_VECTOR (2 downto 0);
           enableA : out STD_LOGIC;
           enableB : out STD_LOGIC;
           SelA : out STD_LOGIC_VECTOR (1 downto 0);
           SelB : out STD_LOGIC_VECTOR (1 downto 0);
           loadPC : out STD_LOGIC;
           selALU : out STD_LOGIC_VECTOR (2 downto 0);
           w : out STD_LOGIC;
           SelAdd : out STD_LOGIC_VECTOR (1 downto 0);
           SelDin : out STD_LOGIC;
           SelPC : out STD_LOGIC;
           IncSP : out STD_LOGIC;
           DecSP : out STD_LOGIC);
end Control_Unit;

architecture Behavioral of Control_Unit is

signal jump_eq : std_logic;
signal jump_neq : std_logic;
signal jump_gt : std_logic;
signal jump_ge : std_logic;
signal jump_lt : std_logic;
signal jump_le : std_logic;
signal jump_cr : std_logic;

begin

enableA <= Dataout(19);
enableB <= Dataout(18);
SelA <= Dataout(17 downto 16);
SelB <= Dataout(15 downto 14);
selALU <= Dataout(13 downto 11);
w <= Dataout(9);
SelAdd <= Dataout(8 downto 7);
SelDin <= Dataout(6);
SelPC <= Dataout(5);
IncSP <= Dataout(4);
DecSP <= Dataout(3);


--Status : c|z|n
---------------------------------
with Statusout select
jump_eq <= '1' when "010",
           '1' when "011",
           '1' when "110",
           '1' when "111",
           '0' when others;
           
with Statusout select
jump_neq <= '1' when "000",
            '1' when "001",
            '1' when "100",
            '1' when "101",
            '0' when others;
            
with Statusout select
jump_gt <= '1' when "000",
           '1' when "100",
           '0' when others;
           
with Statusout select
jump_ge <= '1' when "000",
            '1' when "010",
            '1' when "100",
            '1' when "110",
            '0' when others;

with Statusout select
jump_lt <= '1' when "001",
            '1' when "011",
            '1' when "101",
            '1' when "111",
            '0' when others;
           
with Statusout select
jump_le <= '0' when "000",
           '0' when "100",
           '1' when others;

with Statusout select
jump_cr <= '1' when "100",
            '1' when "101",
            '1' when "110",
            '1' when "111",
            '0' when others;           
------------------------------------

with Dataout(13 downto 10) select
loadPC <= '1' when "0001",
      jump_eq when "0011",
      jump_neq when "0101",
      jump_gt when "0111",
      jump_ge when "1001",
      jump_lt when "1011",
      jump_le when "1101",
      jump_cr when "1111",
      '0' when others;

end Behavioral;
