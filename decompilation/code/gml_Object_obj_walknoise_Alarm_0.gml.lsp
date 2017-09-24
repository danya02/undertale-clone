0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0000CC
0x000018:
    if (< 1570.xprevious 1570.x) goto 0x000058
0x000030:
    if (== global.facing 1s) goto 0x000058
0x000044:
    push (== 1569.right 1s)
    goto 0x00005C
0x000058:
    push 1s
0x00005C:
    if !pop goto 0x000098
0x000060:
    if !(> 1570.x self.x) goto 0x000094
0x000078:
    call (caster_set_volume[]:int32 (var 1s) self.mynoise)
0x000094:
    goto 0x0000B4
0x000098:
    call (caster_set_volume[]:int32 (var 0s) self.mynoise)
0x0000B4:
    stog.alarm[0s] = 6s
    goto 0x0000E8
0x0000CC:
    call (caster_set_volume[]:int32 (var 0s) self.mynoise)
0x0000E8:
    push -5s
    stog.flag[(+ 47s:flag 1s)] = 47s
0x00010C:
    exit
