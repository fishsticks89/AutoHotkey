#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; HELLO, poeple who want info about making a second keyboard, using luamacros!

; Here's my LTT video about how I use the 2nd keyboard with Luamacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg

; And Tom's video, which unfortunately does not have info on how to actually DO it: https://youtu.be/lIFE7h3m40U?t=16m9s

; If you have never used AutoHotKey, you must take this tutorial before proceeding!
; https://autohotkey.com/docs/Tutorial.htm

; So you will need luamacros, of course.
; Luamacros: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794
; AutohotKey: https://autohotkey.com/

; However, I no longer use luamacros, because I believe interecept.exe is even better! My current code is available in "ALL_MULTIPLE_KEYBOARD_ASSIGNMENTS.ahk"

; Lots of other explanatory videos other AHK scripts can be found on my youtube channel! https://www.youtube.com/user/TaranVH/videos 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;-------------2ND KEYBOARD USING LUAMACROS-----------------

#IfWinActive ahk_exe Adobe Premiere Pro.exe ;---EVERYTHING BELOW THIS LINE WILL ONLY WORK INSIDE PREMIERE PRO. But you can change this to anything you like. You can use Window Spy to determine the ahk_exe of any program, so that your macros will only work when and where you want them to.

;There is no code here. T'was just an example.

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.

asdf = 0

~F24::
FileRead, key, C:\Users\ebarr_2y3vyla\Desktop\AutoHotkey\Lua\keypressed.txt
; ToolTip, %key% ;<--- this function will just launch a quick tooltip that shows you what key you pressed. OPTIONAL.
/*
If (%key% = "o")
	preset("o")
else if(key = "p")
	preset("p") 
else if(key = "i")
	preset("i") 
else if (key = "leftbracket")
	preset("leftbracket") 
else if(key = "rightbracket")
	preset("rightbracket")
else if (key = "y")
	preset("y") 
else if(key = "u")
	preset("u")
else if(key = "m")
	preset("m")
else if(key = "j")
	preset("j")
else if(key = "n")
	preset("n")
else if(key = "comma")
	preset("comma")
else if(key = "h")
	preset("h")
else if(key = "k")
	preset("k")

else if(key = "period")
	preset("period")
else if(key = "slash")
	preset("slash")
else if(key = "singlequote")
	preset("singlequote")

else if(key = "semicolon")
	preset("semicolon")
else if(key = "l")
	preset("l")

else if(key = "F6")
	preset("F6")
else if(key = "F7")
	preset("F7")
else if(key = "F8")
	preset("F8")
else if(key = "F9")
	preset("F9")
else if(key = "F10")
	preset("F10")
else if(key = "F11")
	preset("F11")
else if(key = "F12")
	preset("F12")
else if(key = "F5")
	preset("F5")

;[[[[[[[[begin transitions]]]]]]]]]]]]

else if (key = "insert") ;FLASH TRANSITIONS
	preset("impact flash long") ;it turns out you can SAVE transition presets from the effect controls triple line mnu button. But only cross dissolve and 3rd party transitions. I use filmimpact.net and red giant universe transitions. Lot of good free ones!
else if(key = "home") 
	preset("impact flash med")
else if(key = "pageup")
	preset("impact flash short")
else if(key = "delete") ;DISSOLVE TRANSITIONS
	preset("cross dissolve long")
else if(key = "end")
	preset("cross dissolve med")
else if(key = "pagedown")
	preset("cross dissolve short")
else if(key = "q") ;WIPE transitions
	recallTransition(20)
else if(key = "w")
	recallTransition(21)
else if(key = "e")
	recallTransition(22)
else if(key = "a")
	recallTransition(23)
; else if(key = "s")
; recallTransition(??) ; iris
else if(key = "d")
	recallTransition(24)
else if(key = "z")
	recallTransition(25)
else if(key = "x")
	recallTransition(26)
else if(key = "c")
	recallTransition(27)

else if(key = "minus")
	audioMonoMaker(0)
else if(key = "equals")
	audioMonoMaker(1)


else if(key = "r")
	copy(1)
else if(key = "f")
	copy(2)
else if(key = "v")
	copy(3)

else if(key = "t")
	paste(1)
else if(key = "g")
	paste(2)
else if(key = "b")
	paste(3)

else if(key = "up") ;impact push transitions - fun fact, you can SAVE TRANSITION PRESETS if they are cross dissolve or from a 3rd party. In the effect controls triple line menu.
	preset("push up")
else if(key = "left")
	preset("push left")
else if(key = "down")
	preset("push down")
else if(key = "right")
	preset("push right")

else if(key = "enter")
Send ^!e ;in premiere, set this (CTRL ALT E) to "remove effects"

else if(key = "num0") ;just mirroring the normal numpad - IDK how else to do this.
	Send {Numpad0}
else if(key = "num1")
	Send {Numpad1}
else if(key = "num2")
	Send {Numpad2}
else if(key = "num3")
	Send {Numpad3}
else if(key = "num4")
	Send {Numpad4}
else if(key = "num5")
	Send {Numpad5}
else if(key = "num6")
	Send {Numpad6}
else if(key = "num7")
	Send {Numpad7}
else if(key = "num8")
	Send {Numpad8}
else if(key = "num9")
	Send {Numpad9}
else if(key = "numDiv")
	Send {NumpadDiv}
else if(key = "numMult")
	Send {NumpadMult}
*/
; asdf = preset(%key%)

if (key = "e")
{
    Send, #.
}
; Msgbox, %key%
Return 

Preset(parameter)
{
	Msgbox, %parameter%
}
