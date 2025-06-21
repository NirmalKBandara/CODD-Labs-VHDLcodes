----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2025 13:48:30
-- Design Name: 
-- Module Name: TB_multiplier_4 - Behavioral
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

entity TB_multiplier_4 is
--  Port ( );
end TB_multiplier_4;

architecture Behavioral of TB_multiplier_4 is
    signal A, B : STD_LOGIC_VECTOR (3 downto 0);
    signal Y : STD_LOGIC_VECTOR (7 downto 0);

-- Instantiate the Unit Under Test (UUT)
component Multiplier_4
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

begin
uut: Multiplier_4 port map (
    A => A,
    B => B,
    Y => Y
);

process
begin
    A <= "0000"; B <= "0000";
    wait for 100 ns;
    
    A <= "0111"; B <= "0111";
    wait for 100 ns;
    
    A <= "1011"; B <= "0111";
    wait for 100 ns;
    
    A <= "1111"; B <= "0111";
    wait for 100 ns;

    A <= "1011"; B <= "1101";
    wait for 100 ns;
    
    A <= "1111"; B <= "1111";
    wait for 100 ns;
 
    wait;
end process;
end Behavioral;
