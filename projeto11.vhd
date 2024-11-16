--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:47:42 10/18/2024
-- Design Name:   
-- Module Name:   /home/ise/projeto1/projeto11.vhd
-- Project Name:  projeto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: projeto1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
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