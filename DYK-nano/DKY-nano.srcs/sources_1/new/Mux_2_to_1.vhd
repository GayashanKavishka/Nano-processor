----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 11:06:15 PM
-- Design Name: 
-- Module Name: Mux_2_to_1 - Behavioral
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

entity Mux_2_to_1 is
    Port ( S : in STD_LOGIC_Vector(1 downto 0);
           D : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_2_to_1;

architecture Behavioral of Mux_2_to_1 is

--If S = '0' then
--      Y <= D(0)
--  else
--      Y <= D(1)

begin

process (S, D, EN)
    begin
        if EN = '1' then
            if S = "00" then
                Y <= D(0);
            elsif S = "01" then
                Y <= D(1);
            elsif S = "10" then
                Y <= D(2); -- Handle invalid select input
            end if;
        else
            Y <= '0'; -- Output is low when enable is low
        end if;
end process;
end Behavioral;
