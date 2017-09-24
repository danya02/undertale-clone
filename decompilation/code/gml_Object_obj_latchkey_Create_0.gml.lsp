0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    if !(== self.room 225s) goto 0x000060
0x000038:
    push -5s
    if !(== 452s:flag 1s) goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    if !(== self.room 222s) goto 0x00009C
0x000074:
    push -5s
    if !(== 453s:flag 1s) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    self.con = 0s
0x0000A8:
    exit
