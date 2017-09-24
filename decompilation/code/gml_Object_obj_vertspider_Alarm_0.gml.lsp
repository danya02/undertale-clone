0x000000:
    if !(== self.move 1s) goto 0x0000BC
0x000014:
    self.hspeed = (choose[]:int32 (var 1s) (var -1s))
    if !(== 360.turnamt 10s) goto 0x000078
0x000048:
    self.hspeed = (choose[]:int32 (var 1.5d) (var -1.5d))
0x000078:
    if !(== 360.turnamt 16s) goto 0x0000BC
0x00008C:
    self.hspeed = (choose[]:int32 (var 1.5d) (var -1.5d))
0x0000BC:
    exit
