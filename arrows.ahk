#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
#MaxHotkeysPerInterval 200

#persistent
SetCapsLockState, AlwaysOff

#If GetKeyState("CapsLock", "P")
a::Left
s::Down
w::Up
d::Right
Enter::Ctrl
#If

*CapsLock::
KeyWait, CapsLock
IF A_ThisHotkey = *CapsLock
    Send, {Escape}
Return