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

; =========================================
; latin characters with two diacritical marks
; =========================================

; acute accent
Send, ^!{vk32}^!{vk43}^!{vk32}{vk34}{Enter}
Send, ^!{vk32}^!+{vk43}^!{vk32}^!+{vk34}{Enter}

; grave accent
Send, ^!{vk33}{vk34}{Enter}
Send, ^!{vk33}^!+{vk34}{Enter}

; circumflex accent
Send, {vkDD}{vk31}{vkDD}{vk32}{vkDD}{vk33}{Enter}
Send, {vkDD}^!+{vk31}{vkDD}^!+{vk32}{vkDD}^!+{vk33}{Enter}

; diaeresis
Send, +{vkDD}^!{vk55}{Enter}
Send, +{vkDD}^!+{vk55}{Enter}

; tilde
Send, ^!{vk4E}{vk34}{Enter}
Send, ^!{vk4E}^!+{vk34}{Enter}

; macron
Send, ^!{vk37}{vk32}^!{vk37}{vk33}{Enter}
Send, ^!{vk37}^!+{vk32}^!{vk37}^!+{vk33}{Enter}

; dot below
Send, ^!+{vk49}{vk34}{Enter}
Send, ^!+{vk49}^!+{vk34}{Enter}

; breve
Send, ^!{vkDE}{vk31}{Enter}
Send, ^!{vkDE}^!+{vk31}{Enter}

; inverted breve
Send, ^!+{vkDE}{vk31}^!+{vkDE}{vk33}{Enter}
Send, ^!+{vkDE}^!+{vk31}^!+{vkDE}^!+{vk33}{Enter}

; =========================================
; Currency Symbols Layer
; =========================================

; Bitcoin symbol
Send, ^!{vk46}{vk42}{Enter}


return