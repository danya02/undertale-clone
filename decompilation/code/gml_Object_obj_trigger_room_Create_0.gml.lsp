0x000000:
    if !(== self.room 88s) goto 0x000034
0x000014:
    if !(> global.plot 106s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    if !(== self.room 131s) goto 0x00005C
0x000048:
    push (> global.plot 118s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    if !(== self.room 131s) goto 0x000090
0x000084:
    self.image_yscale = 10s
0x000090:
    if !(== self.room 116s) goto 0x0000B0
0x0000A4:
    self.image_yscale = 20s
0x0000B0:
    if !(== self.room 154s) goto 0x0000D0
0x0000C4:
    self.image_yscale = 5s
0x0000D0:
    if !(== self.room 154s) goto 0x0000F8
0x0000E4:
    push (> global.plot 134s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    self.con = 0s
0x000118:
    exit
