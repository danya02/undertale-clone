0x000000:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x000038
0x00001C:
    call (event_perform[]:int32 (var 10s) (var 7s))
0x000038:
    exit
