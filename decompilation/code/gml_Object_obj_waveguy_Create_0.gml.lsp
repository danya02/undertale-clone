0x000000:
    self.check = (random[]:int32 (var 30s))
    if !(< self.check 29s) goto 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    self.image_speed = 0s
0x000044:
    exit
