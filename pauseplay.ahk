#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
x := 0
y := 0
~Media_Next::
~Media_Prev::
~Media_Stop::
~Volume_Mute::
~Media_Play_Pause::
Sleep, 30
CoordMode Mouse, Screen
MouseGetPos, x, y
MouseMove, 503, 238
Click
Sleep, 10
WinMinimize, A
CoordMode Mouse, Screen
MouseMove, x, y
return