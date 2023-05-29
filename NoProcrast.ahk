#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#Persistent
SetTitleMatchMode, 2
startWindowTitle := ""
; GLOBAL SETTINGS ===============================================================================================================

#Warn
#NoEnv
#SingleInstance Force

OnExit, EOF

; SCRIPT ========================================================================================================================


currNum := 1

SessionChange(true)
SetTimer, MyTimer, 1000
return

MyTimer:
    ; Input your code here (but without loop and sleep)
    Sites := ["Hacker News"]

    WinGetTitle, currWinTit, A

    isProcrast := false
    for index, element in Sites ; Enumeration is the recommended approach in most cases.
    {
        if (RegExMatch(currWinTit, element) != 0) {
            isProcrast := true
        }
    }

    If (currWinTit != startWindowTitle) {
        currNum -= 1 / (20 * 60) ; 20 min procrast
    }
    If (currWinTit = startWindowTitle) {
        currNum += 1 / (20 * 60) ; 20 min noprocrast
    }
    if (currNum > 1) {
        currNum := 1
    }
    if (currNum < 0) {
        Shutdown, 1
    }
return

; FUNCTIONS =====================================================================================================================

SessionChange(notify := true)
{
    static WTS_CURRENT_SERVER := 0
    static NOTIFY_FOR_ALL_SESSIONS := 1

    if (notify) {
        if !(DllCall("wtsapi32.dll\WTSRegisterSessionNotificationEx", "ptr", WTS_CURRENT_SERVER, "ptr", A_ScriptHwnd, "uint", NOTIFY_FOR_ALL_SESSIONS))
            throw Exception("WTSRegisterSessionNotificationEx", -1)
        OnMessage(0x02B1, "WM_WTSSESSION_CHANGE")
    } else {
        OnMessage(0x02B1, "")
        if !(DllCall("wtsapi32.dll\WTSUnRegisterSessionNotificationEx", "ptr", WTS_CURRENT_SERVER, "ptr", A_ScriptHwnd))
            throw Exception("WTSUnRegisterSessionNotificationEx", -1)
    }
    return true
}

WM_WTSSESSION_CHANGE(wParam, lParam)
{
    static WTS_SESSION_LOCK := 0x7
    static WTS_SESSION_UNLOCK := 0x8

    if (wParam = WTS_SESSION_LOCK)			; Session is "Locked"
        SetTimer, MyTimer, Off				; -> Set Timer Off
    if (wParam = WTS_SESSION_UNLOCK)		; Session is "UnLocked"
        SetTimer, MyTimer, 1000				; -> Start Timer
}

; EXIT ==========================================================================================================================

EOF:
    SessionChange(false)
ExitApp

; ===============================================================================================================================
