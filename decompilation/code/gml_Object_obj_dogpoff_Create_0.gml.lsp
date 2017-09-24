0x000000:
    self.image_speed = 0s
    if !(>= global.plot 64s) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    self.poffed = 0s
0x000038:
    exit
