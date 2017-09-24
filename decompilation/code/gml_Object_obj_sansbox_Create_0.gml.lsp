0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    if !(== self.room 219s) goto 0x00004C
0x000038:
    push (< (scr_murderlv[]:int32 ) 16s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    if !(== self.room 231s) goto 0x000088
0x000074:
    push (< (scr_murderlv[]:int32 ) 16s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    if !(== self.room 183s) goto 0x0000C4
0x0000B0:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    exit
