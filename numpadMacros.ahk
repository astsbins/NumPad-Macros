
#singleinstance,force
SetNumlockState, AlwaysOn ;Lock Numpad to on since numpad off has different keymappings, e.g 1 is mapped to end, 3 is mapped to PgDn

; Set Profile Names here. There are usually saved in appdata/Roaming/OpenRGB as .orp files. 
; Below are pseduo hashtables/Arrays since AutoHotkey does not seem to support the real thing
profile0 = "numpad white"
profile1 = "numpad blue"
; profile2 = "numpad green"


state = 0 ; sate keep track of which profile we are on 
cur_profile = % profile%state% ; This is how psuedo array is accessed
Run, python.exe ChangeKeyboardProfile.py %cur_profile% ,,Hide ; pass profiled name wanted into python program

return
NumLock::

    state += 1
    if (state > 1){
        state = 0
    } 
    cur_profile =  % profile%state% 
    Run, python.exe ChangeKeyboardProfile.py %cur_profile% ,,Hide
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