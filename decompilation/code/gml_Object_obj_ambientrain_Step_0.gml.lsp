0x000000:
    if !(== self.ok 0s) goto 0x000030
0x000014:
    push -5s
    push (== 360s:flag 1s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000218
0x000038:
    push -5s
    stog.flag[(- 361s:flag 0.02d)] = 361s
    push -5s
    stog.flag[(- 362s:flag 0.02d)] = 362s
    push -5s
    if !(< 361s:flag 0s) goto 0x0000C0
0x0000AC:
    stog.flag[361s] = 0s
0x0000C0:
    push -5s
    if !(< 362s:flag 0s) goto 0x0000F0
0x0000DC:
    stog.flag[362s] = 0s
0x0000F0:
    push -5s
    push 361s:flag
    call (caster_set_volume[]:int32 -5s 363s:flag)
    push -5s
    push 362s:flag
    call (caster_set_volume[]:int32 -5s 364s:flag)
    push -5s
    if !(< 361s:flag 0.1d) goto 0x000190
0x00016C:
    push -5s
    push (< 362s:flag 0.1d)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x000218
0x000198:
    stog.flag[360s] = 0s
    push -5s
    call (caster_free[]:int32 363s:flag)
    push -5s
    call (caster_free[]:int32 364s:flag)
    stog.flag[363s] = -1s
    stog.flag[364s] = -1s
    call (instance_destroy[]:int32 )
0x000218:
    push -5s
    if !(== 360s:flag 1s) goto 0x000248
0x000234:
    push (== self.room 105s)
    goto 0x00024C
0x000248:
    push 0s
0x00024C:
    if pop goto 0x00028C
0x000250:
    if (== self.room 108s) goto 0x00028C
0x000264:
    if (== self.room 104s) goto 0x00028C
0x000278:
    push (== self.room 110s)
    goto 0x000290
0x00028C:
    push 1s
0x000290:
    if !pop goto 0x00038C
0x000294:
    push -5s
    if !(> 361s:flag 0.08d) goto 0x0002E4
0x0002B8:
    push -5s
    stog.flag[(- 361s:flag 0.02d)] = 361s
0x0002E4:
    push -5s
    if !(< 362s:flag 0.5d) goto 0x000334
0x000308:
    push -5s
    stog.flag[(+ 362s:flag 0.02d)] = 362s
0x000334:
    push -5s
    push 361s:flag
    call (caster_set_volume[]:int32 -5s 363s:flag)
    push -5s
    push 362s:flag
    call (caster_set_volume[]:int32 -5s 364s:flag)
0x00038C:
    push -5s
    if !(== 360s:flag 1s) goto 0x0003BC
0x0003A8:
    push (== self.room 106s)
    goto 0x0003C0
0x0003BC:
    push 0s
0x0003C0:
    if pop goto 0x0003EC
0x0003C4:
    if (== self.room 107s) goto 0x0003EC
0x0003D8:
    push (== self.room 109s)
    goto 0x0003F0
0x0003EC:
    push 1s
0x0003F0:
    if !pop goto 0x0004EC
0x0003F4:
    push -5s
    if !(> 362s:flag 0.02d) goto 0x000444
0x000418:
    push -5s
    stog.flag[(- 362s:flag 0.02d)] = 362s
0x000444:
    push -5s
    if !(< 361s:flag 0.5d) goto 0x000494
0x000468:
    push -5s
    stog.flag[(+ 361s:flag 0.02d)] = 361s
0x000494:
    push -5s
    push 361s:flag
    call (caster_set_volume[]:int32 -5s 363s:flag)
    push -5s
    push 362s:flag
    call (caster_set_volume[]:int32 -5s 364s:flag)
0x0004EC:
    exit
