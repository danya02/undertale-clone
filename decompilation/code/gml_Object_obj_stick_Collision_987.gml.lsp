0x000000:
    if !(== self.broken 0s) goto 0x000030
0x000014:
    push -5s
    push (== 275s:flag 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000F8
0x000038:
    self.broken = 1s
    self.image_index = 1s
    stog.flag[47s] = 2s
    push -5s
    if !(< 275s:flag 1s) goto 0x000094
0x000080:
    stog.flag[275s] = 1s
0x000094:
    call (caster_set_panning[]:int32 (var -0.8d) self.snap)
    call (caster_play[]:int32 (var 0.9d) (var 1s) self.snap)
    stog.alarm[2s] = 80s
0x0000F8:
    exit
