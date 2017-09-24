0x000000:
    self.image_speed = 0s
    self.image_index = 0s
    stog.alarm[0s] = 137s
    self.stage = 0s
    self.valuindex = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x00008C
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    exit
