#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Home::
Send, Down
return

DetectHiddenWindows, On

Groupadd, noMin, Renderer ‎- Remote Desktop
GroupAdd, mOne, ahk_exe FL64.exe
GroupAdd, mOne, ahk_exe Zoom.exe

title = ba

x := 5
y := 5
While 0 = 0
{
	CoordMode Mouse, Screen
	MouseGetPos, x, y
	Sleep, 5
}
return

#IfWinNotActive noMin
End::
XButton1::
WinGetTitle, title, A
If InStr(title, "Youtube") != 0 {
Send, {Space}
Sleep, 100
}
WinMinimize A
return

#IfWinNotActive, ahk_group mOne
XButton2::Space
return
#IfWinActive, ahk_exe FL64.exe
XButton2::Ctrl
return
#IfWinActive, ahk_exe Zoom.exe
XButton2::!a
return

#If y = 0 ||  y = -1800
MButton::
    DetectHiddenWindows, On
	;MsgBox, %title%
    PostMessage, 0x0112, 0xF120,,, %title%
return

