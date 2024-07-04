----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 07:32:57 PM
-- Design Name: 
-- Module Name: TB_nano_processor - Behavioral
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

entity TB_nano_processor is
--  Port ( );
end TB_nano_processor;

architecture Behavioral of TB_nano_processor is

component nano_processor
Port ( Clk : in STD_LOGIC;
       Res : in STD_LOGIC;
       Overflow : out STD_LOGIC;
       Zero : out STD_LOGIC;
       Output : out STD_LOGIC_VECTOR (3 downto 0));
end component;

 signal Clk : STD_LOGIC;
 signal Res : STD_LOGIC;
 signal Overflow : STD_LOGIC;
 signal Zero : STD_LOGIC;
 signal Output : STD_LOGIC_VECTOR (3 downto 0);

constant period : time := 100 ns;

begin
UUT : nano_processor PORT MAP (
        Clk => Clk,
        Res => Res,
        Overflow => Overflow,
        Zero => Zero,
        Output => Output
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
