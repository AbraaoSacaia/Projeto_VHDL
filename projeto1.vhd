----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:47 10/18/2024 
-- Design Name: 
-- Module Name:    projeto1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_1164.all;
entity prim_proc is
port( in1, in2, in3, in4 : in std_logic;
ctrl : in std_logic_vector (1 downto 0);
sai : out std_logic);
end prim_proc;
architecture prim_proc of prim_proc is
begin
process (in1, in2, in3, in4, ctrl)
begin
case ctrl is
when "00" => sai <= in1; 
when "01" => sai <= in2; 
when "10" => sai <= in3; 
when "11" => sai <= in4;
when others => null;
end case; 
end process;
end prim_proc;
