----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2023 11:18:20
-- Design Name: 
-- Module Name: Reg16Bits - Behavioral
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

entity Reg16Bits is
    Port ( D : in STD_LOGIC_VECTOR (15 downto 0);
           A : out STD_LOGIC_VECTOR (15 downto 0);
           C : in STD_LOGIC;
           L : in STD_LOGIC;
           R : in STD_LOGIC);
end Reg16Bits;

architecture Behavioral of Reg16Bits is



component Reg1bit
         Port ( L : in STD_LOGIC;
           R : in STD_LOGIC;
           D0 : in STD_LOGIC;
           A0 : out STD_LOGIC;
           C : in STD_LOGIC);
end component;

begin

ins_Reg1bit1: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(0),
   A0 => A(0),
   C => C
);

ins_Reg1bit2: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(1),
   A0 => A(1),
   C => C
);

ins_Reg1bit3: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(2),
   A0 => A(2),
   C => C
);

ins_Reg1bit4: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(3),
   A0 => A(3),
   C => C
);

ins_Reg1bit5: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(4),
   A0 => A(4),
   C => C
);

ins_Reg1bit6: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(5),
   A0 => A(5),
   C => C
);

ins_Reg1bit7: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(6),
   A0 => A(6),
   C => C
);

ins_Reg1bit8: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(7),
   A0 => A(7),
   C => C
);

ins_Reg1bit9: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(8),
   A0 => A(8),
   C => C
);

ins_Reg1bit10: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(9),
   A0 => A(9),
   C => C
);

ins_Reg1bit11: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(10),
   A0 => A(10),
   C => C
);

ins_Reg1bit12: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(11),
   A0 => A(11),
   C => C
);

ins_Reg1bit13: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(12),
   A0 => A(12),
   C => C
);

ins_Reg1bit14: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(13),
   A0 => A(13),
   C => C
);

ins_Reg1bit15: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(14),
   A0 => A(14),
   C => C
);

ins_Reg1bit16: Reg1bit port map(
   L => L,
   R => R,
   D0 => D(15),
   A0 => A(15),
   C => C
);

end Behavioral;
