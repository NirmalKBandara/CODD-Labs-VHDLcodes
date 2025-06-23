----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2025 22:48:47
-- Design Name: 
-- Module Name: seg7_TB - Behavioral
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

entity seg7_TB is
--  Port ( );
end seg7_TB;

architecture Behavioral of seg7_TB is
component seg7
 Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
 data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal address : STD_LOGIC_VECTOR (3 downto 0);
signal data : STD_LOGIC_VECTOR (6 downto 0);
begin
 UUT: seg7
 PORT MAP(
 address => address,
 data => data
 );
process
begin
 --1
 address<="0001";
 wait for 100ns;
 
 --2
 address<="0010";
 wait for 100ns;
 
 --3
 address<="0011";
 wait for 100ns;
 
 --04
 address<="0100";
 wait for 100ns;
 
 --5
 address<="0101";
 wait for 100ns;
 
 --6
 address<="0110";
 wait for 100ns;
 --7
 address<="0111";
 wait for 100ns;
 
 --8
 address<="1000";
 wait for 100ns;
 
 --9
 address<="1001";
 wait for 100ns;
 
 --A
 address<="1010";
 wait for 100ns;
 
 --B
 address<="1011";
 wait for 100ns;
 
 --C
 address<="1100";
 wait for 100ns;
 
 --D
 address<="1101";
 wait for 100ns;
 
 --E
 address<="1110";
 wait for 100ns; 
 
 --F
 address<="1111";
 wait;
end process;
end Behavioral; 
