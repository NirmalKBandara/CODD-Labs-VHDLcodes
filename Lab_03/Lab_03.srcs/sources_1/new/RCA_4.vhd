----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 16:37:01
-- Design Name: 
-- Module Name: RCA_4 - Behavioral
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

entity RCA_4 is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           C_out : out STD_LOGIC);
end RCA_4;

architecture Behavioral of RCA_4 is
component FA
    port (A : in STD_LOGIC;
          B : in STD_LOGIC;
          Cin : in STD_LOGIC;
          S : out STD_LOGIC;
          Cout : out STD_LOGIC);
end component;

SIGNAL FA_0_Cout, FA_1_Cout, FA_2_Cout : STD_LOGIC;
begin
FA_0 : FA
    PORT map ( A => A0,
               B => B0,
               Cin => '0',
               S => S0,
               Cout => FA_0_Cout);

FA_1 : FA
    PORT map ( A => A1,
               B => B1,
               Cin => FA_0_Cout,
               S => S1,
               Cout => FA_1_Cout);

FA_2 : FA
    PORT map ( A => A2,
               B => B2,
               Cin => FA_1_Cout,
               S => S2,
               Cout => FA_2_Cout);

FA_3 : FA
    PORT map ( A => A3,
               B => B3,
               Cin => FA_2_Cout,
               S => S3,
               Cout => C_out);

end Behavioral;
