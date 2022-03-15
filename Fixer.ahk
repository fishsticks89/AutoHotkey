#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
x := 5
y := 5
While 0 = 0
{
	CoordMode Mouse, Screen
	MouseGetPos, x, y
	Sleep, 5
}
return
#If x = 0
MButton::
Send, ^#{Left}
return

#If x = 2
MButton::
Send, ^#{Left}
return

#If (x = 1919 and y < -1800)
MButton:: 
Send, ^#{Right}
return

#If (x = 1919 and y > 0)
MButton:: 
Send, ^#{Right}
return

#If x = 2218 || x = 2879
MButton:: 
Send, ^#{Right}
return

#If x = 2881
MButton:: 
Send, ^#{Right}
return

#If 0 = 0
Launch_App1::
CoordMode, Mouse, Screen
; MouseMove, 20, 3000
; click
Send, {LWin}
Sleep, 140
Send, {tab}
Sleep, 90
Send, {down}
Sleep, 90
Send, {down}
Sleep, 90
Send, {down}
Sleep, 90
Send, {enter}
Sleep, 90
Send, {enter}
if ahk_pid = 16532
{
Send, {LWin}
Sleep, 120
Send, {LWin}
Sleep, 200
Send, {tab}
Sleep, 120
Send, {down}
Sleep, 120
Send, {down}
Sleep, 120
Send, {down}
Sleep, 120
Send, {enter}
Sleep, 120
Send, {enter}
}
return

Launch_Mail::
Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
Sleep, 200
Run, https://mail.hw.com/owa/
Sleep, 80
Send, ^{tab}
Sleep, 40
Send, ^w
return

; Launch_Media::
; Run, C:\Program Files\WavesNx\bin\WavesNxApp.exe
; Sleep, 30
; Coordmode, Mouse, Screen
; MousegetPos, x, y
; WinActivate, C:\Program Files\WavesNx\bin\WavesNxApp.exe
; Sleep, 2
; Coordmode, Mouse, Window
; MouseMove, 446, 376
; Sleep, 9000
; WinMinimize, A
; return

; !Launch_Media::
; DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
; return

#IfWinExist, ahk_exe Zoom.exe
~!q::
WinActivate, ahk_exe Zoom.exe
Sleep, 1000
Send, {enter}
return

#Down::
WinMinimize, A
return