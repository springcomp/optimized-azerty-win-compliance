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

; =========================================
; Currency Symbols Layer
; =========================================

; Bitcoin symbol
Send, ^!{vk46}{vk42}{Enter}


return