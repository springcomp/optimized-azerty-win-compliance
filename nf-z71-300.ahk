; This AutoHotKey script tests all available key combinations
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

; =========================================
; Simple Keystrokes with Modifiers
; =========================================

; base
Send, {vkDE}{vk31}{vk32}{vk33}{vk34}{vk35}{vk36}{vk37}{vk38}{vk39}{vk30}{vkDB}{Enter}
Send, {vk41}{vk5A}{vk45}{vk52}{vk54}{vk59}{vk55}{vk49}{vk4F}{vk50}{vkDD}{vkBA}{Enter}
Send, {vk51}{vk53}{vk44}{vk46}{vk47}{vk48}{vk4A}{vk4B}{vk4C}{vk4D}{vkC0}{vkDC}{Enter}
Send, {vkE2}{vk57}{vk58}{vk43}{vk56}{vk42}{vk4E}{vkBC}{vkBE}{vkBF}{vkDF}{Enter}
Send, {vk20}{vk6E}{Enter}

; Shift
Send, +{vkDE}+{vk31}+{vk32}+{vk33}+{vk34}+{vk35}+{vk36}+{vk37}+{vk38}+{vk39}+{vk30} +{vkDB}{Enter}
Send, +{vk41}+{vk5A}+{vk45}+{vk52}+{vk54}+{vk59}+{vk55}+{vk49}+{vk4F}+{vk50}+{vkDD}+{vkBA}{Enter}
Send, +{vk51}+{vk53}+{vk44}+{vk46}+{vk47}+{vk48}+{vk4A}+{vk4B}+{vk4C}+{vk4D}+{vkC0}+{vkDC}{Enter}
Send, +{vkE2}+{vk57}+{vk58}+{vk43}+{vk56}+{vk42}+{vk4E}+{vkBC}+{vkBE}+{vkBF}+{vkDF}{Enter}
Send, +{vk20}+{vk6E}{Enter}

; AltGr
Send, ^!{vk31}^!{vk34}^!{vk35}^!{vk36}^!{vk38}^!{vk39}^!{vk30}^!{vkDB}{Enter}
Send, ^!{vk41}^!{vk5A}^!{vk45}^!{vk52}^!{vk54}^!{vk59}^!{vk55}^!{vk4F}^!{vk50}^!{vkDD}^!{vkBA}{Enter}
Send, ^!{vk51}^!{vk53}^!{vk44}^!{vk4A}^!{vk4C}^!{vk4D}^!{vkC0}^!{vkDC}{Enter}
Send, ^!{vkE2}^!{vk57}^!{vk58}^!{vk43}^!{vkBC}^!{vkBE}^!{vkBF}^!{vkDF}{Enter}
Send, ^!{vk20}^!{vk6E}{Enter}

; Shift+AltGr
Send, ^!+{vk31}^!+{vk32}^!+{vk33}^!+{vk34}^!+{vk37}^!+{vk38}^!+{vk39}^!+{vk30} {Enter}
Send, ^!+{vk41}^!+{vk5A}^!+{vk45}^!+{vk52}^!+{vk54}^!+{vk59}^!+{vk55}^!+{vk4F}^!+{vk50}^!+{vkDD}^!+{vkBA}{Enter}
Send, ^!+{vk51}^!+{vk53}^!+{vk44}^!+{vk46}^!+{vk47}^!+{vk4A}^!+{vk4B}^!+{vk4C}^!+{vk4D}^!+{vkC0}^!+{vkDC}{Enter}
Send, ^!+{vkE2}^!+{vk57}^!+{vk58}^!+{vk43}^!+{vk42}^!+{vk4E}^!+{vkBC}^!+{vkBF}^!+{vkDF}{Enter}
Send, ^!+{vk20}^!+{vk6E}{Enter}

; [Caps Lock][On]
SetStoreCapsLockMode, Off
Send, {CapsLock}

