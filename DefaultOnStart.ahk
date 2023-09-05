#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Sleep, 50
Run, %A_ScriptDir%\LordOpener.ahk
Run, %A_ScriptDir%\Minimiser.ahk
Run, %A_ScriptDir%\Fixer.ahk
Run, %A_ScriptDir%\invite.ahk
Run, %A_ScriptDir%\title.ahk
Run, %A_ScriptDir%\battapsta.ahk
Run, %A_ScriptDir%\arrows.ahk
Run, %A_ScriptDir%\Hibernate.ahk
Sleep, 50
return