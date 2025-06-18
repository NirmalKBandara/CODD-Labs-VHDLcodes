----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 17:29:31
-- Design Name: 
-- Module Name: TB_4_RCA - Behavioral
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

entity TB_4_RCA is
--  Port ( );
end TB_4_RCA;

architecture Behavioral of TB_4_RCA is
component RCA_4
    port ( 
       A0 : in STD_LOGIC;
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
       C_out : out STD_LOGIC
           );
end component;
SIGNAL A0, A1, A2, A3, B0, B1, B2, B3, C_in : STD_LOGIC;
SIGNAL S0, S1, S2, S3, C_out : STD_LOGIC;

begin
    UUT : RCA_4 PORT map(
           A0 => A0, B0 => B0,
           A1 => A1, B1 => B1,
           A2 => A2, B2 => B2,
           A3 => A3, B3 => B3,
           C_in => C_in,
           S0 => S0,
           S1 => S1,
           S2 => S2,
           S3 => S3,
           C_out => C_out);
process
    begin
        C_in <= '0'; --Seting initial carry bit as 0
        
        --cAdding 1 + 8 = 9
        A3 <= '0'; A2 <= '0'; A1 <= '0'; A0 <= '1';
        B3 <= '1'; B2 <= '0'; B1 <= '0'; B0 <= '0';
        -- 9 => 0 1001
            
        wait for 100ns;
        
        --cAdding 0 + 8 = 8
        A3 <= '0'; A2 <= '0'; A1 <= '0'; A0 <= '0';
        B3 <= '1'; B2 <= '0'; B1 <= '0'; B0 <= '0';
        -- 8 => 0 1000
        
        wait for 100ns;
            
        --cAdding 5 + 11 = 16    
        A3 <= '0'; A2 <= '1'; A1 <= '0'; A0 <= '1';
        B3 <= '1'; B2 <= '0'; B1 <= '1'; B0 <= '1';
        -- 16 => 1 0000
        
        wait for 100ns;
        
        --cAdding 7 + 15 = 22
        A3 <= '0'; A2 <= '1'; A1 <= '1'; A0 <= '0';
        B3 <= '0'; B2 <= '0'; B1 <= '0'; B0 <= '0';
        -- 22 => 1 0110
            
        wait for 100ns;
            
        --cAdding 10 + 5 = 1    
        A3 <= '1'; A2 <= '0'; A1 <= '1'; A0 <= '0';
        B3 <= '0'; B2 <= '1'; B1 <= '0'; B0 <= '1';
        -- 15 => 0 1111
        
        wait for 100ns;
        
        --cAdding 6 + 9 = 15
        A3 <= '0'; A2 <= '1'; A1 <= '1'; A0 <= '0';
        B3 <= '1'; B2 <= '0'; B1 <= '0'; B0 <= '1';
        -- 15 => 0 1111
            
        wait for 100ns;
                
        --cAdding 113 + 13 = 26    
        A3 <= '1'; A2 <= '1'; A1 <= '0'; A0 <= '1';
        B3 <= '1'; B2 <= '1'; B1 <= '0'; B0 <= '1';
        -- 26 => 1 1010
        
        wait for 100ns;
        
        --cAdding 15 + 15 = 30
        A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
        B3 <= '1'; B2 <= '1'; B1 <= '1'; B0 <= '1';
        -- 30 => 1 1110
        
        wait;
    end process;
end Behavioral;
