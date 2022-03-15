#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Hotstring EndChars c r
endx := 0
endy := 0
::--::
Coordmode, Pixel, Screen
PixelSearch, endx, endy, 0, 1079, 2879, 1801, B72525
Coordmode, Mouse, Screen
Mousemove, endx, endy
click
Mousemove, endx, endy + 32 
return