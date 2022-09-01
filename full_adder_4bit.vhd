----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2022 14:17:50
-- Design Name: 
-- Module Name: fa_4_bit - Behavioral
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

entity fa_4_bit is
Port (
        i_A :   in std_logic_vector(3 downto 0);
        i_B :   in std_logic_vector(3 downto 0);
        i_Cin : in std_logic;
        o_Cout: out std_logic;
        o_Sum : out std_logic_vector(3 downto 0) );
end fa_4_bit;

architecture Behavioral of fa_4_bit is

component fa_module is
Port ( 
        i_f_a:in std_logic;
        i_f_b:in std_logic;
        i_f_c:in std_logic;
        o_f_sum:out std_logic;
        o_f_carry:out std_logic
 );
end component;


signal D : std_logic_vector(2 downto 0);

begin



fa1:fa_module port map (
i_f_a       =>i_A(0),
i_f_b       =>i_B(0),
i_f_c       =>i_Cin,
o_f_sum     =>o_Sum(0),
o_f_carry   =>D(0)
);

fa2:fa_module port map (
i_f_a       =>i_A(1),
i_f_b       =>i_B(1),
i_f_c       =>D(0),
o_f_sum     =>o_Sum(1),
o_f_carry   =>D(1)
);

fa3:fa_module port map (
i_f_a       =>i_A(2),
i_f_b       =>i_B(2),
i_f_c       =>D(1),    
o_f_sum     =>o_Sum(2),
o_f_carry   =>D(2)     
);

fa4:fa_module port map (
i_f_a       =>i_A(3),
i_f_b       =>i_B(3),
i_f_c       =>D(2),
o_f_sum     =>o_Sum(3),
o_f_carry   =>o_Cout
);


end Behavioral;
