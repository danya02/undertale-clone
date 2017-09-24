0x000000:
    self.i = 0s
    if !(< self.i 4s) goto 0x0000B8
0x000020:
    self.sug = (instance_create[]:int32 (var 1178s) self.y self.x)
    push self.i
    stog.image_index* = (int32 self.sug)
    push self.image_angle
    stog.image_angle* = (int32 self.sug)
    push self.ang
    stog.ang* = (int32 self.sug)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000B8:
    call (instance_destroy[]:int32 )
0x0000C4:
    exit
