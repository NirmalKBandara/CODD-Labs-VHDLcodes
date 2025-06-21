library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplier_2_tb is
end Multiplier_2_tb;

architecture testbench of Multiplier_2_tb is
    signal A, B : STD_LOGIC_VECTOR (1 downto 0);
    signal Y : STD_LOGIC_VECTOR (3 downto 0);
    
    -- Instantiate the Unit Under Test (UUT)
    component Multiplier_2
        Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
               B : in STD_LOGIC_VECTOR (1 downto 0);
               Y : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
begin
    uut: Multiplier_2 port map (
        A => A,
        B => B,
        Y => Y
    );
    
    process
    begin
        -- Test Case 1: 00 x 00
        A <= "00"; B <= "00";
        wait for 100 ns;
        
        -- Test Case 2: 01 x 01
        A <= "01"; B <= "01";
        wait for 100 ns;
        
        -- Test Case 3: 10 x 01
        A <= "10"; B <= "01";
        wait for 100 ns;
        
        -- Test Case 4: 11 x 01
        A <= "11"; B <= "01";
        wait for 100 ns;
        
        -- Test Case 5: 10 x 10
        A <= "10"; B <= "10";
        wait for 100 ns;
        
        -- Test Case 6: 11 x 11
        A <= "11"; B <= "11";
        wait for 100 ns;
        
        -- Stop simulation
        wait;
    end process;
end testbench;