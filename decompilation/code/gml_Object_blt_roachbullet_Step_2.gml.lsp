0x000000:
    if !(< self.hspeed 0s) goto 0x000020
0x000014:
    self.image_angle = 180s
0x000020:
    if !(< global.turntimer 1s) goto 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    exit
