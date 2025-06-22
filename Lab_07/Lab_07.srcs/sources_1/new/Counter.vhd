----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2025 16:21:02
-- Design Name: 
-- Module Name: Counter - Behavioral
-- Description: 3-bit Counter with Direction Control
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter is
    Port ( Dir : in  STD_LOGIC;
           Res : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q0  : out STD_LOGIC;
           Q1  : out STD_LOGIC;
           Q2  : out STD_LOGIC);
end Counter;

architecture Behavioral of Counter is

    component D_FF
        Port ( D     : in  STD_LOGIC;
               RES   : in  STD_LOGIC;
               CLK   : in  STD_LOGIC;
               Q     : out STD_LOGIC;
               Q_Bar : out STD_LOGIC);
    end component;

    component Slow_Clock
        Port ( Clk_in  : in  STD_LOGIC;
               Clk_out : out STD_LOGIC);
    end component;

    signal D0, D1, D2       : STD_LOGIC;
    signal Q_0, Q_1, Q_2    : STD_LOGIC;
    signal Clk_Slow         : STD_LOGIC;

begin

    Slow_Clock_0 : Slow_Clock
        port map (
            Clk_in  => Clk,
            Clk_out => Clk_Slow
        );

    D_FF_0 : D_FF
        port map (
            D      => D0,
            RES    => Res,
            CLK    => Clk_Slow,
            Q      => Q_0,
            Q_Bar  => open
        );

    D_FF_1 : D_FF
        port map (
            D      => D1,
            RES    => Res,
            CLK    => Clk_Slow,
            Q      => Q_1,
            Q_Bar  => open
        );

    D_FF_2 : D_FF
        port map (
            D      => D2,
            RES    => Res,
            CLK    => Clk_Slow,
            Q      => Q_2,
            Q_Bar  => open
        );

    -- Combinational Logic for D inputs
    D0 <= (NOT(Dir) AND NOT(Q_2)) OR (Dir AND Q_1);
    D1 <= (Dir AND Q_2) OR (NOT(Dir) AND Q_0) OR (Q_2 AND Q_0);
    D2 <= (NOT(Dir) AND Q_1) OR (Q_1 AND NOT(Q_0)) OR (Dir AND NOT(Q_0));

    -- Output Assignments
    Q0 <= Q_0;
    Q1 <= Q_1;
    Q2 <= Q_2;

end Behavioral;
