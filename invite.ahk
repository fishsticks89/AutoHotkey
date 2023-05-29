#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

#IfWinActive, ahk_exe javaw.exe
!s::
SendRaw, /
Sleep, 100
Send, party invite SigmaError{Enter}
return
!m::
SendRaw, /
Sleep, 100
Send, party invite MCskillz777{Enter}
return
!r::
SendRaw, /
Sleep, 100
Send, party invite ReallyNotSomeOne{Enter}
return
!d::
SendRaw, /
Sleep, 100
Send, party disband
return