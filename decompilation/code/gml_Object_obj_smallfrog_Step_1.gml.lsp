0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(> global.kills 16s) goto 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    if !(== self.room 29s) goto 0x00007C
0x000068:
    push (> global.kills 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    if !(== self.room 12s) goto 0x0000B8
0x0000A4:
    push (> global.kills 0s)
    goto 0x0000BC
0x0000B8:
    push 0s
0x0000BC:
    if !pop goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
