; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2 on Thu May 02 2019 10:56:01 GMT-0500 (Central Daylight Time)
G91                     ; relative positioning
G1 Z5 F6000 S2          ; lift Z relative to current position
; G1 S1 X-310 Y-310 F6000 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 S1 X310 Y310 F6000 ; djp edit change to make MAX endstops
G1 X5 Y5 F6000          ; go back a few mm
; G1 S1 X-310 Y-310 F720  ; move slowly to X and Y axis endstops once more (second pass)
G1 S1 X310 Y310 F720    ; djp edit change to make MAX endstops 
G90                     ; absolute positioning
G1 X152 Y152 F6000        ; go to first bed probe point and home Z
G30                     ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
G91                    ; relative positioning
G1 S2 Z5 F100          ; lift Z relative to current position
G90                    ; absolute positioning


