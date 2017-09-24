0x000000:
    self.vspeed = (- self.vspeed)
    if !(== self.bounced 1s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    self.friction = 0.04d
0x000048:
    exit
