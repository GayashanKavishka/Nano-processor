----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 12:53:32 PM
-- Design Name: 
-- Module Name: TB_InstructionDecoder - Behavioral
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

entity TB_InstructionDecoder is
--  Port ( );
end TB_InstructionDecoder;

architecture Behavioral of TB_InstructionDecoder is
component InstructionDecoder 
Port ( InstructionBus : in STD_LOGIC_VECTOR (12 downto 0);
           RegJumpCheck : in STD_LOGIC_VECTOR (3 downto 0);
           RegisterEnable : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelector0 : out STD_LOGIC;
           LoadSelector1 : out STD_LOGIC;
           ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
           RegisterSelector_A : out STD_LOGIC_VECTOR (2 downto 0);
           RegisterSelector_B : out STD_LOGIC_VECTOR (2 downto 0);
           RegisterSelector_C : out STD_LOGIC_VECTOR (2 downto 0);
           RegisterSelector_D : out STD_LOGIC_VECTOR (2 downto 0);
           AddSubSelector : out STD_LOGIC;
           JumpFlag : out STD_LOGIC;
           JumpAddress : out STD_LOGIC_VECTOR (2 downto 0));

end component;
signal InstructionBus : STD_LOGIC_VECTOR (12 downto 0);
signal RegJumpCheck :  STD_LOGIC_VECTOR (3 downto 0);
signal RegisterEnable :  STD_LOGIC_VECTOR (2 downto 0);
signal LoadSelector0 : STD_LOGIC;
signal LoadSelector1 : STD_LOGIC;
signal ImmediateValue : STD_LOGIC_VECTOR (3 downto 0);
signal RegisterSelector_A : STD_LOGIC_VECTOR (2 downto 0);
signal RegisterSelector_B : STD_LOGIC_VECTOR (2 downto 0);
signal RegisterSelector_C : STD_LOGIC_VECTOR (2 downto 0);
signal RegisterSelector_D : STD_LOGIC_VECTOR (2 downto 0);
signal AddSubSelector : STD_LOGIC;
signal JumpFlag : STD_LOGIC;
signal JumpAddress : STD_LOGIC_VECTOR (2 downto 0);



begin

UUT : InstructionDecoder PORT MAP (
       InstructionBus => InstructionBus,
       RegJumpCheck => RegJumpCheck,
       RegisterEnable => RegisterEnable,
       LoadSelector0 => LoadSelector0,
       LoadSelector1 => LoadSelector1,
       ImmediateValue => ImmediateValue,
       RegisterSelector_A => RegisterSelector_A,
        RegisterSelector_B =>  RegisterSelector_B,
        RegisterSelector_C =>  RegisterSelector_C,
        RegisterSelector_D =>  RegisterSelector_D,
        AddSubSelector=> AddSubSelector,
        JumpFlag => JumpFlag,
        JumpAddress=> JumpAddress

);

process
begin 

InstructionBus <= "0101110000000";
wait for 100 ns;

InstructionBus <= "0100010000001";
wait for 100 ns;

InstructionBus <= "0100100000010";
wait for 100 ns;

InstructionBus <= "0100110000011";
wait for 100 ns;

InstructionBus <= "0001110010000";
wait for 100 ns;

InstructionBus <= "0001110100000";
wait for 100 ns;



InstructionBus <= "0001110110000";
RegJumpCheck <= "0000"; -- set manually to zero to eecute JMP
wait for 100 ns;

InstructionBus <= "0110000000111";
RegJumpCheck <= "0001"; -- set manually to non zero to not JMP 
wait for 100 ns;

InstructionBus <= "0000000000000";
wait;

end process ;

end Behavioral;
