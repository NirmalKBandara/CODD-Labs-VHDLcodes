----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2025 13:16:52
-- Design Name: 
-- Module Name: TB_Lab2 - Behavioral
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

entity TB_Lab2 is
--  Port ( );
end TB_Lab2;

architecture Behavioral of TB_Lab2 is
component Lab2
    port( A : in std_logic;
          B : in std_logic;
          C : in std_logic;
          green : out std_logic;
          amber : out std_logic;
          red : out std_logic);
end component;
signal A, B, C : std_logic;
signal green, amber, red : std_logic;
begin
UUT : Lab2 port map(
            A => A, B => B, C => C,
            green => green,
            amber => amber,
            red => red
);
process
begin
    A <= '0'; B <= '0'; C <= '0';
    
    wait for 100ns;
    
    C <= '1';
        
    wait for 100ns;
        
    B <= '1'; C <= '0';
        
    wait for 100ns;
        
    C <= '1';
        
    wait for 100ns;
        
    A <= '1'; B <= '0'; C <= '0';
        
    wait for 100ns;
        
    C <= '1';
        
    wait for 100ns;
        
    B <= '1'; C <= '0';
        
    wait for 100ns;
        
    C <= '1';
        
    wait for 100ns;

end process;
end Behavioral;