; [Caps Lock]
Send, {vkDE}{vk31}{vk32}{vk33}{vk34}{vk35}{vk36}{vk37}{vk38}{vk39}{vk30}{vkDB}{Enter}
Send, {vk41}{vk5A}{vk45}{vk52}{vk54}{vk59}{vk55}{vk49}{vk4F}{vk50}{vkDD}{vkBA}{Enter}
Send, {vk51}{vk53}{vk44}{vk46}{vk47}{vk48}{vk4A}{vk4B}{vk4C}{vk4D}{vkC0}{vkDC}{Enter}
Send, {vkE2}{vk57}{vk58}{vk43}{vk56}{vk42}{vk4E}{vkBC}{vkBE}{vkBF}{vkDF}{Enter}
Send, {vk20}{vk6E}{Enter}

; [Caps lock] Shift
Send, +{vkDE}+{vk31}+{vk32}+{vk33}+{vk34}+{vk35}+{vk36}+{vk37}+{vk38}+{vk39}+{vk30}+{vkDB}{Enter}
Send, +{vk41}+{vk5A}+{vk45}+{vk52}+{vk54}+{vk59}+{vk55}+{vk49}+{vk4F}+{vk50}+{vkDD}+{vkBA}{Enter}
Send, +{vk51}+{vk53}+{vk44}+{vk46}+{vk47}+{vk48}+{vk4A}+{vk4B}+{vk4C}+{vk4D}+{vkC0}+{vkDC}{Enter}
Send, +{vkE2}+{vk57}+{vk58}+{vk43}+{vk56}+{vk42}+{vk4E}+{vkBC}+{vkBE}+{vkBF}+{vkDF}{Enter}
Send, +{vk20}+{vk6E}{Enter}

; [Caps Lock] AltGr
Send, ^!{vk31}^!{vk34}^!{vk35}^!{vk36}^!{vk38}^!{vk39}^!{vk30}^!{vkDB}{Enter}
Send, ^!{vk41}^!{vk5A}^!{vk45}^!{vk52}^!{vk54}^!{vk59}^!{vk55}^!{vk4F}^!{vk50}^!{vkDD}^!{vkBA}{Enter}
Send, ^!{vk51}^!{vk53}^!{vk44}^!{vk4A}^!{vk4C}^!{vk4D}^!{vkC0}^!{vkDC}{Enter}
Send, ^!{vkE2}^!{vk57}^!{vk58}^!{vk43}^!{vkBC}^!{vkBE}^!{vkBF}^!{vkDF}{Enter}
Send, ^!{vk20}^!{vk6E}{Enter}

; [Caps Lock][Off]
Send, {CapsLock}


; =========================================
; Diacritical Marks and Accented Characters
; =========================================

; grave accent
Send, ^!{vk33}{vk41}^!{vk33}{vk45}^!{vk33}{vk49}^!{vk33}{vk4E}^!{vk33}{vk4F}^!{vk33}{vk59}{Enter}
Send, ^!{vk33}+{vk41}^!{vk33}+{vk45}^!{vk33}+{vk49}^!{vk33}+{vk4E}^!{vk33}+{vk4F}^!{vk33}+{vk59}{Enter}

; circumflex accent
Send, {vkBB}{vk41}{vkBB}{vk43}{vkBB}{vk45}{vkBB}{vk47}{vkBB}{vk48}{vkBB}{vk49}{vkBB}{vk4a}{vkBB}{vk4f}{vkBB}{vk53}{vkBB}{vk55}{vkBB}{vk59}{vkBB}{vk5a}{Enter}
Send, {vkBB}+{vk41}{vkBB}+{vk43}{vkBB}+{vk45}{vkBB}+{vk47}{vkBB}+{vk48}{vkBB}+{vk49}{vkBB}+{vk4a}{vkBB}+{vk4f}{vkBB}+{vk53}{vkBB}+{vk55}{vkBB}+{vk59}{vkBB}+{vk5a}{Enter}

; diaeresis
Send, +{vkBB}{vk41}+{vkBB}{vk45}+{vkBB}{vk48}+{vkBB}{vk49}+{vkBB}{vk4f}+{vkBB}{vk54}+{vkBB}{vk55}+{vkBB}{vk57}+{vkBB}{vk58}+{vkBB}{vk59}{Enter}
Send, +{vkBB}+{vk41}+{vkBB}+{vk45}+{vkBB}+{vk48}+{vkBB}+{vk49}+{vkBB}+{vk4f}+{vkBB}+{vk55}+{vkBB}+{vk57}+{vkBB}+{vk58}+{vkBB}+{vk59}{Enter}

