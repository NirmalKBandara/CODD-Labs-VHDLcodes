----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2025 22:21:54
-- Design Name: 
-- Module Name: seg7 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 7-segment decoder for hexadecimal digits (0-F)
-- 
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Required for 'unsigned' and 'to_integer'

entity seg7 is
    Port (
        address : in STD_LOGIC_VECTOR (3 downto 0);
        data    : out STD_LOGIC_VECTOR (6 downto 0)
    );
end seg7;

architecture Behavioral of seg7 is
    type rom_type is array (0 to 15) of STD_LOGIC_VECTOR(6 downto 0);
    signal sevenSegment_ROM : rom_type := (
        "1000000", -- 0
        "1111001", -- 1
        "0100100", -- 2
        "0110000", -- 3
        "0011001", -- 4
        "0010010", -- 5
        "0000010", -- 6
        "1111000", -- 7
        "0000000", -- 8
        "0010000", -- 9
        "0001000", -- A
        "0000011", -- B
        "1000110", -- C
        "0100001", -- D
        "0000110", -- E
        "0001110"  -- F
    );
begin
    data <= sevenSegment_ROM(to_integer(unsigned(address)));
end Behavioral;
