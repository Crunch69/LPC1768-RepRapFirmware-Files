; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool v2 on Thu May 02 2019 10:56:01 GMT-0500 (Central Daylight Time)
G91               ; relative positioning
G1 Z5 F6000 S2    ; lift Z relative to current position
; G1 S1 Y-310 F6000 ; move quickly to Y axis endstop and stop there (first pass)
G1 S1 Y310 F6000 ; move quickly to Y axis endstop and stop there (first pass)
G1 Y5 F6000       ; go back a few mm
G1 S1 Y310 F720  ; move slowly to Y axis endstop once more (second pass)
; G1 S1 Y-310 F720  ; move slowly to Y axis endstop once more (second pass)
G1 Z-5 F6000 S2   ; lower Z again
G90               ; absolute positioning

