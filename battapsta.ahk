﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
GroupAdd, nopaste, ahk_exe Inventor.exe
GroupAdd, nopaste, ahk_exe Zoom.ahk_exe

#IfWinNotActive ahk_group nopaste
!v::
SendRaw, %clipboard%
return