----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2024 11:22:20 PM
-- Design Name: 
-- Module Name: TB_muti4X4 - Behavioral
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

entity TB_muti4X4 is
--  Port ( );
end TB_muti4X4;

architecture Behavioral of TB_muti4X4 is
component multi4X4
port (
     A : in STD_LOGIC_VECTOR (3 downto 0);
     B : in STD_LOGIC_VECTOR (3 downto 0);
     T : out STD_LOGIC_VECTOR (3 downto 0)); 
end component;
signal   A :  STD_LOGIC_VECTOR (3 downto 0);
signal   B :  STD_LOGIC_VECTOR (3 downto 0);
signal   T :  STD_LOGIC_VECTOR (3 downto 0);
begin
    UUT: multi4X4 port map(
         A => A,
         B => B,
         T => T
         );
         process
            begin
               A <= "0011";
               B <= "0010";
               wait for 100ns;
               B <= "0001";
               wait for 100ns;
               A <= "0100";
               wait;
         end process;
                

end Behavioral;
