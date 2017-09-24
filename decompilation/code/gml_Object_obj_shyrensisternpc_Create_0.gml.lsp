0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    self.buffer = 0s
    self.talkedto = 0s
    call (scr_depth[]:int32 )
0x000088:
    exit
