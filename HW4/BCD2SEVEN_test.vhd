--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:49:28 11/15/2021
-- Design Name:   
-- Module Name:   E:/uni/term7/ArchLab/4/BCD2SEVENSEGMENT/BCD2SEVEN_test.vhd
-- Project Name:  BCD2SEVENSEGMENT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCD2SEVEN
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
 
ENTITY BCD2SEVEN_test IS
END BCD2SEVEN_test;
 
ARCHITECTURE behavior OF BCD2SEVEN_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD2SEVEN
    PORT(
         BCDin : IN  std_logic_vector(3 downto 0);
         Seven_Segment : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BCDin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Seven_Segment : std_logic_vector(6 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD2SEVEN PORT MAP (
          BCDin => BCDin,
          Seven_Segment => Seven_Segment
        );

  
 

   -- Stimulus process

   stim_proc: process
   begin		
		BCDin <= "0000";
		wait for 50 ns;
		BCDin <= "0001";
		wait for 50 ns;
		BCDin <= "0010";
		wait for 50 ns;
		BCDin <= "0011";
		wait for 50 ns;
		BCDin <= "0100";
		wait for 50 ns;
		BCDin <= "0101";
		wait for 50 ns;
		BCDin <= "0110";
		wait for 50 ns;
		BCDin <= "0111";
		wait for 50 ns;
		BCDin <= "1000";
		wait for 50 ns;
		BCDin <= "1001";
		wait for 50 ns;
   end process;

END;
