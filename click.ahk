#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
x = 0
while (True) {
    if (x = 1) {
        click
    }
    Sleep, 9
}

Click::
x = x + 1
if (x = 2) {
    x = 0
}
return