----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2024 02:08:46 AM
-- Design Name: 
-- Module Name: TB_Mux_2_to_2 - Behavioral
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

entity TB_Mux_2_to_2 is
--  Port ( );
end TB_Mux_2_to_2;

architecture Behavioral of TB_Mux_2_to_2 is
component Mux_2_to_2
    Port ( S : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;           

signal S :  STD_LOGIC;
signal D :  STD_LOGIC_VECTOR (1 downto 0);
signal EN : STD_LOGIC;
signal Y :  STD_LOGIC;
begin

UUT: Mux_2_to_2
    port map(
        s=>s,
        D=>D,
        EN => EN,
        Y => Y );
        
   process
   begin
   
   S<='0';
   D <= "10";
   EN <= '1';
   
   wait for 100ns;
   
   S<= '1';
   
   wait for 100ns;
   
   S <= '0';
   
   wait;
   end process;
   
        

end Behavioral;
