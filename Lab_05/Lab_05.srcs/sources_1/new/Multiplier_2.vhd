library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplier_2 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Multiplier_2;

architecture Behavioral of Multiplier_2 is
    component FA
    port(
        A : in std_logic;
        B : in std_logic;
        C_in : in std_logic;
        S : out std_logic;
        C_out : out std_logic
    );
    end component;

    -- Signals for intermediate sum and carry
    signal S0, S1, C_out0, C_out1 : std_logic;

begin
    -- Partial Products
    Y(0) <= A(0) and B(0);  -- LSB multiplication

    -- First stage full adder (adds cross products)
    FA0 : FA
    port map(
        A => (A(0) and B(1)), -- Partial product 1
        B => (A(1) and B(0)), -- Partial product 2
        C_in => '0',          -- No initial carry
        S => S0,
        C_out => C_out0 
    );

    -- Second stage full adder (handles final carry)
    FA1 : FA
    port map(
        A => (A(1) and B(1)), -- Most significant partial product
        B => '0',             -- No additional term needed
        C_in => C_out0,       -- Carry from previous FA
        S => S1,
        C_out => C_out1 
    );

    -- Assigning outputs
    Y(1) <= S0;
    Y(2) <= S1;
    Y(3) <= C_out1; -- Final carry

end Behavioral;
