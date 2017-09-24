0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0.2d
    push -5s
    if !(>= 493s:flag 12s) goto 0x000070
0x000054:
    push -5s
    push (== 7s:flag 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x000118
0x000078:
    if !(== self.room 219s) goto 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    if !(== self.room 232s) goto 0x0000B8
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    if !(== self.room 231s) goto 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    if !(== self.room 216s) goto 0x0000F8
0x0000EC:
    call (instance_destroy[]:int32 )
0x0000F8:
    if !(== self.room 235s) goto 0x000118
0x00010C:
    call (instance_destroy[]:int32 )
0x000118:
    if !(== self.room 131s) goto 0x000184
0x00012C:
    if (< (scr_murderlv[]:int32 ) 11s) goto 0x000170
0x000140:
    push -5s
    if (== 27s:flag 1s) goto 0x000170
0x00015C:
    push (> global.plot 119s)
    goto 0x000174
0x000170:
    push 1s
0x000174:
    if !pop goto 0x000184
0x000178:
    call (instance_destroy[]:int32 )
0x000184:
    exit
