library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OddALU is
port(Clk:in std_logic;
A,B : in unsigned(7 downto 0);
student_id : in unsigned(3 downto 0);
OP : in unsigned(15 downto 0);
R1: out unsigned(3 downto 0)
);
end entity OddALU;
architecture calculation of OddALU is
signal Result : unsigned(3 downto 0) :=(others=> '0');
begin	
process(Clk,OP)
	begin	
	if(rising_edge(Clk)) THEN 
		case OP is
		   
			WHEN "0000000000000001" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;

			WHEN "0000000000000010" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;

			WHEN "0000000000000100" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;
										
			WHEN "0000000000001000" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;		

			WHEN "0000000000010000" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;					
	
			WHEN "0000000000100000" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;
											

			WHEN "0000000001000000" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;
				
			WHEN "0000000010000000" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;

			WHEN "0000000100000000" => 
				if (student_id(0) = '1') then 
					Result<="0001";
				else
					Result<="0000";
				end if;

			WHEN OTHERS => 
				Result<= "----";

			
			end case;
		end if;
	end process;
	
R1 <= Result;
end calculation;