; tilde
Send, ^!{vk4E}{vk41}^!{vk4E}{vk45}^!{vk4E}{vk49}^!{vk4E}{vk4e}^!{vk4E}{vk4f}^!{vk4E}{vk55}^!{vk4E}{vk56}^!{vk4E}{vk59}{Enter}
Send, ^!{vk4E}+{vk41}^!{vk4E}+{vk45}^!{vk4E}+{vk49}^!{vk4E}+{vk4e}^!{vk4E}+{vk4f}^!{vk4E}+{vk55}^!{vk4E}+{vk56}^!{vk4E}+{vk59}{Enter}

; acute accent
Send, ^!{vk32}{vk41}^!{vk32}{vk43}^!{vk32}{vk45}^!{vk32}{vk47}^!{vk32}{vk49}^!{vk32}{vk4b}^!{vk32}{vk4c}^!{vk32}{vk4d}^!{vk32}{vk4e}^!{vk32}{vk4f}^!{vk32}{vk50}^!{vk32}{vk52}^!{vk32}{vk53}^!{vk32}{vk55}^!{vk32}{vk57}^!{vk32}{vk59}^!{vk32}{vk5a}^!{vk32}^!{vk41}{Enter}
Send, ^!{vk32}+{vk41}^!{vk32}+{vk43}^!{vk32}+{vk45}^!{vk32}+{vk47}^!{vk32}+{vk49}^!{vk32}+{vk4b}^!{vk32}+{vk4c}^!{vk32}+{vk4d}^!{vk32}+{vk4e}^!{vk32}+{vk4f}^!{vk32}+{vk50}^!{vk32}+{vk52}^!{vk32}+{vk53}^!{vk32}+{vk55}^!{vk32}+{vk57}^!{vk32}+{vk59}^!{vk32}+{vk5a}^!{vk32}^!+{vk41}{Enter}

; cedilla
Send, ^!{vk56}{vk43}^!{vk56}{vk44}^!{vk56}{vk45}^!{vk56}{vk47}^!{vk56}{vk48}^!{vk56}{vk4b}^!{vk56}{vk4c}^!{vk56}{vk4e}^!{vk56}{vk52}^!{vk56}{vk53}^!{vk56}{vk54}{Enter}
Send, ^!{vk56}+{vk43}^!{vk56}+{vk44}^!{vk56}+{vk45}^!{vk56}+{vk47}^!{vk56}+{vk48}^!{vk56}+{vk4b}^!{vk56}+{vk4c}^!{vk56}+{vk4e}^!{vk56}+{vk52}^!{vk56}+{vk53}^!{vk56}+{vk54}{Enter}

; ogonek
Send, ^!{vkDE}{vk41}^!{vkDE}{vk45}^!{vkDE}{vk49}^!{vkDE}{vk4f}^!{vkDE}{vk55}{Enter}
Send, ^!{vkDE}+{vk41}^!{vkDE}+{vk45}^!{vkDE}+{vk49}^!{vkDE}+{vk4f}^!{vkDE}+{vk55}{Enter}

; macron
Send, ^!{vk37}{vk41}^!{vk37}{vk45}^!{vk37}{vk47}^!{vk37}{vk49}^!{vk37}{vk4f}^!{vk37}{vk55}^!{vk37}{vk59}^!{vk37}^!{vk41}{Enter}
Send, ^!{vk37}+{vk41}^!{vk37}+{vk45}^!{vk37}+{vk47}^!{vk37}+{vk49}^!{vk37}+{vk4f}^!{vk37}+{vk55}^!{vk37}+{vk59}^!{vk37}^!+{vk41}{Enter}

