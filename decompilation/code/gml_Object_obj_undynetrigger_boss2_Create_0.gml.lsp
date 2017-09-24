0x000000:
    self.image_xscale = 40s
    self.con = 0s
    if !(== global.plot 121s) goto 0x000040
0x00002C:
    push (== global.entrance 1s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000070
0x000048:
    self.save = (instance_create[]:int32 (var 1351s) (var 660s) (var 220s))
0x000070:
    if !(> global.plot 121s) goto 0x0000AC
0x000084:
    self.save = (instance_create[]:int32 (var 1351s) (var 660s) (var 220s))
0x0000AC:
    if !(== global.entrance 2s) goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    if !(> global.plot 121s) goto 0x0000EC
0x0000E0:
    call (instance_destroy[]:int32 )
0x0000EC:
    self.musout = 0s
0x0000F8:
    exit
