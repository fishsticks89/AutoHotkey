#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

	;by "uberi" - Suggested by "joedf"

Address = 8.8.8.8	;8.8.8.8 Google IP address or use www.google.com
		;using 8.8.8.8 is faster than using www.google.com, and script won't pause or stays unresponsive or even crash if offline or if internet connection goes down

TimeOut = 1000	;recommended by "joedf"

gui, add, text, x90 y65, Please Wait! Checking for Internet Connection!
gui, show, w400 h150, Checking Internet Connection!

	;CheckInternet := ping(Address, TimeOut)	;"ping(Address, TimeOut)" see function at the end of the script 

	;if CheckInternet = OffLine

if ping(Address, TimeOut) = "OffLine"	;"ping(Address, TimeOut)" see function at the end of the script 
settimer, OffLine, -10000
else
settimer, Online, -10000
return


	Online:
	gui, destroy
	msgBox, Online - Connected
	goto, guiclose
	
	OffLine:
	gui, destroy
	msgBox, OffLine - Not Connected
	goto, guiclose


guiclose:
exitapp


Ping(Address, Timeout, ByRef Data = "",Length = 0,ByRef Result = "",ByRef ResultLength = 0)
{
    NumericAddress := DllCall("ws2_32\inet_addr","AStr",Address,"UInt")
    If NumericAddress = 0xFFFFFFFF ;INADDR_NONE
        Return "OffLine"
 
    If DllCall("LoadLibrary","Str","icmp","UPtr") = 0 ;NULL
        Return "OffLine"
 
    hPort := DllCall("icmp\IcmpCreateFile","UPtr") ;open port
    If hPort = -1 ;INVALID_HANDLE_VALUE
        Return "OffLine"
 
    StructLength := 278 ;ICMP_ECHO_REPLY structure
    VarSetCapacity(Reply,StructLength)
    Count := DllCall("icmp\IcmpSendEcho","UPtr",hPort,"UInt",NumericAddress,"UPtr",&Data,"UShort",Length,"UPtr",0,"UPtr",&Reply,"UInt",StructLength,"UInt",Timeout)
    If NumGet(Reply,4,"UInt") = 11001 ;IP_BUF_TOO_SMALL
    {
        VarSetCapacity(Reply,StructLength * Count)
        DllCall("icmp\IcmpSendEcho","UPtr",hPort,"UInt",NumericAddress,"UPtr",&Data,"UShort",Length,"UPtr",0,"UPtr",&Reply,"UInt",StructLength * Count,"UInt",Timeout)
    }
    If NumGet(Reply,4,"UInt") != 0 ;IP_SUCCESS
        Return "OffLine"
    If !DllCall("icmp\IcmpCloseHandle","UInt",hPort) ;close port
        Return "OffLine"
 
    ResultLength := NumGet(Reply,12,"UShort")
    VarSetCapacity(Result,ResultLength)
    DllCall("RtlMoveMemory","UPtr",&Result,"UPtr",NumGet(Reply,16),"UPtr",ResultLength)
    Return, NumGet(Reply,8,"UInt")
}