; macron below
Send, ^!+{vk48}{vk42}^!+{vk48}{vk44}^!+{vk48}{vk48}^!+{vk48}{vk4b}^!+{vk48}{vk4c}^!+{vk48}{vk4e}^!+{vk48}{vk52}^!+{vk48}{vk54}^!+{vk48}{vk5a}{Enter}
Send, ^!+{vk48}+{vk42}^!+{vk48}+{vk44}^!+{vk48}+{vk4b}^!+{vk48}+{vk4c}^!+{vk48}+{vk4e}^!+{vk48}+{vk52}^!+{vk48}+{vk54}^!+{vk48}+{vk5a}{Enter}

; ring above
Send, ^!+{vkDB}{vk41}^!+{vkDB}{vk55}^!+{vkDB}{vk57}^!+{vkDB}{vk59}{Enter}
Send, ^!+{vkDB}+{vk41}^!+{vkDB}+{vk55}{Enter}

; caron
Send, ^!{vkBB}{vk41}^!{vkBB}{vk43}^!{vkBB}{vk44}^!{vkBB}{vk45}^!{vkBB}{vk47}^!{vkBB}{vk48}^!{vkBB}{vk49}^!{vkBB}{vk4a}^!{vkBB}{vk4b}^!{vkBB}{vk4c}^!{vkBB}{vk4e}^!{vkBB}{vk4f}^!{vkBB}{vk52}^!{vkBB}{vk53}^!{vkBB}{vk54}^!{vkBB}{vk55}^!{vkBB}{vk5a}^!{vkBB}^!{vk57}{Enter}
Send, ^!{vkBB}+{vk41}^!{vkBB}+{vk43}^!{vkBB}+{vk44}^!{vkBB}+{vk45}^!{vkBB}+{vk47}^!{vkBB}+{vk48}^!{vkBB}+{vk49}^!{vkBB}+{vk4b}^!{vkBB}+{vk4c}^!{vkBB}+{vk4e}^!{vkBB}+{vk4f}^!{vkBB}+{vk52}^!{vkBB}+{vk53}^!{vkBB}+{vk54}^!{vkBB}+{vk55}^!{vkBB}+{vk5a}^!{vkBB}^!+{vk57}{Enter}

; double acute accent
Send, ^!+{vk35}{vk4f}^!+{vk35}{vk55}{Enter}
Send, ^!+{vk35}+{vk4f}^!+{vk35}+{vk55}{Enter}

; double grave accent
Send, ^!+{vk36}{vk41}^!+{vk36}{vk45}^!+{vk36}{vk49}^!+{vk36}{vk4f}^!+{vk36}{vk52}^!+{vk36}{vk55}{Enter}
Send, ^!+{vk36}+{vk41}^!+{vk36}+{vk45}^!+{vk36}+{vk49}^!+{vk36}+{vk4f}^!+{vk36}+{vk52}^!+{vk36}+{vk55}{Enter}

; dot above
Send, ^!{vk49}{vk41}^!{vk49}{vk42}^!{vk49}{vk43}^!{vk49}{vk44}^!{vk49}{vk45}^!{vk49}{vk46}^!{vk49}{vk47}^!{vk49}{vk48}^!{vk49}{vk49}^!{vk49}{vk4c}^!{vk49}{vk4d}^!{vk49}{vk4e}^!{vk49}{vk4f}^!{vk49}{vk50}^!{vk49}{vk52}^!{vk49}{vk53}^!{vk49}{vk54}^!{vk49}{vk57}^!{vk49}{vk58}^!{vk49}{vk59}^!{vk49}{vk5a}^!{vk49}^!{vk48}{Enter}
Send, ^!{vk49}+{vk41}^!{vk49}+{vk42}^!{vk49}+{vk43}^!{vk49}+{vk44}^!{vk49}+{vk45}^!{vk49}+{vk46}^!{vk49}+{vk47}^!{vk49}+{vk48}^!{vk49}+{vk49}^!{vk49}+{vk4c}^!{vk49}+{vk4d}^!{vk49}+{vk4e}^!{vk49}+{vk4f}^!{vk49}+{vk50}^!{vk49}+{vk52}^!{vk49}+{vk53}^!{vk49}+{vk54}^!{vk49}+{vk57}^!{vk49}+{vk58}^!{vk49}+{vk59}^!{vk49}+{vk5a}{Enter}

