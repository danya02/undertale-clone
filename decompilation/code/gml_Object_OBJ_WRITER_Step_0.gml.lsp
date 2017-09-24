0x000000:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x000030
0x00001C:
    call (event_user[]:int32 (var 0s))
0x000030:
    exit
