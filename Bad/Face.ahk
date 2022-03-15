#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Num = 0
!2::
click
Coordmode, Mouse, Screen
Mousemove, 1700, -950
Click, right
Mousemove, 1740, -770
click
Sleep, 600
Send, Robot
Send, %Num%
Send, {Enter}
MouseMove 400, -700
Click
yloc = -500
MouseMove 400, %yloc%
PixelGetColor, color, 530, -886
While (color != 0xFFFFF)
{
	MouseMove, 400, %yloc%
	click
	yloc = %yloc% - 1
	Sleep, 1000
	PixelGetColor, color, 530, -886
}
return
^q::
ExitApp
return