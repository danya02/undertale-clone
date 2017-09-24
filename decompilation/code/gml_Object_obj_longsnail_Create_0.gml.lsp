0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 180s
    self.talkedto = 0s
    self.image_speed = 0s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    exit
