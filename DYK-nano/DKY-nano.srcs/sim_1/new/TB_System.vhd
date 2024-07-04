----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/06/2023 11:54:07 AM
-- Design Name: 
-- Module Name: TB_System - Behavioral
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

entity TB_System is
--  Port ( );
end TB_System;

architecture Behavioral of TB_System is

component System
    Port ( 
Clk : in STD_LOGIC;
Res : in STD_LOGIC;
Zero: out STD_LOGIC;
Overflow: out STD_LOGIC;
S_7Seg : out STD_LOGIC_VECTOR(6 downto 0);
S_out : out STD_LOGIC_VECTOR(3 downto 0)
);

end component;

signal Clk : STD_LOGIC;
signal Res : STD_LOGIC;
signal Zero: STD_LOGIC;
signal Overflow: STD_LOGIC;
signal S_7Seg : STD_LOGIC_VECTOR(6 downto 0);
signal S_out : STD_LOGIC_VECTOR(3 downto 0);

constant period : time := 10 ns;
begin
UUT : System PORT MAP(

        Clk => Clk,
        Res => Res,
        Zero => Zero,
        Overflow => Overflow,
        S_7Seg => S_7Seg,
        S_out => S_out
);

process
begin
Clk <= '0';
wait for period/2; 

Clk <= '1';    
wait for period/2;
end process;

process
begin
Res <= '1';
wait for period;

Res <= '0';
wait;
end process;



end Behavioral;
