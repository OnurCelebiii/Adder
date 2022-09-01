----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2022 13:52:29
-- Design Name: 
-- Module Name: ha_module - Behavioral
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

entity ha_module is
    Port ( i_a      : in STD_LOGIC;
           i_b      : in STD_LOGIC;
           o_sum    :out std_logic;
           o_carry  :out std_logic);
end ha_module;

architecture Behavioral of ha_module is

begin

o_sum<=i_a xor i_b;
o_carry<= i_a and i_b;
end Behavioral;
