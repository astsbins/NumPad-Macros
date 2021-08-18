
#singleinstance,force

SetNumlockState, AlwaysOn
profiles := ["white","blue", "teal","green"]
profile0 = "white"
profile1 = "blue"
profile2 = "green"
state = 0
Run, python.exe ChangeNumpadColor.py white,,Hide
colour = % profile%state% 
return
; MsgBox %colour%
; Run, python.exe ChangeNumpadColor.py %colour% ,,Hide
NumLock::
; MsgBox % profile%state%
    state += 1
    if (state > 2){
        state = 0
    } 
    colour =  % profile%state% 
    ; MsgBox  state %colour%
    Run, python.exe ChangeNumpadColor.py %colour% ,,Hide
    return

Numpad1::
    mapping0 = 1
    mapping1 = num1prof1
    mapping2 = num1prof2
    send, % mapping%state%
    return

Numpad2::
    mapping0 = 2
    mapping1 = num2prof1
    mapping2 = num2prof2
    send, % mapping%state%
    return



; if (state = 1 ){
;     Run, cmd /c ChangeNumpadColor.py blue ,,Hidemapping
;     Numpad1::
;     send, 1


; return
; } Else {
;     Numpad1::
;     send, not 1
;     Run, cmd /c ChangeNumpadColor.py white ,,Hide
;     return
; }
; test