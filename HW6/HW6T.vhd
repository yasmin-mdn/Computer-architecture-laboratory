




----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:21 12/02/2021 
-- Design Name: 
-- Module Name:    q6 - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity q6 is
end q6;

archtecture Behavioral of q6 is
 
    COMPONENT cache
    PORT(
         adrs : IN  std_logic_vector(6 downto 0);
         dt : OUT  std_logic_vector(31 downto 0);
         ht : OUT  std_logic
        );
    END COMPONENT;
    

   signal adrs : std_logic_vector(6 downto 0) := (others => '0');


   signal dt : std_logic_vector(31 downto 0);
   signal ht : std_logic;
 
BEGIN

   uut: cache PORT MAP (
          adrs => adrs,
          dt => dt,
          ht => ht
        );

   stim_proc: process
   begin	
		adrs <= "0000000";
		wait for 10 ns;
		
		adrs <= "0110100";
		wait for 10 ns;
		
		adrs <= "1110100";
		wait for 10 ns;
		
		adrs <= "0101000";
		wait for 10 ns;
		
		adrs <= "0001100";
		wait for 10 ns;
		
      wait;
   end process;

END;

