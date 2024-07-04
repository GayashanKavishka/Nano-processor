----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2024 10:53:10 PM
-- Design Name: 
-- Module Name: Multi4X4 - Behavioral
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

entity Multi4X4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Multi4X4;

architecture Behavioral of Multi4X4 is
component RCA_4
Port (    
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C_in : in STD_LOGIC;
           C_out : out STD_LOGIC); 
end component;
signal a0b0,a0b1,a1b0,a0b2,a1b1,a2b0,a0b3,a1b2,a2b1,a3b0,a1b3,a2b2,a3b1,a2b3,a3b2,a3b3,FA0_c,FA0_s1,FA0_s2,FA0_s3,FA1_s1,FA1_s2,FA1_s3,FA1_c :std_logic;
begin
a0b0 <= A(0) AND B(0); 
   a0b1 <= A(0) AND B(1);
   a1b0 <= A(1) AND B(0);
   a0b2 <= A(0) AND B(2);
   a1b1 <= A(1) AND B(1);
   a2b0 <= A(2) AND B(0);
   a0b3 <= A(0) AND B(3);
   a1b2 <= A(1) AND B(2);
   a2b1 <= A(2) AND B(1);
   a3b0 <= A(3) AND B(0);
   a1b3 <= A(1) AND B(3);
   a2b2 <= A(2) AND B(2);
   a3b1 <= A(3) AND B(1);
   a2b3 <= A(2) AND B(3);
   a3b2 <= A(3) AND B(2);
   a3b3 <= A(3) AND B(3);
   
   Y(0) <= a0b0;
   RCA_4_0 : RCA_4
   port map(A(0) => a0b1, A(1) => a0b2 ,A(2) => a0b3 , A(3) => '0', B(0) => a1b0 , B(1) => a1b1 ,B(2) => a1b2 , B(3) => a1b3 , C_in => '0',S(0) => Y(1), S(1) =>FA0_s1 ,S(2) =>FA0_s2 , S(3)=> FA0_s3,C_out => FA0_c);
   
   RCA_4_1: RCA_4
   port map(A(0) => FA0_s1, A(1) => FA0_s2 ,A(2) => FA0_s3 , A(3) => FA0_C, B(0) => a2b0 , B(1) => a2b1 ,B(2) => a2b2 , B(3) => a2b3 , C_in => '0',S(0) => Y(2), S(1) =>FA1_s1 ,S(2) =>FA1_s2 , S(3)=> FA1_s3,C_out => FA1_c);
   
   RCA_4_2 : RCA_4
   port map(A(0) => FA1_s1, A(1) => FA1_s2 ,A(2) => FA1_s3 , A(3) => FA1_C, B(0) => a3b0 , B(1) => a3b1 ,B(2) => a3b2 , B(3) => a3b3 , C_in => '0',S(0) => Y(3), S(1) =>Y(4) ,S(2) =>Y(5) , S(3)=> Y(6),C_out => Y(7));


end Behavioral;
