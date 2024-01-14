; This AutoHotKey script tests all recommmended key combinations
; for the AZERTY Keyboard Layout as standardized by AFNOR.
;
; To check compliance of your layout, please, perform the following steps:
; - Install and select the keyboard layout in Windows®,
; - Run this AutoHotKey script,
; - Open Notepad and type {Ctrl}+{r} to run the test,
; - When the test completes, save the file with UTF8 encoding.
; 
; The accompanying compliance program will test this actual file
; against the expected file and report any discrepancies.
;

^r::
{
	; =========================================
	; latin characters with two diacritical marks
	; =========================================

	; acute accent
	SendInput "{RAlt down}{vk32}{RAlt up}{RAlt down}{vk43}{RAlt up}{RAlt down}{vk32}{RAlt up}{vk34}{Enter}"
	SendInput "{RAlt down}{vk32}{RAlt up}{RAlt down}+{vk43}{RAlt up}{RAlt down}{vk32}{RAlt up}{RAlt down}+{vk34}{RAlt up}{Enter}"

	; grave accent
	SendInput "{RAlt down}{vk33}{RAlt up}{vk34}{Enter}"
	SendInput "{RAlt down}{vk33}{RAlt up}{RAlt down}+{vk34}{RAlt up}{Enter}"

	; circumflex accent
	SendInput "{vkDD}{vk31}{vkDD}{vk32}{vkDD}{vk33}{Enter}"
	SendInput "{vkDD}{RAlt down}+{vk31}{RAlt up}{vkDD}{RAlt down}+{vk32}{RAlt up}{vkDD}{RAlt down}+{vk33}{RAlt up}{Enter}"

	; diaeresis
	SendInput "+{vkDD}{RAlt down}{vk55}{RAlt up}{Enter}"
	SendInput "+{vkDD}{RAlt down}+{vk55}{RAlt up}{Enter}"

	; tilde
	SendInput "{RAlt down}{vk4E}{RAlt up}{vk34}{Enter}"
	SendInput "{RAlt down}{vk4E}{RAlt up}{RAlt down}+{vk34}{RAlt up}{Enter}"

	; macron
	SendInput "{RAlt down}{vk37}{RAlt up}{vk32}{RAlt down}{vk37}{RAlt up}{vk33}{Enter}"
	SendInput "{RAlt down}{vk37}{RAlt up}{RAlt down}+{vk32}{RAlt up}{RAlt down}{vk37}{RAlt up}{RAlt down}+{vk33}{RAlt up}{Enter}"

	; dot below
	SendInput "{RAlt down}+{vk49}{RAlt up}{vk34}{Enter}"
	SendInput "{RAlt down}+{vk49}{RAlt up}{RAlt down}+{vk34}{RAlt up}{Enter}"

	; breve
	SendInput "{RAlt down}{vkDE}{RAlt up}{vk31}{Enter}"
	SendInput "{RAlt down}{vkDE}{RAlt up}{RAlt down}+{vk31}{RAlt up}{Enter}"

	; inverted breve
	SendInput "{RAlt down}+{vkDE}{RAlt up}{vk31}{RAlt down}+{vkDE}{RAlt up}{vk33}{Enter}"
	SendInput "{RAlt down}+{vkDE}{RAlt up}{RAlt down}+{vk31}{RAlt up}{RAlt down}+{vkDE}{RAlt up}{RAlt down}+{vk33}{RAlt up}{Enter}"

	; =========================================
	; Currency Symbols Layer
	; =========================================

	; Bitcoin symbol
	SendInput "{RAlt down}{vk46}{RAlt up}{vk42}{Enter}"
}