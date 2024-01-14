; This AutoHotKey script tests all mandatory key combinations
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
	; Simple Keystrokes with Modifiers
	; =========================================

	; base
	SendInput "{vkDE}{vk31}{vk32}{vk33}{vk34}{vk35}{vk36}{vk37}{vk38}{vk39}{vk30}{vkDB}{Enter}"
	SendInput "{vk41}{vk5A}{vk45}{vk52}{vk54}{vk59}{vk55}{vk49}{vk4F}{vk50}{vkBD}{vkBB}{Enter}"
	SendInput "{vk51}{vk53}{vk44}{vk46}{vk47}{vk48}{vk4A}{vk4B}{vk4C}{vk4D}{vkC0}{vkDC}{Enter}"
	SendInput "{vkE2}{vk57}{vk58}{vk43}{vk56}{vk42}{vk4E}{vkBE}{vkBC}{vkBF}{vkDF}{Enter}"
	SendInput "{vk20}{vk6E}{Enter}"

	; Shift
	SendInput "+{vkDE}+{vk31}+{vk32}+{vk33}+{vk34}+{vk35}+{vk36}+{vk37}+{vk38}+{vk39}+{vk30} +{vkDB}{Enter}"
	SendInput "+{vk41}+{vk5A}+{vk45}+{vk52}+{vk54}+{vk59}+{vk55}+{vk49}+{vk4F}+{vk50}+{vkBD}+{vkBB}{Enter}"
	SendInput "+{vk51}+{vk53}+{vk44}+{vk46}+{vk47}+{vk48}+{vk4A}+{vk4B}+{vk4C}+{vk4D}+{vkC0}+{vkDC}{Enter}"
	SendInput "+{vkE2}+{vk57}+{vk58}+{vk43}+{vk56}+{vk42}+{vk4E}+{vkBE}+{vkBC}+{vkBF}+{vkDF}{Enter}"
	SendInput "+{vk20}+{vk6E}{Enter}"
	
	; AltGr
	SendInput "{RAlt down}{vk31}{RAlt up}{RAlt down}{vk34}{RAlt up}{RAlt down}{vk35}{RAlt up}{RAlt down}{vk36}{RAlt up}{RAlt down}{vk38}{RAlt up}{RAlt down}{vk39}{RAlt up}{RAlt down}{vk30}{RAlt up}{RAlt down}{vkDB}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk41}{RAlt up}{RAlt down}{vk5A}{RAlt up}{RAlt down}{vk45}{RAlt up}{RAlt down}{vk52}{RAlt up}{RAlt down}{vk54}{RAlt up}{RAlt down}{vk59}{RAlt up}{RAlt down}{vk55}{RAlt up}{RAlt down}{vk4F}{RAlt up}{RAlt down}{vk50}{RAlt up}{RAlt down}{vkBD}{RAlt up}{RAlt down}{vkBB}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk51}{RAlt up}{RAlt down}{vk53}{RAlt up}{RAlt down}{vk44}{RAlt up}{RAlt down}{vk4A}{RAlt up}{RAlt down}{vk4C}{RAlt up}{RAlt down}{vk4D}{RAlt up}{RAlt down}{vkC0}{RAlt up}{RAlt down}{vkDC}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vkE2}{RAlt up}{RAlt down}{vk57}{RAlt up}{RAlt down}{vk58}{RAlt up}{RAlt down}{vk43}{RAlt up}{RAlt down}{vkBE}{RAlt up}{RAlt down}{vkBC}{RAlt up}{RAlt down}{vkBF}{RAlt up}{RAlt down}{vkDF}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk20}{RAlt up}{RAlt down}{vk6E}{RAlt up}{Enter}"

	; Shift+AltGr
	SendInput "{RAlt down}+{vk31}{RAlt up}{RAlt down}+{vk32}{RAlt up}{RAlt down}+{vk33}{RAlt up}{RAlt down}+{vk34}{RAlt up}{RAlt down}+{vk37}{RAlt up}{RAlt down}+{vk38}{RAlt up}{RAlt down}+{vk39}{RAlt up}{RAlt down}+{vk30}{RAlt up} {Enter}"
	SendInput "{RAlt down}+{vk41}{RAlt up}{RAlt down}+{vk5A}{RAlt up}{RAlt down}+{vk45}{RAlt up}{RAlt down}+{vk52}{RAlt up}{RAlt down}+{vk54}{RAlt up}{RAlt down}+{vk59}{RAlt up}{RAlt down}+{vk55}{RAlt up}{RAlt down}+{vk4F}{RAlt up}{RAlt down}+{vk50}{RAlt up}{RAlt down}+{vkBD}{RAlt up}{RAlt down}+{vkBB}{RAlt up}{Enter}"
	SendInput "{RAlt down}+{vk51}{RAlt up}{RAlt down}+{vk53}{RAlt up}{RAlt down}+{vk44}{RAlt up}{RAlt down}+{vk46}{RAlt up}{RAlt down}+{vk47}{RAlt up}{RAlt down}+{vk4A}{RAlt up}{RAlt down}+{vk4B}{RAlt up}{RAlt down}+{vk4C}{RAlt up}{RAlt down}+{vk4D}{RAlt up}{RAlt down}+{vkC0}{RAlt up}{RAlt down}+{vkDC}{RAlt up}{Enter}"
	SendInput "{RAlt down}+{vkE2}{RAlt up}{RAlt down}+{vk57}{RAlt up}{RAlt down}+{vk58}{RAlt up}{RAlt down}+{vk43}{RAlt up}{RAlt down}+{vk42}{RAlt up}{RAlt down}+{vk4E}{RAlt up}{RAlt down}+{vkBE}{RAlt up}{RAlt down}+{vkBF}{RAlt up}{RAlt down}+{vkDF}{RAlt up}{Enter}"
	SendInput "{RAlt down}+{vk20}{RAlt up}{RAlt down}+{vk6E}{RAlt up}{Enter}"

	; [Caps Lock][On]
	SetStoreCapsLockMode False
	SendInput "{CapsLock}"

	; [Caps Lock]
	SendInput "{vkDE}{vk31}{vk32}{vk33}{vk34}{vk35}{vk36}{vk37}{vk38}{vk39}{vk30}{vkDB}{Enter}"
	SendInput "{vk41}{vk5A}{vk45}{vk52}{vk54}{vk59}{vk55}{vk49}{vk4F}{vk50}{vkBD}{vkBB}{Enter}"
	SendInput "{vk51}{vk53}{vk44}{vk46}{vk47}{vk48}{vk4A}{vk4B}{vk4C}{vk4D}{vkC0}{vkDC}{Enter}"
	SendInput "{vkE2}{vk57}{vk58}{vk43}{vk56}{vk42}{vk4E}{vkBE}{vkBC}{vkBF}{vkDF}{Enter}"
	SendInput "{vk20}{vk6E}{Enter}"

	; [Caps lock] Shift
	SendInput "+{vkDE}+{vk31}+{vk32}+{vk33}+{vk34}+{vk35}+{vk36}+{vk37}+{vk38}+{vk39}+{vk30}+{vkDB}{Enter}"
	SendInput "+{vk41}+{vk5A}+{vk45}+{vk52}+{vk54}+{vk59}+{vk55}+{vk49}+{vk4F}+{vk50}+{vkBD}+{vkBB}{Enter}"
	SendInput "+{vk51}+{vk53}+{vk44}+{vk46}+{vk47}+{vk48}+{vk4A}+{vk4B}+{vk4C}+{vk4D}+{vkC0}+{vkDC}{Enter}"
	SendInput "+{vkE2}+{vk57}+{vk58}+{vk43}+{vk56}+{vk42}+{vk4E}+{vkBE}+{vkBC}+{vkBF}+{vkDF}{Enter}"
	SendInput "+{vk20}+{vk6E}{Enter}"

	; [Caps Lock] AltGr
	SendInput "{RAlt down}{vk31}{RAlt up}{RAlt down}{vk34}{RAlt up}{RAlt down}{vk35}{RAlt up}{RAlt down}{vk36}{RAlt up}{RAlt down}{vk38}{RAlt up}{RAlt down}{vk39}{RAlt up}{RAlt down}{vk30}{RAlt up}{RAlt down}{vkDB}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk41}{RAlt up}{RAlt down}{vk5A}{RAlt up}{RAlt down}{vk45}{RAlt up}{RAlt down}{vk52}{RAlt up}{RAlt down}{vk54}{RAlt up}{RAlt down}{vk59}{RAlt up}{RAlt down}{vk55}{RAlt up}{RAlt down}{vk4F}{RAlt up}{RAlt down}{vk50}{RAlt up}{RAlt down}{vkBD}{RAlt up}{RAlt down}{vkBB}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk51}{RAlt up}{RAlt down}{vk53}{RAlt up}{RAlt down}{vk44}{RAlt up}{RAlt down}{vk4A}{RAlt up}{RAlt down}{vk4C}{RAlt up}{RAlt down}{vk4D}{RAlt up}{RAlt down}{vkC0}{RAlt up}{RAlt down}{vkDC}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vkE2}{RAlt up}{RAlt down}{vk57}{RAlt up}{RAlt down}{vk58}{RAlt up}{RAlt down}{vk43}{RAlt up}{RAlt down}{vkBE}{RAlt up}{RAlt down}{vkBC}{RAlt up}{RAlt down}{vkBF}{RAlt up}{RAlt down}{vkDF}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk20}{RAlt up}{RAlt down}{vk6E}{RAlt up}{Enter}"

	; [Caps Lock][Off]
	SendInput "{CapsLock}"


	; =========================================
	; Diacritical Marks and Accented Characters
	; =========================================

	; grave accent
	SendInput "{RAlt down}{vk33}{RAlt up}{vk41}{RAlt down}{vk33}{RAlt up}{vk45}{RAlt down}{vk33}{RAlt up}{vk49}{RAlt down}{vk33}{RAlt up}{vk4E}{RAlt down}{vk33}{RAlt up}{vk4F}{RAlt down}{vk33}{RAlt up}{vk59}{Enter}"
	SendInput "{RAlt down}{vk33}{RAlt up}+{vk41}{RAlt down}{vk33}{RAlt up}+{vk45}{RAlt down}{vk33}{RAlt up}+{vk49}{RAlt down}{vk33}{RAlt up}+{vk4E}{RAlt down}{vk33}{RAlt up}+{vk4F}{RAlt down}{vk33}{RAlt up}+{vk59}{Enter}"

	; circumflex accent
	SendInput "{vkDD}{vk41}{vkDD}{vk43}{vkDD}{vk45}{vkDD}{vk47}{vkDD}{vk48}{vkDD}{vk49}{vkDD}{vk4a}{vkDD}{vk4f}{vkDD}{vk53}{vkDD}{vk55}{vkDD}{vk59}{vkDD}{vk5a}{Enter}"
	SendInput "{vkDD}+{vk41}{vkDD}+{vk43}{vkDD}+{vk45}{vkDD}+{vk47}{vkDD}+{vk48}{vkDD}+{vk49}{vkDD}+{vk4a}{vkDD}+{vk4f}{vkDD}+{vk53}{vkDD}+{vk55}{vkDD}+{vk59}{vkDD}+{vk5a}{Enter}"

	; diaeresis
	SendInput "+{vkDD}{vk41}+{vkDD}{vk45}+{vkDD}{vk48}+{vkDD}{vk49}+{vkDD}{vk4f}+{vkDD}{vk54}+{vkDD}{vk55}+{vkDD}{vk57}+{vkDD}{vk58}+{vkDD}{vk59}{Enter}"
	SendInput "+{vkDD}+{vk41}+{vkDD}+{vk45}+{vkDD}+{vk48}+{vkDD}+{vk49}+{vkDD}+{vk4f}+{vkDD}+{vk55}+{vkDD}+{vk57}+{vkDD}+{vk58}+{vkDD}+{vk59}{Enter}"

	; tilde
	SendInput "{RAlt down}{vk4E}{RAlt up}{vk41}{RAlt down}{vk4E}{RAlt up}{vk45}{RAlt down}{vk4E}{RAlt up}{vk49}{RAlt down}{vk4E}{RAlt up}{vk4e}{RAlt down}{vk4E}{RAlt up}{vk4f}{RAlt down}{vk4E}{RAlt up}{vk55}{RAlt down}{vk4E}{RAlt up}{vk56}{RAlt down}{vk4E}{RAlt up}{vk59}{Enter}"
	SendInput "{RAlt down}{vk4E}{RAlt up}+{vk41}{RAlt down}{vk4E}{RAlt up}+{vk45}{RAlt down}{vk4E}{RAlt up}+{vk49}{RAlt down}{vk4E}{RAlt up}+{vk4e}{RAlt down}{vk4E}{RAlt up}+{vk4f}{RAlt down}{vk4E}{RAlt up}+{vk55}{RAlt down}{vk4E}{RAlt up}+{vk56}{RAlt down}{vk4E}{RAlt up}+{vk59}{Enter}"

	; acute accent
	SendInput "{RAlt down}{vk32}{RAlt up}{vk41}{RAlt down}{vk32}{RAlt up}{vk43}{RAlt down}{vk32}{RAlt up}{vk45}{RAlt down}{vk32}{RAlt up}{vk47}{RAlt down}{vk32}{RAlt up}{vk49}{RAlt down}{vk32}{RAlt up}{vk4b}{RAlt down}{vk32}{RAlt up}{vk4c}{RAlt down}{vk32}{RAlt up}{vk4d}{RAlt down}{vk32}{RAlt up}{vk4e}{RAlt down}{vk32}{RAlt up}{vk4f}{RAlt down}{vk32}{RAlt up}{vk50}{RAlt down}{vk32}{RAlt up}{vk52}{RAlt down}{vk32}{RAlt up}{vk53}{RAlt down}{vk32}{RAlt up}{vk55}{RAlt down}{vk32}{RAlt up}{vk57}{RAlt down}{vk32}{RAlt up}{vk59}{RAlt down}{vk32}{RAlt up}{vk5a}{RAlt down}{vk32}{RAlt up}{RAlt down}{vk41}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk32}{RAlt up}+{vk41}{RAlt down}{vk32}{RAlt up}+{vk43}{RAlt down}{vk32}{RAlt up}+{vk45}{RAlt down}{vk32}{RAlt up}+{vk47}{RAlt down}{vk32}{RAlt up}+{vk49}{RAlt down}{vk32}{RAlt up}+{vk4b}{RAlt down}{vk32}{RAlt up}+{vk4c}{RAlt down}{vk32}{RAlt up}+{vk4d}{RAlt down}{vk32}{RAlt up}+{vk4e}{RAlt down}{vk32}{RAlt up}+{vk4f}{RAlt down}{vk32}{RAlt up}+{vk50}{RAlt down}{vk32}{RAlt up}+{vk52}{RAlt down}{vk32}{RAlt up}+{vk53}{RAlt down}{vk32}{RAlt up}+{vk55}{RAlt down}{vk32}{RAlt up}+{vk57}{RAlt down}{vk32}{RAlt up}+{vk59}{RAlt down}{vk32}{RAlt up}+{vk5a}{RAlt down}{vk32}{RAlt up}{RAlt down}+{vk41}{RAlt up}{Enter}"

	; cedilla
	SendInput "{RAlt down}{vk56}{RAlt up}{vk43}{RAlt down}{vk56}{RAlt up}{vk44}{RAlt down}{vk56}{RAlt up}{vk45}{RAlt down}{vk56}{RAlt up}{vk47}{RAlt down}{vk56}{RAlt up}{vk48}{RAlt down}{vk56}{RAlt up}{vk4b}{RAlt down}{vk56}{RAlt up}{vk4c}{RAlt down}{vk56}{RAlt up}{vk4e}{RAlt down}{vk56}{RAlt up}{vk52}{RAlt down}{vk56}{RAlt up}{vk53}{RAlt down}{vk56}{RAlt up}{vk54}{Enter}"
	SendInput "{RAlt down}{vk56}{RAlt up}+{vk43}{RAlt down}{vk56}{RAlt up}+{vk44}{RAlt down}{vk56}{RAlt up}+{vk45}{RAlt down}{vk56}{RAlt up}+{vk47}{RAlt down}{vk56}{RAlt up}+{vk48}{RAlt down}{vk56}{RAlt up}+{vk4b}{RAlt down}{vk56}{RAlt up}+{vk4c}{RAlt down}{vk56}{RAlt up}+{vk4e}{RAlt down}{vk56}{RAlt up}+{vk52}{RAlt down}{vk56}{RAlt up}+{vk53}{RAlt down}{vk56}{RAlt up}+{vk54}{Enter}"

	; ogonek
	SendInput "{RAlt down}{vkDE}{RAlt up}{vk41}{RAlt down}{vkDE}{RAlt up}{vk45}{RAlt down}{vkDE}{RAlt up}{vk49}{RAlt down}{vkDE}{RAlt up}{vk4f}{RAlt down}{vkDE}{RAlt up}{vk55}{Enter}"
	SendInput "{RAlt down}{vkDE}{RAlt up}+{vk41}{RAlt down}{vkDE}{RAlt up}+{vk45}{RAlt down}{vkDE}{RAlt up}+{vk49}{RAlt down}{vkDE}{RAlt up}+{vk4f}{RAlt down}{vkDE}{RAlt up}+{vk55}{Enter}"

	; macron
	SendInput "{RAlt down}{vk37}{RAlt up}{vk41}{RAlt down}{vk37}{RAlt up}{vk45}{RAlt down}{vk37}{RAlt up}{vk47}{RAlt down}{vk37}{RAlt up}{vk49}{RAlt down}{vk37}{RAlt up}{vk4f}{RAlt down}{vk37}{RAlt up}{vk55}{RAlt down}{vk37}{RAlt up}{vk59}{RAlt down}{vk37}{RAlt up}{RAlt down}{vk41}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk37}{RAlt up}+{vk41}{RAlt down}{vk37}{RAlt up}+{vk45}{RAlt down}{vk37}{RAlt up}+{vk47}{RAlt down}{vk37}{RAlt up}+{vk49}{RAlt down}{vk37}{RAlt up}+{vk4f}{RAlt down}{vk37}{RAlt up}+{vk55}{RAlt down}{vk37}{RAlt up}+{vk59}{RAlt down}{vk37}{RAlt up}{RAlt down}+{vk41}{RAlt up}{Enter}"

	; macron below
	SendInput "{RAlt down}+{vk48}{RAlt up}{vk42}{RAlt down}+{vk48}{RAlt up}{vk44}{RAlt down}+{vk48}{RAlt up}{vk48}{RAlt down}+{vk48}{RAlt up}{vk4b}{RAlt down}+{vk48}{RAlt up}{vk4c}{RAlt down}+{vk48}{RAlt up}{vk4e}{RAlt down}+{vk48}{RAlt up}{vk52}{RAlt down}+{vk48}{RAlt up}{vk54}{RAlt down}+{vk48}{RAlt up}{vk5a}{Enter}"
	SendInput "{RAlt down}+{vk48}{RAlt up}+{vk42}{RAlt down}+{vk48}{RAlt up}+{vk44}{RAlt down}+{vk48}{RAlt up}+{vk4b}{RAlt down}+{vk48}{RAlt up}+{vk4c}{RAlt down}+{vk48}{RAlt up}+{vk4e}{RAlt down}+{vk48}{RAlt up}+{vk52}{RAlt down}+{vk48}{RAlt up}+{vk54}{RAlt down}+{vk48}{RAlt up}+{vk5a}{Enter}"

	; ring above
	SendInput "{RAlt down}+{vkDB}{RAlt up}{vk41}{RAlt down}+{vkDB}{RAlt up}{vk55}{RAlt down}+{vkDB}{RAlt up}{vk57}{RAlt down}+{vkDB}{RAlt up}{vk59}{Enter}"
	SendInput "{RAlt down}+{vkDB}{RAlt up}+{vk41}{RAlt down}+{vkDB}{RAlt up}+{vk55}{Enter}"

	; caron
	SendInput "{RAlt down}{vkDD}{RAlt up}{vk41}{RAlt down}{vkDD}{RAlt up}{vk43}{RAlt down}{vkDD}{RAlt up}{vk44}{RAlt down}{vkDD}{RAlt up}{vk45}{RAlt down}{vkDD}{RAlt up}{vk47}{RAlt down}{vkDD}{RAlt up}{vk48}{RAlt down}{vkDD}{RAlt up}{vk49}{RAlt down}{vkDD}{RAlt up}{vk4a}{RAlt down}{vkDD}{RAlt up}{vk4b}{RAlt down}{vkDD}{RAlt up}{vk4c}{RAlt down}{vkDD}{RAlt up}{vk4e}{RAlt down}{vkDD}{RAlt up}{vk4f}{RAlt down}{vkDD}{RAlt up}{vk52}{RAlt down}{vkDD}{RAlt up}{vk53}{RAlt down}{vkDD}{RAlt up}{vk54}{RAlt down}{vkDD}{RAlt up}{vk55}{RAlt down}{vkDD}{RAlt up}{vk5a}{RAlt down}{vkDD}{RAlt up}{RAlt down}{vk57}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vkDD}{RAlt up}+{vk41}{RAlt down}{vkDD}{RAlt up}+{vk43}{RAlt down}{vkDD}{RAlt up}+{vk44}{RAlt down}{vkDD}{RAlt up}+{vk45}{RAlt down}{vkDD}{RAlt up}+{vk47}{RAlt down}{vkDD}{RAlt up}+{vk48}{RAlt down}{vkDD}{RAlt up}+{vk49}{RAlt down}{vkDD}{RAlt up}+{vk4b}{RAlt down}{vkDD}{RAlt up}+{vk4c}{RAlt down}{vkDD}{RAlt up}+{vk4e}{RAlt down}{vkDD}{RAlt up}+{vk4f}{RAlt down}{vkDD}{RAlt up}+{vk52}{RAlt down}{vkDD}{RAlt up}+{vk53}{RAlt down}{vkDD}{RAlt up}+{vk54}{RAlt down}{vkDD}{RAlt up}+{vk55}{RAlt down}{vkDD}{RAlt up}+{vk5a}{RAlt down}{vkDD}{RAlt up}{RAlt down}+{vk57}{RAlt up}{Enter}"

	; double acute accent
	SendInput "{RAlt down}+{vk35}{RAlt up}{vk4f}{RAlt down}+{vk35}{RAlt up}{vk55}{Enter}"
	SendInput "{RAlt down}+{vk35}{RAlt up}+{vk4f}{RAlt down}+{vk35}{RAlt up}+{vk55}{Enter}"

	; double grave accent
	SendInput "{RAlt down}+{vk36}{RAlt up}{vk41}{RAlt down}+{vk36}{RAlt up}{vk45}{RAlt down}+{vk36}{RAlt up}{vk49}{RAlt down}+{vk36}{RAlt up}{vk4f}{RAlt down}+{vk36}{RAlt up}{vk52}{RAlt down}+{vk36}{RAlt up}{vk55}{Enter}"
	SendInput "{RAlt down}+{vk36}{RAlt up}+{vk41}{RAlt down}+{vk36}{RAlt up}+{vk45}{RAlt down}+{vk36}{RAlt up}+{vk49}{RAlt down}+{vk36}{RAlt up}+{vk4f}{RAlt down}+{vk36}{RAlt up}+{vk52}{RAlt down}+{vk36}{RAlt up}+{vk55}{Enter}"

	; dot above
	SendInput "{RAlt down}{vk49}{RAlt up}{vk41}{RAlt down}{vk49}{RAlt up}{vk42}{RAlt down}{vk49}{RAlt up}{vk43}{RAlt down}{vk49}{RAlt up}{vk44}{RAlt down}{vk49}{RAlt up}{vk45}{RAlt down}{vk49}{RAlt up}{vk46}{RAlt down}{vk49}{RAlt up}{vk47}{RAlt down}{vk49}{RAlt up}{vk48}{RAlt down}{vk49}{RAlt up}{vk49}{RAlt down}{vk49}{RAlt up}{vk4c}{RAlt down}{vk49}{RAlt up}{vk4d}{RAlt down}{vk49}{RAlt up}{vk4e}{RAlt down}{vk49}{RAlt up}{vk4f}{RAlt down}{vk49}{RAlt up}{vk50}{RAlt down}{vk49}{RAlt up}{vk52}{RAlt down}{vk49}{RAlt up}{vk53}{RAlt down}{vk49}{RAlt up}{vk54}{RAlt down}{vk49}{RAlt up}{vk57}{RAlt down}{vk49}{RAlt up}{vk58}{RAlt down}{vk49}{RAlt up}{vk59}{RAlt down}{vk49}{RAlt up}{vk5a}{RAlt down}{vk49}{RAlt up}{RAlt down}{vk48}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk49}{RAlt up}+{vk41}{RAlt down}{vk49}{RAlt up}+{vk42}{RAlt down}{vk49}{RAlt up}+{vk43}{RAlt down}{vk49}{RAlt up}+{vk44}{RAlt down}{vk49}{RAlt up}+{vk45}{RAlt down}{vk49}{RAlt up}+{vk46}{RAlt down}{vk49}{RAlt up}+{vk47}{RAlt down}{vk49}{RAlt up}+{vk48}{RAlt down}{vk49}{RAlt up}+{vk49}{RAlt down}{vk49}{RAlt up}+{vk4c}{RAlt down}{vk49}{RAlt up}+{vk4d}{RAlt down}{vk49}{RAlt up}+{vk4e}{RAlt down}{vk49}{RAlt up}+{vk4f}{RAlt down}{vk49}{RAlt up}+{vk50}{RAlt down}{vk49}{RAlt up}+{vk52}{RAlt down}{vk49}{RAlt up}+{vk53}{RAlt down}{vk49}{RAlt up}+{vk54}{RAlt down}{vk49}{RAlt up}+{vk57}{RAlt down}{vk49}{RAlt up}+{vk58}{RAlt down}{vk49}{RAlt up}+{vk59}{RAlt down}{vk49}{RAlt up}+{vk5a}{Enter}"

	; dot below
	SendInput "{RAlt down}+{vk49}{RAlt up}{vk41}{RAlt down}+{vk49}{RAlt up}{vk42}{RAlt down}+{vk49}{RAlt up}{vk44}{RAlt down}+{vk49}{RAlt up}{vk45}{RAlt down}+{vk49}{RAlt up}{vk48}{RAlt down}+{vk49}{RAlt up}{vk49}{RAlt down}+{vk49}{RAlt up}{vk4b}{RAlt down}+{vk49}{RAlt up}{vk4c}{RAlt down}+{vk49}{RAlt up}{vk4d}{RAlt down}+{vk49}{RAlt up}{vk4e}{RAlt down}+{vk49}{RAlt up}{vk4f}{RAlt down}+{vk49}{RAlt up}{vk52}{RAlt down}+{vk49}{RAlt up}{vk53}{RAlt down}+{vk49}{RAlt up}{vk54}{RAlt down}+{vk49}{RAlt up}{vk55}{RAlt down}+{vk49}{RAlt up}{vk56}{RAlt down}+{vk49}{RAlt up}{vk57}{RAlt down}+{vk49}{RAlt up}{vk59}{RAlt down}+{vk49}{RAlt up}{vk5a}{Enter}"
	SendInput "{RAlt down}+{vk49}{RAlt up}+{vk41}{RAlt down}+{vk49}{RAlt up}+{vk42}{RAlt down}+{vk49}{RAlt up}+{vk44}{RAlt down}+{vk49}{RAlt up}+{vk45}{RAlt down}+{vk49}{RAlt up}+{vk48}{RAlt down}+{vk49}{RAlt up}+{vk49}{RAlt down}+{vk49}{RAlt up}+{vk4b}{RAlt down}+{vk49}{RAlt up}+{vk4c}{RAlt down}+{vk49}{RAlt up}+{vk4d}{RAlt down}+{vk49}{RAlt up}+{vk4e}{RAlt down}+{vk49}{RAlt up}+{vk4f}{RAlt down}+{vk49}{RAlt up}+{vk52}{RAlt down}+{vk49}{RAlt up}+{vk53}{RAlt down}+{vk49}{RAlt up}+{vk54}{RAlt down}+{vk49}{RAlt up}+{vk55}{RAlt down}+{vk49}{RAlt up}+{vk56}{RAlt down}+{vk49}{RAlt up}+{vk57}{RAlt down}+{vk49}{RAlt up}+{vk59}{RAlt down}+{vk49}{RAlt up}+{vk5a}{Enter}"

	; inverted breve
	SendInput "{RAlt down}+{vkDE}{RAlt up}{vk41}{RAlt down}+{vkDE}{RAlt up}{vk45}{RAlt down}+{vkDE}{RAlt up}{vk49}{RAlt down}+{vkDE}{RAlt up}{vk4f}{RAlt down}+{vkDE}{RAlt up}{vk52}{RAlt down}+{vkDE}{RAlt up}{vk55}{Enter}"
	SendInput "{RAlt down}+{vkDE}{RAlt up}+{vk41}{RAlt down}+{vkDE}{RAlt up}+{vk45}{RAlt down}+{vkDE}{RAlt up}+{vk49}{RAlt down}+{vkDE}{RAlt up}+{vk4f}{RAlt down}+{vkDE}{RAlt up}+{vk52}{RAlt down}+{vkDE}{RAlt up}+{vk55}{Enter}"

	; breve
	SendInput "{RAlt down}{vkDE}{RAlt up}{vk41}{RAlt down}{vkDE}{RAlt up}{vk45}{RAlt down}{vkDE}{RAlt up}{vk47}{RAlt down}{vkDE}{RAlt up}{vk49}{RAlt down}{vkDE}{RAlt up}{vk4f}{RAlt down}{vkDE}{RAlt up}{vk55}{Enter}"
	SendInput "{RAlt down}{vkDE}{RAlt up}+{vk41}{RAlt down}{vkDE}{RAlt up}+{vk45}{RAlt down}{vkDE}{RAlt up}+{vk47}{RAlt down}{vkDE}{RAlt up}+{vk49}{RAlt down}{vkDE}{RAlt up}+{vk4f}{RAlt down}{vkDE}{RAlt up}+{vk55}{Enter}"

	; short stroke overlay
	SendInput "{RAlt down}{vk42}{RAlt up}{vk42}{RAlt down}{vk42}{RAlt up}{vk44}{RAlt down}{vk42}{RAlt up}{vk47}{RAlt down}{vk42}{RAlt up}{vk48}{RAlt down}{vk42}{RAlt up}{vk4a}{RAlt down}{vk42}{RAlt up}{vk4c}{RAlt down}{vk42}{RAlt up}{vk52}{RAlt down}{vk42}{RAlt up}{vk54}{RAlt down}{vk42}{RAlt up}{vk59}{RAlt down}{vk42}{RAlt up}{vk5a}{Enter}"
	SendInput "{RAlt down}{vk42}{RAlt up}+{vk42}{RAlt down}{vk42}{RAlt up}+{vk44}{RAlt down}{vk42}{RAlt up}+{vk47}{RAlt down}{vk42}{RAlt up}+{vk48}{RAlt down}{vk42}{RAlt up}+{vk49}{RAlt down}{vk42}{RAlt up}+{vk4a}{RAlt down}{vk42}{RAlt up}+{vk4c}{RAlt down}{vk42}{RAlt up}+{vk52}{RAlt down}{vk42}{RAlt up}+{vk54}{RAlt down}{vk42}{RAlt up}+{vk55}{RAlt down}{vk42}{RAlt up}+{vk59}{RAlt down}{vk42}{RAlt up}+{vk5a}{Enter}"

	; short solidus overlay
	SendInput "{RAlt down}{vk4B}{RAlt up}{vk43}{RAlt down}{vk4B}{RAlt up}{vk45}{RAlt down}{vk4B}{RAlt up}{vk4c}{RAlt down}{vk4B}{RAlt up}{vk4f}{RAlt down}{vk4B}{RAlt up}{RAlt down}{vk48}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk4B}{RAlt up}+{vk41}{RAlt down}{vk4B}{RAlt up}+{vk43}{RAlt down}{vk4B}{RAlt up}+{vk45}{RAlt down}{vk4B}{RAlt up}+{vk4c}{RAlt down}{vk4B}{RAlt up}+{vk4f}{RAlt down}{vk4B}{RAlt up}+{vk54}{Enter}"

	; comma below
	SendInput "{RAlt down}+{vkBC}{RAlt up}{vk53}{RAlt down}+{vkBC}{RAlt up}{vk54}{Enter}"
	SendInput "{RAlt down}+{vkBC}{RAlt up}+{vk53}{RAlt down}+{vkBC}{RAlt up}+{vk54}{Enter}"


	; =========================================
	; Math comparison operators
	; =========================================

	; tilde-based math symbols
	SendInput "{RAlt down}{vk4E}{RAlt up}{vkBD}{Enter}"
	SendInput "{RAlt down}{vk4E}{RAlt up}{vkE2}{RAlt down}{vk4E}{RAlt up}+{vkE2}{RAlt down}{vk4E}{RAlt up}+{vkDF}{Enter}"

	; stroke-based math symbols
	SendInput "{RAlt down}{vk4B}{RAlt up}+{vkDF}{RAlt down}{vk4B}{RAlt up}{RAlt down}{vkDF}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk4B}{RAlt up}{vkE2}{RAlt down}{vk4B}{RAlt up}+{vkE2}{RAlt down}{vk4B}{RAlt up}{RAlt down}{vkE2}{RAlt up}{RAlt down}{vk4B}{RAlt up}{RAlt down}+{vkE2}{RAlt up}{Enter}"


	; =========================================
	; Subscripts and superscripts symbols
	; =========================================

	; caron-based subscript symbols
	SendInput "{RAlt down}{vkDD}{RAlt up}+{vk31}{RAlt down}{vkDD}{RAlt up}+{vk32}{RAlt down}{vkDD}{RAlt up}+{vk33}{RAlt down}{vkDD}{RAlt up}+{vk34}{RAlt down}{vkDD}{RAlt up}+{vk35}{RAlt down}{vkDD}{RAlt up}+{vk36}{RAlt down}{vkDD}{RAlt up}+{vk37}{RAlt down}{vkDD}{RAlt up}+{vk38}{RAlt down}{vkDD}{RAlt up}+{vk39}{RAlt down}{vkDD}{RAlt up}+{vk30}{Enter}"

	; circomflex-based superscript symbols
	SendInput "{vkDD}+{vk31}{vkDD}+{vk32}{vkDD}+{vk33}{vkDD}+{vk34}{vkDD}+{vk35}{vkDD}+{vk36}{vkDD}+{vk37}{vkDD}+{vk38}{vkDD}+{vk39}{vkDD}+{vk30}{Enter}"


	; =========================================
	; Currency Symbols Layer
	; =========================================

	; base
	SendInput "{RAlt down}{vk46}{RAlt up}{vk45}{RAlt down}{vk46}{RAlt up}{vk52}{RAlt down}{vk46}{RAlt up}{vk54}{RAlt down}{vk46}{RAlt up}{vk59}{RAlt down}{vk46}{RAlt up}{vk50}{Enter}"
	SendInput "{RAlt down}{vk46}{RAlt up}{vk53}{RAlt down}{vk46}{RAlt up}{vk44}{RAlt down}{vk46}{RAlt up}{vk46}{RAlt down}{vk46}{RAlt up}{vk47}{RAlt down}{vk46}{RAlt up}{vk48}{RAlt down}{vk46}{RAlt up}{vk4B}{RAlt down}{vk46}{RAlt up}{vk4C}{RAlt down}{vk46}{RAlt up}{vk4D}{Enter}"
	SendInput "{RAlt down}{vk46}{RAlt up}{vk57}{RAlt down}{vk46}{RAlt up}{vk43}{RAlt down}{vk46}{RAlt up}{vk4E}{Enter}"

	; Shift
	SendInput "{RAlt down}{vk46}{RAlt up}+{vk41}{RAlt down}{vk46}{RAlt up}+{vk52}{RAlt down}{vk46}{RAlt up}+{vk54}{RAlt down}{vk46}{RAlt up}+{vk50}{Enter}"
	SendInput "{RAlt down}{vk46}{RAlt up}+{vk53}{RAlt down}{vk46}{RAlt up}+{vk44}{RAlt down}{vk46}{RAlt up}+{vk46}{RAlt down}{vk46}{RAlt up}+{vk4C}{RAlt down}{vk46}{RAlt up}+{vk4D}{Enter}"
	SendInput "{RAlt down}{vk46}{RAlt up}+{vk43}{Enter}"

	; AltGr
	SendInput "{RAlt down}{vk46}{RAlt up}{RAlt down}{vk52}{RAlt up}{RAlt down}{vk46}{RAlt up}{RAlt down}{vk50}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk46}{RAlt up}{RAlt down}{vk4C}{RAlt up}{RAlt down}{vk46}{RAlt up}{RAlt down}{vk4D}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk46}{RAlt up}{RAlt down}{vk43}{RAlt up}{Enter}"

	; Shift+AltGr
	SendInput "{RAlt down}{vk46}{RAlt up}{RAlt down}{vk46}{RAlt up}{Enter}"
	SendInput "{RAlt down}{vk46}{RAlt up}{RAlt down}+{vk43}{RAlt up}{Enter}"


	; =========================================
	; Greek Characters Layer
	; =========================================

	; base
	SendInput "{RAlt down}{vk47}{RAlt up}{vk41}{RAlt down}{vk47}{RAlt up}{vk5A}{RAlt down}{vk47}{RAlt up}{vk45}{RAlt down}{vk47}{RAlt up}{vk52}{RAlt down}{vk47}{RAlt up}{vk55}{RAlt down}{vk47}{RAlt up}{vk49}{RAlt down}{vk47}{RAlt up}{vk4F}{RAlt down}{vk47}{RAlt up}{vk50}{Enter}"
	SendInput "{RAlt down}{vk47}{RAlt up}{vk53}{RAlt down}{vk47}{RAlt up}{vk44}{RAlt down}{vk47}{RAlt up}{vk47}{RAlt down}{vk47}{RAlt up}{vk48}{RAlt down}{vk47}{RAlt up}{vk4A}{RAlt down}{vk47}{RAlt up}{vk4B}{RAlt down}{vk47}{RAlt up}{vk4C}{RAlt down}{vk47}{RAlt up}{vk4D}{Enter}"
	SendInput "{RAlt down}{vk47}{RAlt up}{vk57}{RAlt down}{vk47}{RAlt up}{vk42}{RAlt down}{vk47}{RAlt up}{vk4E}{Enter}"

	; Shift
	SendInput "{RAlt down}{vk47}{RAlt up}+{vk41}{RAlt down}{vk47}{RAlt up}+{vk5A}{RAlt down}{vk47}{RAlt up}+{vk45}{RAlt down}{vk47}{RAlt up}+{vk52}{RAlt down}{vk47}{RAlt up}+{vk55}{RAlt down}{vk47}{RAlt up}+{vk49}{RAlt down}{vk47}{RAlt up}+{vk4F}{RAlt down}{vk47}{RAlt up}+{vk50}{Enter}"
	SendInput "{RAlt down}{vk47}{RAlt up}+{vk53}{RAlt down}{vk47}{RAlt up}+{vk44}{RAlt down}{vk47}{RAlt up}+{vk47}{RAlt down}{vk47}{RAlt up}+{vk48}{RAlt down}{vk47}{RAlt up}+{vk4A}{RAlt down}{vk47}{RAlt up}+{vk4B}{RAlt down}{vk47}{RAlt up}+{vk4C}{RAlt down}{vk47}{RAlt up}+{vk4D}{Enter}"
	SendInput "{RAlt down}{vk47}{RAlt up}+{vk42}{RAlt down}{vk47}{RAlt up}+{vk4E}{Enter}"

	; Micro sign
	SendInput "{RAlt down}{vk47}{RAlt up}{vk20}{Enter}"


	; =========================================
	; European Extented Characters Layer
	; =========================================

	; base
	SendInput "{RAlt down}{vk48}{RAlt up}{vk37}{RAlt down}{vk48}{RAlt up}{vk38}{RAlt down}{vk48}{RAlt up}{vk39}{RAlt down}{vk48}{RAlt up}{vk30}{RAlt down}{vk48}{RAlt up}{vkDB}{Enter}"
	SendInput "{RAlt down}{vk48}{RAlt up}{vk41}{RAlt down}{vk48}{RAlt up}{vk45}{RAlt down}{vk48}{RAlt up}{vk54}{RAlt down}{vk48}{RAlt up}{vk49}{RAlt down}{vk48}{RAlt up}{vk4F}{Enter}"
	SendInput "{RAlt down}{vk48}{RAlt up}{vk53}{RAlt down}{vk48}{RAlt up}{vk44}{RAlt down}{vk48}{RAlt up}{vk47}{RAlt down}{vk48}{RAlt up}{vk4A}{Enter}"


	; Shift
	SendInput "{RAlt down}{vk48}{RAlt up}+{vk37}{RAlt down}{vk48}{RAlt up}+{vk38}{RAlt down}{vk48}{RAlt up}+{vk39}{RAlt down}{vk48}{RAlt up}+{vk30}{Enter}"
	SendInput "{RAlt down}{vk48}{RAlt up}+{vk45}{RAlt down}{vk48}{RAlt up}+{vk54}{RAlt down}{vk48}{RAlt up}+{vk49}{Enter}"
	SendInput "{RAlt down}{vk48}{RAlt up}+{vk44}{RAlt down}{vk48}{RAlt up}+{vk47}{RAlt down}{vk48}{RAlt up}+{vk4A}{Enter}"
}