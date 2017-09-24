0x000000:
    push -5s
    if !(== 7s:flag 1s) goto 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    self.image_speed = 0.15d
    self.hspeed = 2s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    exit
