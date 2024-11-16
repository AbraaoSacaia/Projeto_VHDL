--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:17:10 10/18/2024
-- Design Name:   
-- Module Name:   /home/ise/projeto1/projeto_tb.vhd
-- Project Name:  projeto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: prim_proc
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY projeto_tb IS
END projeto_tb;
 
ARCHITECTURE behavior OF projeto_tb IS     

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '0';
   signal in4 : std_logic := '0';
   signal ctrl : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal sai : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.prim_proc PORT MAP (
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          ctrl => ctrl,
          sai => sai
        );

   

   -- Stimulus process
		in1 <= '0', '1' after 8ns, '0' after 18ns, '1' after 31ns, '0' after 33ns;
		in2 <= '0', '1' after 13ns, '0' after 22ns, '1' after 26ns, '0' after 32ns, '1' after 45ns;
		in3 <= '0', '1' after 5ns, '0' after 12ns, '1' after 23ns, '0' after 37ns, '1'after 48ns;
		in4 <= '0', '1' after 16ns, '0' after 40ns;
		ctrl <= "00", "01" after 10ns, "10" after 20ns, "11" after 30ns;
END;
