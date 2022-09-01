----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2022 13:55:21
-- Design Name: 
-- Module Name: fa_module - Behavioral
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

entity fa_module is
Port ( 
        i_f_a:in std_logic;
        i_f_b:in std_logic;
        i_f_c:in std_logic;
        o_f_sum:out std_logic;
        o_f_carry:out std_logic
 );
end fa_module;



architecture Behavioral of fa_module is
component ha_module is
    Port ( i_a      : in STD_LOGIC;
           i_b      : in STD_LOGIC;
           o_sum    :out std_logic;
           o_carry  :out std_logic);
end component;

signal ha1_o_s :std_logic:='0';
signal ha1_o_carry :std_logic:='0';


signal ha2_o_carry :std_logic:='0';


begin
ha1:ha_module port map (
i_a      => i_f_a,
i_b      => i_f_b,
o_sum    => ha1_o_s, 
o_carry  => ha1_o_carry
);     


ha2:ha_module port map (
i_a      => ha1_o_s,
i_b      => i_f_c,
o_sum    => o_f_sum, 
o_carry  => ha2_o_carry
);      



o_f_carry<=ha2_o_carry OR ha1_o_carry;

end Behavioral;
