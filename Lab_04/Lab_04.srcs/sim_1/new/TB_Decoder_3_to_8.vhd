----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2025 10:17:16
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
component Decoder_3_to_8
    port( I : in STD_LOGIC_VECTOR(2 downto 0);
          EN : in STD_LOGIC;
          y : out STD_LOGIC_VECTOR(7 downto 0));
          
end component;    

SIGNAL I0 : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL EN0 : STD_LOGIC;
SIGNAL Y0 : STD_LOGIC_VECTOR(7 downto 0);

begin
    UUT : Decoder_3_to_8
    PORT map( I => I0,
              EN => EN0, 
              Y => Y0);
process
    begin
    I0 <= "000";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "001";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "010";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "011";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "100";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "101";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "110";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "111";
    EN0 <= '1';
    wait for 100ns;
    I0 <= "101";
    EN0 <= '0';
    wait for 100ns;
    I0 <= "110";
    EN0 <= '0';
    wait;   
end process;

end Behavioral;
