#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
!t::
Send, ^c
; 
Sleep, 100
; 
Run, https://www.thesaurus.com/browse/%Clipboard%?s=t
; 
return
; 
!m::
; 
Send, ^c
; 
Sleep, 100
; 
Run, https://www.dictionary.com/browse/%Clipboard%?s=t
; 
return