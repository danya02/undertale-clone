0x000000:
    self.i = 0s
    if !(< self.i self.num) goto 0x000078
0x000024:
    stog.child[(int32 self.i)] = (instance_create[]:int32 (var 455s) self.y self.x)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000078:
    self.active = 1s
0x000084:
    exit
