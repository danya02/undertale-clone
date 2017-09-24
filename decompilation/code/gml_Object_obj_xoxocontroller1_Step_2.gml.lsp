0x000000:
    if !(== self.vic (instance_number[]:int32 (var 975s))) goto 0x00002C
0x000020:
    self.fvic = 1s
0x00002C:
    if !(== self.fvic 0s) goto 0x00004C
0x000040:
    self.vic = 0s
0x00004C:
    if !(== self.room 63s) goto 0x000078
0x000060:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x0000F0
0x000080:
    if !(> 1570.x 540s) goto 0x0000A8
0x000094:
    push (< 1570.x 560s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000F0
0x0000B0:
    if !(~ (bool (instance_exists[]:int32 (var 1503s)))) goto 0x0000F0
0x0000CC:
    call (instance_create[]:int32 (var 1503s) 1570.y 1570.x)
0x0000F0:
    exit
