0x000000:
    push -5s
    if !(== 45s:flag 4s) goto 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0.25d
0x000060:
    exit
