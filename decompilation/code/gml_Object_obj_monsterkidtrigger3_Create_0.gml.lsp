0x000000:
    if !(> global.plot 113s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    exit
0x000024:
    self.con = 0s
    self.mkid = (instance_create[]:int32 (var 1115s) self.y (+ self.x 20s))
    push 0s
    stog.image_speed* = (int32 self.mkid)
    self.image_yscale = 10s
    self.numero = 0s
    push -5s
    if !(> 90s:flag 0s) goto 0x0000B8
0x0000AC:
    self.numero = 1s
0x0000B8:
    if !(== global.entrance 2s) goto 0x0000E0
0x0000CC:
    stog.alarm[2s] = 2s
0x0000E0:
    exit
