#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
tab::
Loop, Parse, clipboard, Enter 
{
    Send, SubStr(%A_LoopField%, 1, StrLen(%A_LoopField%) - 1)
}