; dot below
Send, ^!+{vk49}{vk41}^!+{vk49}{vk42}^!+{vk49}{vk44}^!+{vk49}{vk45}^!+{vk49}{vk48}^!+{vk49}{vk49}^!+{vk49}{vk4b}^!+{vk49}{vk4c}^!+{vk49}{vk4d}^!+{vk49}{vk4e}^!+{vk49}{vk4f}^!+{vk49}{vk52}^!+{vk49}{vk53}^!+{vk49}{vk54}^!+{vk49}{vk55}^!+{vk49}{vk56}^!+{vk49}{vk57}^!+{vk49}{vk59}^!+{vk49}{vk5a}{Enter}
Send, ^!+{vk49}+{vk41}^!+{vk49}+{vk42}^!+{vk49}+{vk44}^!+{vk49}+{vk45}^!+{vk49}+{vk48}^!+{vk49}+{vk49}^!+{vk49}+{vk4b}^!+{vk49}+{vk4c}^!+{vk49}+{vk4d}^!+{vk49}+{vk4e}^!+{vk49}+{vk4f}^!+{vk49}+{vk52}^!+{vk49}+{vk53}^!+{vk49}+{vk54}^!+{vk49}+{vk55}^!+{vk49}+{vk56}^!+{vk49}+{vk57}^!+{vk49}+{vk59}^!+{vk49}+{vk5a}{Enter}

; inverted breve
Send, ^!+{vkDE}{vk41}^!+{vkDE}{vk45}^!+{vkDE}{vk49}^!+{vkDE}{vk4f}^!+{vkDE}{vk52}^!+{vkDE}{vk55}{Enter}
Send, ^!+{vkDE}+{vk41}^!+{vkDE}+{vk45}^!+{vkDE}+{vk49}^!+{vkDE}+{vk4f}^!+{vkDE}+{vk52}^!+{vkDE}+{vk55}{Enter}

; breve
Send, ^!{vkDE}{vk41}^!{vkDE}{vk45}^!{vkDE}{vk47}^!{vkDE}{vk49}^!{vkDE}{vk4f}^!{vkDE}{vk55}{Enter}
Send, ^!{vkDE}+{vk41}^!{vkDE}+{vk45}^!{vkDE}+{vk47}^!{vkDE}+{vk49}^!{vkDE}+{vk4f}^!{vkDE}+{vk55}{Enter}

; short overlay
Send, ^!{vk42}{vk42}^!{vk42}{vk44}^!{vk42}{vk47}^!{vk42}{vk48}^!{vk42}{vk4a}^!{vk42}{vk4c}^!{vk42}{vk52}^!{vk42}{vk54}^!{vk42}{vk59}^!{vk42}{vk5a}{Enter}
Send, ^!{vk42}+{vk42}^!{vk42}+{vk44}^!{vk42}+{vk47}^!{vk42}+{vk48}^!{vk42}+{vk49}^!{vk42}+{vk4a}^!{vk42}+{vk4c}^!{vk42}+{vk52}^!{vk42}+{vk54}^!{vk42}+{vk55}^!{vk42}+{vk59}^!{vk42}+{vk5a}{Enter}

; short stroke overlay
Send, ^!{vk4B}{vk43}^!{vk4B}{vk45}^!{vk4B}{vk4c}^!{vk4B}{vk4f}^!{vk4B}^!{vk48}{Enter}
Send, ^!{vk4B}+{vk41}^!{vk4B}+{vk43}^!{vk4B}+{vk45}^!{vk4B}+{vk4c}^!{vk4B}+{vk4f}^!{vk4B}+{vk54}{Enter}

; comma below
Send, ^!+{vkBE}{vk53}^!+{vkBE}{vk54}{Enter}
Send, ^!+{vkBE}+{vk53}^!+{vkBE}+{vk54}{Enter}

; tilde-based math symbols
Send, ^!{vk4E}{vkDD}{Enter}
Send, ^!{vk4E}{vkE2}^!{vk4E}+{vkE2}^!{vk4E}+{vkDF}{Enter}


