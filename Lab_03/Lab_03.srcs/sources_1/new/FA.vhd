----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2025 19:27:03
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end FA;

architecture Behavioral of FA is
component HA
     port (
        A : in std_logic;
        B : in std_logic;
        S : out std_logic;
        C : out std_logic
     );
end component;
signal S0,C0,C1 : std_logic;
begin
HA_0 : HA
    PORT MAP(
    A => A,
    B => B,
    S => S0,
    C => C0
    );
HA_1 : HA
    PORT MAP(
    A => S0,
    B => Cin,
    S => S,
    C => C1
    );
    
    Cout <= C0 AND C1;

end Behavioral;
