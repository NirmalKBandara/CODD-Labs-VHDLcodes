---------------------------------------------------------------------------------- -- Company:  -- Engineer:  -- -- Create Date: 06/23/2022 07:11:11 AM -- Design Name:  -- Module Name: Counter_Sim - Behavioral -- Project Name:  -- Target Devices:  -- Tool Versions:  -- Description:  -- -- Dependencies:  -- -- Revision: -- Revision 0.01 - File Created -- Additional Comments: -- ---------------------------------------------------------------------------------- 
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; -- Uncomment the following library declaration if using -- arithmetic functions with Signed or Unsigned values --use IEEE.NUMERIC_STD.ALL; -- Uncomment the following library declaration if instantiating -- any Xilinx leaf cells in this code. --library UNISIM; --use UNISIM.VComponents.all; 
entity Counter_Sim is -- Port ( ); 
end Counter_Sim; 
architecture Behavioral of Counter_Sim is 
component Counter 
    Port ( Dir : in STD_LOGIC; 
        Res : in STD_LOGIC; 
        Clk : in STD_LOGIC; 
        Q0 : out STD_LOGIC; 
        Q1 : out STD_LOGIC; 
        Q2 : out STD_LOGIC); 
end component; 
    signal Dir,Res,Q1,Q2,Q0 :STD_LOGIC; 
    signal Clk : STD_LOGIC :='0'; 
begin 
UUT: Counter 
    PORT MAP( 
        Clk => Clk, 
        Dir => Dir, 
        Res => Res, 
        Q0 => Q0, 
        Q1 => Q1, 
        Q2 => Q2 
        ); 
process 
begin 
    wait for 5ns; 
    Clk <= NOT Clk; 
    end process; 
    process 
    begin 
    Res <= '1'; 
    wait for 100ns; 
    Res <= '0'; 
    Dir <='0'; 
    wait for 500ns; 
    Res <= '0'; 
    Dir <='1'; 
    wait for 400ns;  
    end process;  
end Behavioral; 