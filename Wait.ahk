#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Prompt

win = no
while 1 = 1
{
	WinGetTitle, win, A
	if win = Dell Mobile Connect
	{
		Msgbox, THINK BEFORE YOU TEXT
		Sleep, 120000
	}
	Sleep, 50
}
return