#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
While 0 = 0
{
    If WinActive("ahk_exe firefox.exe")
    {
    WinSetTitle, A, , Bean
    } Else {
        Sleep, 100
    }
    If WinActive("ahk_exe opera.exe")
    {
    WinSetTitle, A, , Bean
    } Else {
        Sleep, 100
    }

Sleep, 3
}
return