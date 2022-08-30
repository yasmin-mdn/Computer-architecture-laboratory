----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:02:00 11/15/2021 
-- Design Name: 
-- Module Name:    mux8 - Behavioral 
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

entity mux8 is
    Port ( S0 : in  STD_LOGIC;
			  S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           IN0 : in  STD_LOGIC;
           IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           IN3 : in  STD_LOGIC;
           IN4 : in  STD_LOGIC;
           IN5 : in  STD_LOGIC;
           IN6 : in  STD_LOGIC;
           IN7 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end mux8;

architecture Behavioral of mux8 is
Signal a0,a1,a2,a3,a4,a5,a6,a7:STD_LOGIC;
begin
	 a0 <= IN0  and (not s0)  and  (not s1)  and  (not s2);
    a1 <= IN1  and (not s0)  and  (not s1)  and     s2;             
    a2 <= IN2  and (not s0)  and      s1    and  (not s2);
    a3 <= IN3  and (not s0)  and      s1    and     s2;
    a4 <= IN4  and      s0   and  (not s1)  and  (not s2);
    a5 <= IN5  and      s0   and  (not s1)  and     s2;
    a6 <= IN6  and      s0   and      s1    and  (not s2);
    a7 <= IN7  and      s0   and      s1    and     s2;
     
    Y <= a0 or a1 or a2 or a3 or a4 or a5 or a6 or a7;

end Behavioral;

