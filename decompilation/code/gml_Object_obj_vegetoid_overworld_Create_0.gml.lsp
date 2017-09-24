0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.talkedto = 0s
    self.fought = 0s
    self.image_speed = 0s
    push -5s
    if !(> 202s:flag 11s) goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    push -5s
    if !(== 7s:flag 1s) goto 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    exit
