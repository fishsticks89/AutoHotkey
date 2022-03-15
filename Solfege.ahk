#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!d::
MouseClick
Send, Do{Escape}
return
!r::
MouseClick
Send, Re{Escape}
return
!m::
MouseClick
Send, Mi{Escape}
return
!f::
MouseClick
Send, Fa{Escape}
return
!s::
MouseClick
Send, Sol{Escape}
return
!l::
MouseClick
Send, La{Escape}
return
!t::
MouseClick
Send, Ti{Escape}
return
^q::ExitApp
return