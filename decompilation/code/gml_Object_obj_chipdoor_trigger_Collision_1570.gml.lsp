0x000000:
    if !(== self.room 148s) goto 0x000088
0x000014:
    push -5s
    if !(== 374s:flag 1s) goto 0x000088
0x000030:
    push -5s
    if !(== 375s:flag 1s) goto 0x000088
0x00004C:
    if !(< global.plot 133s) goto 0x000088
0x000060:
    if !(== global.interact 0s) goto 0x000088
0x000074:
    push (== self.con 0s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000D0
0x000090:
    global.interact = 1s
    call (caster_pause[]:int32 global.currentsong)
    self.con = 1s
    stog.alarm[4s] = 30s
0x0000D0:
    if !(== self.room 171s) goto 0x000158
0x0000E4:
    push -5s
    if !(== 399s:flag 1s) goto 0x000158
0x000100:
    push -5s
    if !(== 400s:flag 1s) goto 0x000158
0x00011C:
    if !(< global.plot 164s) goto 0x000158
0x000130:
    if !(== global.interact 0s) goto 0x000158
0x000144:
    push (== self.con 0s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x0001A0
0x000160:
    global.interact = 1s
    call (caster_pause[]:int32 global.currentsong)
    self.con = 1s
    stog.alarm[4s] = 30s
0x0001A0:
    exit
