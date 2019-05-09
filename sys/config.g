; Configuration file for Duet WiFi (firmware version 1.21)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2 on Thu May 02 2019 10:56:01 GMT-0500 (Central Daylight Time)

; General preferences
G90                                      ; Send absolute coordinates...
M83                                      ; ...but relative extruder moves

; Network
M552 S0                                  ; Disable network

; Drives
M569 P0 S1                               ; Drive 0 goes forwards
M569 P1 S1                               ; Drive 1 goes forwards
M569 P2 S1                               ; Drive 2 goes forwards
M569 P3 S1                               ; Drive 3 goes forwards
M350 X32 Y32 I0                          ; Configure microstepping without interpolation
M350 Z16 E16 I1                          ; Configure microstepping with interpolation
M92 X160.00 Y160.00 Z1600.00 E195.54     ; Set steps per mm
M566 X900.00 Y900.00 Z12.00 E120.00      ; Set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z180.00 E1200.00  ; Set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E250.00      ; Set accelerations (mm/s^2)
M906 X800.00 Y800.00 Z800.00 E800.00 I30 ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                  ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                         ; Set axis minima
M208 X302 Y302 Z290 S0                   ; Set axis maxima

; Endstops
M574 X1 Y1 S0                            ; Set active low endstops

; Z-Probe
M574 Z1 S2                               ; Set endstops controlled by probe
M558 P8 I1 R0.4 H2 F400 T6000            ; Suggestions from Idris at PP, change to more senstive setting, reduce travel and speed
; M558 P5 I1 R0.4 H5 F600 T600           ; Set Z probe type to effector and the dive height + speeds
G31 P500 X0 Y0 Z0.20                     ; Set Z probe trigger value, offset and trigger height
M557 X0:300 Y0:300 S75                  ; Define mesh grid

; ESTOP SWITCHES
M581 T0 E1 S0 C0                           ; emergency stop on trigger, E0 switch, falling edge, apply at all times

; Heaters
M305 P0 T100000 B4100 R4700              ; Set thermistor + ADC parameters for heater 0
M304 H0 P97.7 I4.537 D166.2              ; djp add results from PID tuning
M143 H0 S120                             ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B4725 C7.060000e-8 R4700 ; Set thermistor + ADC parameters for heater 1
M304 H1 P24.1 I1.059 D52.3               ; djp add results from PID tuning
M143 H1 S280                             ; Set temperature limit for heater 1 to 280C


; Fans
M106 P0 H-1                              ; Set fan 0 value, PWM signal inversion and frequency. 
; Thermostatic control is turned on
; M106 P1 S1 I0 F500 H1 T45                ; Set fan 1 value, PWM signal inversion and frequency. 
; Thermostatic control is turned on

; Tools
M563 P0 D0 H1                            ; Define tool 0
G10 P0 X0 Y0 Z0                          ; Set tool 0 axis offsets
G10 P0 R0 S0                             ; Set initial tool 0 active and standby temperatures to 0C

; Automatic saving after power loss is not enabled

; Custom settings are not configured
M918 P1 E4 F1000000                      ; enable the LCD 
; https://duet3d.dozuki.com/Wiki/Gcode#Section_M918_Configure_direct_connect_display