; =========================================
; Currency Symbols Layer
; =========================================

; base
Send, ^!{vk46}{vk45}^!{vk46}{vk52}^!{vk46}{vk54}^!{vk46}{vk59}^!{vk46}{vk50}{Enter}
Send, ^!{vk46}{vk53}^!{vk46}{vk44}^!{vk46}{vk46}^!{vk46}{vk47}^!{vk46}{vk48}^!{vk46}{vk4B}^!{vk46}{vk4C}^!{vk46}{vk4D}{Enter}
Send, ^!{vk46}{vk57}^!{vk46}{vk43}^!{vk46}{vk42}^!{vk46}{vk4E}{Enter}

; Shift
Send, ^!{vk46}+{vk41}^!{vk46}+{vk52}^!{vk46}+{vk54}^!{vk46}+{vk50}{Enter}
Send, ^!{vk46}+{vk53}^!{vk46}+{vk44}^!{vk46}+{vk46}^!{vk46}+{vk4C}^!{vk46}+{vk4D}{Enter}
Send, ^!{vk46}+{vk43}{Enter}

; AltGr
Send, ^!{vk46}^!{vk52}^!{vk46}^!{vk50}{Enter}
Send, ^!{vk46}^!{vk4C}^!{vk46}^!{vk4D}{Enter}
Send, ^!{vk46}^!{vk43}{Enter}

; Shift+AltGr
Send, ^!{vk46}^!+{vk45}{Enter}
Send, ^!{vk46}^!+{vk43}{Enter}


; =========================================
; Greek Characters Layer
; =========================================

; base
Send, ^!{vk47}{vk41}^!{vk47}{vk5A}^!{vk47}{vk45}^!{vk47}{vk52}^!{vk47}{vk55}^!{vk47}{vk49}^!{vk47}{vk4F}^!{vk47}{vk50}{Enter}
Send, ^!{vk47}{vk53}^!{vk47}{vk44}^!{vk47}{vk47}^!{vk47}{vk48}^!{vk47}{vk4A}^!{vk47}{vk4B}^!{vk47}{vk4C}^!{vk47}{vk4D}{Enter}
Send, ^!{vk47}{vk57}^!{vk47}{vk42}^!{vk47}{vk4E}{Enter}

; Shift
Send, ^!{vk47}+{vk41}^!{vk47}+{vk5A}^!{vk47}+{vk45}^!{vk47}+{vk52}^!{vk47}+{vk55}^!{vk47}+{vk49}^!{vk47}+{vk4F}^!{vk47}+{vk50}{Enter}
Send, ^!{vk47}+{vk53}^!{vk47}+{vk44}^!{vk47}+{vk47}^!{vk47}+{vk48}^!{vk47}+{vk4A}^!{vk47}+{vk4B}^!{vk47}+{vk4C}^!{vk47}+{vk4D}{Enter}
Send, ^!{vk47}+{vk42}^!{vk47}+{vk4E}{Enter}

; Micro sign
Send, ^!{vk47}{vk20}{Enter}


; =========================================
; European Extented Characters Layer
; =========================================

; base
Send, ^!{vk48}{vk37}^!{vk48}{vk38}^!{vk48}{vk39}^!{vk48}{vk30}^!{vk48}{vkDB}{Enter}
Send, ^!{vk48}{vk41}^!{vk48}{vk45}^!{vk48}{vk54}^!{vk48}{vk49}^!{vk48}{vk4F}{Enter}
Send, ^!{vk48}{vk53}^!{vk48}{vk44}^!{vk48}{vk47}^!{vk48}{vk4A}{Enter}


; Shift
Send, ^!{vk48}+{vk37}^!{vk48}+{vk38}^!{vk48}+{vk39}^!{vk48}+{vk30}{Enter}
Send, ^!{vk48}+{vk45}^!{vk48}+{vk54}^!{vk48}+{vk49}{Enter}
Send, ^!{vk48}+{vk44}^!{vk48}+{vk47}^!{vk48}+{vk4A}{Enter}


; =========================================
; latin characters with two diacritical marks
; =========================================

return
