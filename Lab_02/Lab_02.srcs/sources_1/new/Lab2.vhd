----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2025 12:59:06
-- Design Name: 
-- Module Name: Lab2 - Behavioral
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

entity Lab2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           green : out STD_LOGIC;
           amber : out STD_LOGIC;
           red : out STD_LOGIC);
end Lab2;

architecture Behavioral of Lab2 is

begin
green <= A AND B AND C;
amber <= (A AND B AND NOT(C)) OR (A AND C AND NOT(B)) OR (C AND B AND NOT(A));
red <= (NOT(A) AND NOT(B)) OR (NOT(C) AND NOT(B)) OR (NOT(A) AND NOT(C));

end Behavioral;
