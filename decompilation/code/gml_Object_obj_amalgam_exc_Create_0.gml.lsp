0x000000:
    self.image_speed = 0s
    self.con = -1s
    self.visible = 0s
    push -5s
    if !(== 488s:flag 1s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
