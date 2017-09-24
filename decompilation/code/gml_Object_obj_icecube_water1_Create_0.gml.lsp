0x000000:
    self.image_speed = 0.1d
    if !(== self.room 82s) goto 0x00005C
0x000028:
    call (path_start[]:int32 (var 1s) (var 0s) (var 1.5d) (var 33s))
0x00005C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    exit
