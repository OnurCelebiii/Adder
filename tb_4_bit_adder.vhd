----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2022 14:29:20
-- Design Name: 
-- Module Name: tb_4_bit_adder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_4_bit_adder is
--  Port ( );
end tb_4_bit_adder;

architecture Behavioral of tb_4_bit_adder is

component fa_4_bit is
Port (
        i_A :   in std_logic_vector(3 downto 0);
        i_B :   in std_logic_vector(3 downto 0);
        i_Cin : in std_logic;
        o_Cout: out std_logic;
        o_Sum : out std_logic_vector(3 downto 0) );
end component;

 signal i_A   :  std_logic_vector(3 downto 0):="0000";
 signal i_B   :  std_logic_vector(3 downto 0):="0000";
 signal i_Cin :  std_logic:='0';                   
 signal o_Cout:  std_logic:='0';                  
 signal o_Sum :  std_logic_vector(3 downto 0):="0000";







begin

dut : fa_4_bit port map (
                 i_A    =>  i_A   ,
                 i_B    =>  i_B   ,
                 i_Cin  =>  i_Cin ,
                 o_Cout =>  o_Cout,
                 o_Sum  =>  o_Sum 
                    ); 


process begin

for i_a_s in 0 to 15 loop  
    for i_b_s in 0 to 15 loop
       i_B <= std_logic_vector(unsigned(i_B)+1);
       wait for 20 ns;
        
    end loop; 
    i_A <= std_logic_vector(unsigned(i_A)+1);  
    wait for 20 ns;    
end loop;


end process;


end Behavioral;
