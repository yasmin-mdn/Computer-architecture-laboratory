----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:34 12/14/2021 
-- Design Name: 
-- Module Name:    tri-state-bus - Behavioral 
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
library ieee;
 use ieee.std_logic_1164.all;


entity HW8 is
    Port ( 
			  bidir : INOUT STD_LOGIC_VECTOR (7 downto  0);
           oe : IN STD_LOGIC;
           clk : IN STD_LOGIC;
           inp : IN STD_LOGIC_VECTOR (7 downto  0);
           outp : OUT STD_LOGIC_VECTOR (7 downto  0));
end HW8 ;

architecture Behavioral of HW8 is
SIGNAL  a  : STD_LOGIC_VECTOR (7 DOWNTO 0); 
                                             
SIGNAL  b  : STD_LOGIC_VECTOR (7 DOWNTO 0);  
begin
 PROCESS(clk)
    BEGIN
    IF clk = '1'  THEN  
        a <= inp;                    
        outp <= b;                  
        END IF;
		  IF( oe = '0') THEN
            bidir <= "ZZZZZZZZ";
            b <= bidir;
        ELSE
            bidir <= a; 
            b <= bidir;
        END IF;
    END PROCESS;    
end Behavioral;

