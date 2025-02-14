----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 09:56:07 PM
-- Design Name: 
-- Module Name: Mux_8_to_1_bit_4 - Behavioral
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

entity Mux_2_to_1_bit_3 is
    Port ( S : in STD_LOGIC;
           D0 : in STD_LOGIC_VECTOR (2 downto 0);
           D1 : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2_to_1_bit_3;

architecture Behavioral of Mux_2_to_1_bit_3 is

component Mux_2_to_2
    Port ( S : in STD_LOGIC ;
           D : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal Mux_0_D,Mux_1_D,Mux_2_D : STD_LOGIC_VECTOR (1 downto 0);

begin

Mux_2_to_1_0 : Mux_2_to_2
port map(
    S => S ,
    D => Mux_0_D,
    EN=> '1',
    Y => Y(0) 
   
);

Mux_2_to_1_1 : Mux_2_to_2
port map(
    S => S,
    D => Mux_1_D,
    EN=> '1',
    Y => Y(1)
    

);

Mux_2_to_1_2 :  Mux_2_to_2
port map(
    S => S,
    D => Mux_2_D,
    EN=> '1',
    Y => Y(2)

);

 

-- inputs for mu;tiplexer 0
Mux_0_D(0) <= D0(0);
Mux_0_D(1) <= D1(0);

-- inputs for mu;tiplexer 1
Mux_1_D(0) <= D0(1);
Mux_1_D(1) <= D1(1);

-- inputs for mu;tiplexer 2
Mux_2_D(0) <= D0(2);
Mux_2_D(1) <= D1(2);


end Behavioral;
