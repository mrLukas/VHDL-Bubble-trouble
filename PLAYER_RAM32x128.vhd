----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:05:28 08/03/2016 
-- Design Name: 
-- Module Name:    PLAYER_RAM32x128 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;




entity PLAYER_RAM32x128 is
    Port ( clk_i 		: in  STD_LOGIC;
           addrOUT_i : in  STD_LOGIC_VECTOR (6 downto 0);
           data_o 	: out  STD_LOGIC_VECTOR (0 to 31));
end PLAYER_RAM32x128;

architecture Behavioral of PLAYER_RAM32x128 is

	type ram_type is array (127 downto 0) of std_logic_vector (0 to 31);
   signal RAM : ram_type;
	signal dataOUT : STD_LOGIC_VECTOR (0 to 31);

begin

	-- to je dvokanalni RAM. Pisemo na naslov addrIN_i, istocasno lahko beremo z naslova addrOUT_i
	-- RAM ima asinhronski bralni dostop, tako da ga je easy za uporabit. Ko naslovis, takoj dobis podatke.
	-- pisalni dostop je sinhronski.
	-- Pazi LSB bit je skrajno levi, zato da se lazje 'ujema' z organizacijo zaslona!

	data_o <= dataOUT;

	process (clk_i)
	begin
		if (clk_i'event and clk_i = '1') then
			-- IGRALEC (Naprej smer)
			RAM(0) <= "00010000000001100110000000001000";
			RAM(1) <= "00011100011111111111111000111000";
			RAM(2) <= "00011111110011111111001111111000";
			RAM(3) <= "00001111000000000000000011110000";
			RAM(4) <= "00001110000000000000000001110000";
			RAM(5) <= "00011110000000000000000001111000";
			RAM(6) <= "00011100000000000000000000111000";
			RAM(7) <= "00011000000000000000000000011000";
			RAM(8) <= "00110000000000000000000000001100";
			RAM(9) <= "00110000000000000000000000001100";
			RAM(10) <= "00110000000000000000000000001100";
			RAM(11) <= "00011000000000000000000000011000";
			RAM(12) <= "00011000000000000000000000011000";
			RAM(13) <= "00001110000111111111100001110000";
			RAM(14) <= "00000111001111111111110011100000";
			RAM(15) <= "00000111011111111111111011100000";
			RAM(16) <= "00000011111111111111111111000000";
			RAM(17) <= "00000111111111111111111111100000";
			RAM(18) <= "00000011111111111111111111000000";
			RAM(19) <= "00000011111111111111111111000000";
			RAM(20) <= "00000011111111111111111111000000";
			RAM(21) <= "00000001111111111111111110000000";
			RAM(22) <= "00000000111111111111111100000000";
			RAM(23) <= "00000000011111111111111000000000";
			RAM(24) <= "00000000111111111111111100000000";
			RAM(25) <= "00000000111111111111111100000000";
			RAM(26) <= "00000000111111111111111100000000";
			RAM(27) <= "00000000111111111111111100000000";
			RAM(28) <= "00000001111111111111111110000000";
			RAM(29) <= "00000001111111111111111110000000";
			RAM(30) <= "00000001111111111111111110000000";
			RAM(31) <= "00000011111111111111111111000000";
			RAM(32) <= "00000111111111111111111111100000";
			RAM(33) <= "00000111111111111111111111100000";
			RAM(34) <= "00000111111111111111111111100000";
			RAM(35) <= "00001111111111111111111111110000";
			RAM(36) <= "00011111111111111111111111111000";
			RAM(37) <= "00011111111111111111111111111000";
			RAM(38) <= "00111111111111111111111111111100";
			RAM(39) <= "00111111111111111111111111111100";

			-- IGRALEC (Leva smer)
			RAM(40) <= "00000000000001111111000000000000";
			RAM(41) <= "00000000000011111111100000000000";
			RAM(42) <= "00000000000111111100110000000000";
			RAM(43) <= "00000000011100111100011000000000";
			RAM(44) <= "00000000110000111100001100000000";
			RAM(45) <= "00000000110000111000001100000000";
			RAM(46) <= "00000001100000000000000100000000";
			RAM(47) <= "00000001000000000000000110000000";
			RAM(48) <= "00000011000000000000000010000000";
			RAM(49) <= "00000010000000000000000011000000";
			RAM(50) <= "00000011000000000000000001000000";
			RAM(51) <= "00000111100000000000000001000000";
			RAM(52) <= "00000111100000000000000001000000";
			RAM(53) <= "00000111100000000000000001000000";
			RAM(54) <= "00000011000000000000000011000000";
			RAM(55) <= "00000011000000000000000010000000";
			RAM(56) <= "00000011000000000000000010000000";
			RAM(57) <= "00000011000000000000000110000000";
			RAM(58) <= "00000001111110000000001100000000";
			RAM(59) <= "00000000011111111110111000000000";
			RAM(60) <= "00000000000000001111100000000000";
			RAM(61) <= "00000010000000011111100000000000";
			RAM(62) <= "00000111000000111111110000000000";
			RAM(63) <= "00110111100001111111110000000000";
			RAM(64) <= "00111111110011111111110000000000";
			RAM(65) <= "00111111111111111111111111110000";
			RAM(66) <= "00111111111111111111111111110000";
			RAM(67) <= "00111111111111111111111111110000";
			RAM(68) <= "00110111110111111111111000000000";
			RAM(69) <= "00000111000111111111111000000000";
			RAM(70) <= "00000010000111111111111000000000";
			RAM(71) <= "00000000001111111111110000000000";
			RAM(72) <= "00000000001111111111110000000000";
			RAM(73) <= "00000000001111111111110000000000";
			RAM(74) <= "00000000011111111111111000000000";
			RAM(75) <= "00000000011111111111111000000000";
			RAM(76) <= "00000000011111111111111100000000";
			RAM(77) <= "00000000011111111111111100000000";
			RAM(78) <= "00000000011111111111111110000000";
			RAM(79) <= "00000000011111111111111111000000";

			-- IGRALEC (Desna smer)
			RAM(80) <= "00000000000111111100000000000000";
			RAM(81) <= "00000000001111111110000000000000";
			RAM(82) <= "00000000011100111011100000000000";
			RAM(83) <= "00000000110000111100110000000000";
			RAM(84) <= "00000000110000111100011000000000";
			RAM(85) <= "00000000100000011000001100000000";
			RAM(86) <= "00000001100000000000000100000000";
			RAM(87) <= "00000001000000000000000110000000";
			RAM(88) <= "00000011000000000000000010000000";
			RAM(89) <= "00000010000000000000000011000000";
			RAM(90) <= "00000010000000000000000111000000";
			RAM(91) <= "00000010000000000000001111000000";
			RAM(92) <= "00000110000000000000001111000000";
			RAM(93) <= "00000110000000000000000111000000";
			RAM(94) <= "00000010000000000000000111000000";
			RAM(95) <= "00000011000000000000000011000000";
			RAM(96) <= "00000001000000000000000011000000";
			RAM(97) <= "00000001000000000000000110000000";
			RAM(98) <= "00000001100000000001111100000000";
			RAM(99) <= "00000000011001111111111000000000";
			RAM(100) <= "00000000001111110000000000000000";
			RAM(101) <= "00000000000111111000000001000000";
			RAM(102) <= "00000000001111111100000011000000";
			RAM(103) <= "00000000001111111110000111001000";
			RAM(104) <= "00000000001111111111001111111000";
			RAM(105) <= "00001111111111111111111111111000";
			RAM(106) <= "00001111111111111111111111111000";
			RAM(107) <= "00001111111111111111111111111000";
			RAM(108) <= "00000000011111111111001111011000";
			RAM(109) <= "00000000011111111111000011000000";
			RAM(110) <= "00000000011111111111100001000000";
			RAM(111) <= "00000000011111111111100000000000";
			RAM(112) <= "00000000001111111111110000000000";
			RAM(113) <= "00000000001111111111110000000000";
			RAM(114) <= "00000000011111111111110000000000";
			RAM(115) <= "00000000111111111111110000000000";
			RAM(116) <= "00000000111111111111111000000000";
			RAM(117) <= "00000001111111111111111000000000";
			RAM(118) <= "00000001111111111111111000000000";
			RAM(119) <= "00000011111111111111111000000000";	

			-- 128 = MAX_NUMBER_OF_RAM_LINES_FOR_8_BIT_ADDRESS
		end if;
	end process;

	dataOUT <= RAM(conv_integer(addrOUT_i));


end Behavioral;

