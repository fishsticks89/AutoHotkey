#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive, ahk_exe javaw.exe
!s::
SendRaw, /
Sleep, 100
Send, party invite oSigma
Sleep, 50
Send, {Enter}
return
!m::
SendRaw, /
Sleep, 100
Send, party invite MCskillz777
Sleep, 50
Send, {Enter}
return
!j::
SendRaw, /
Sleep, 100
Send, party invite Volcon_Fire
Sleep, 50
Send, {Enter}
return
!r::
SendRaw, /
Sleep, 100
Send, party invite ReallyNotSomeOne
Sleep, 50
Send, {Enter}
return
!d::
SendRaw, /
Sleep, 100
Send, party disband
return