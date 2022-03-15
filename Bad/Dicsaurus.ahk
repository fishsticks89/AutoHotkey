#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
!s::
Send, ^c
Run, https://www.thesaurus.com/
Sleep, 1000
Send, ^v {Enter}
return
!m::
Send, ^c
Run, https://www.dictionary.com/
Sleep, 1000
Send, ^v {Enter}
return