#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; #Warn  ; Enable warnings to assist with detecting common errors.


; Makes selected text uppercase [Ctrl + Shift + U]
^+u::
    oCB := ClipboardAll ; save clipboard contents
    Clipboard = ; Ensure we don't catch old clipboard contents when nothing was selected.
    sleep 50
    Send, ^x
    sleep 50
    StringUpper, Clipboard, Clipboard
    SendInput ^v
    Clipboard := oCB ; return original Clipboard contents
    oCB = ; free memory (mostly usefull when you had a file or so in your Clipboard)
return

; Makes selected text lowercase [Ctrl + Shift + L]
^+l::
    oCB := ClipboardAll ; save clipboard contents
    Clipboard = ; Ensure we don't catch old clipboard contents when nothing was selected.
    sleep 50
    Send, ^x
    sleep 50
    StringLower, Clipboard, Clipboard
    SendInput ^v
    Clipboard := oCB ; return original Clipboard contents
    oCB = ; free memory (mostly usefull when you had a file or so in your Clipboard)
return