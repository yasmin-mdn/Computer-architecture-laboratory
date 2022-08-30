--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:28:22 11/15/2021
-- Design Name:   
-- Module Name:   E:/uni/term7/ArchLab/4/mux8/test_mux.vhd
-- Project Name:  mux8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux8
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
 
ENTITY test_mux IS
END test_mux;
 
ARCHITECTURE behavior OF test_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux8
    PORT(
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         IN0 : IN  std_logic;
         IN1 : IN  std_logic;
         IN2 : IN  std_logic;
         IN3 : IN  std_logic;
         IN4 : IN  std_logic;
         IN5 : IN  std_logic;
         IN6 : IN  std_logic;
         IN7 : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
   signal IN0 : std_logic := '0';
   signal IN1 : std_logic := '0';
   signal IN2 : std_logic := '0';
   signal IN3 : std_logic := '0';
   signal IN4 : std_logic := '0';
   signal IN5 : std_logic := '0';
   signal IN6 : std_logic := '0';
   signal IN7 : std_logic := '0';

 	--Outputs
   signal Y : std_logic;

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux8 PORT MAP (
          S0 => S0,
          S1 => S1,
          S2 => S2,
          IN0 => IN0,
          IN1 => IN1,
          IN2 => IN2,
          IN3 => IN3,
          IN4 => IN4,
          IN5 => IN5,
          IN6 => IN6,
          IN7 => IN7,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		S1 <= '1';
		IN2 <= '1';

      wait;
   end process;

END;
