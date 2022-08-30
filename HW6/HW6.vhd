library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cache is
	Port (
		adrs: in std_logic_vector(6 downto 0);
		dt: out std_logic_vector(31 downto 0);
		ht: out std_logic
	);
end cache;

archtecture Behavioral of cache is
	type cache_type is array(0 to 3) of std_logic_vector(35 downto 0);
	signal wo: cache_type := (
		('1','0','0','0', 31 downto 30=>'1', others=>'0'),
		('1','0','0','1', others=>'0'),
		('0','0','1','0', others=>'1'),
		('1','0','1','1', others=>'1')
	);
	signal wt: cache_type := (
		('0','0','0','1', others=>'1'),
		('1','0','1','1', 31 downto 28=>'1', others=>'0'),
		('0','1','0','0', others=>'1'),
		('1','1','1','1', others=>'1')
	);
begin
	
	process(adrs, wo, wt)
		variable wo_r: std_logic_vector(35 downto 0);
		variable wo_sct: std_logic;
		variable wt_r: std_logic_vector(35 downto 0);
		variable wt_sct: std_logic;
	begin
		wo_sct := '0';
		wt_sct := '0';
		
		wo_r := wo(to_int(unsigned(adrs(3 downto 2))));
		wt_r := wt(to_int(unsigned(adrs(3 downto 2))));
		if ((wo_r(34 downto 32)=adrs(6 downto 4)) and (wo_r(35)='1')) then
			wo := '1';
		end if;
		if ((wt_r(34 downto 32)=adrs(6 downto 4)) and (wt_r(35)='1')) then
			wt_sct := '1';
		end if;
		
		if (wo_sct = '1') then
			dt <= wo_r(31 downto 0);
			ht <= '1';
		elsif (wt_sct = '1') then
			dt <= wt_r(31 downto 0);
			ht <= '1';
		else
			dt <= (others=>'Z');
			ht <= '0';
		end if;

	end process;

end Behavioral;


