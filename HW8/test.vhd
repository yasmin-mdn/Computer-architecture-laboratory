--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:05:24 12/14/2021
-- Design Name:   
-- Module Name:   E:/uni/term7/ArchLab/8/tri-state-bus/test.vhd
-- Project Name:  tri-state-bus
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HW8
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HW8
    PORT(
         bidir : INOUT  std_logic_vector(7 downto 0);
         oe : IN  std_logic;
         clk : IN  std_logic;
         inp : IN  std_logic_vector(7 downto 0);
         outp : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal oe : std_logic := '0';
   signal clk : std_logic := '0';
   signal inp : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal bidir : std_logic_vector(7 downto 0);

 	--Outputs
   signal outp : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HW8 PORT MAP (
          bidir => bidir,
          oe => oe,
          clk => clk,
          inp => inp,
          outp => outp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		
		inp <= "10000011";

      wait;
   end process;

END;
