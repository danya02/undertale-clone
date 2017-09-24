0x000000:
    if !(> global.encounter self.steps) goto 0x0002C8
0x000018:
    if !(== global.phasing 0s) goto 0x0002BC
0x00002C:
    if !(== global.interact 0s) goto 0x0002B8
0x000040:
    call (script_execute[]:int32 (var 204s) (var 18s) (var 380s) (var 640s) (var 101s))
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x0000A4
0x000088:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000E0
0x0000AC:
    call (script_execute[]:int32 (var 204s) (var 18s) (var 50s) (var 120s) (var 101s))
0x0000E0:
    global.encounter = 0s
    self.battlegroup = (floor[]:int32 (random[]:int32 (var 15s)))
    if !(< self.battlegroup 15s) goto 0x00012C
0x000120:
    global.battlegroup = 54s
0x00012C:
    if !(< self.battlegroup 10s) goto 0x00014C
0x000140:
    global.battlegroup = 55s
0x00014C:
    if !(< self.battlegroup 4s) goto 0x00016C
0x000160:
    global.battlegroup = 41s
0x00016C:
    push -5s
    if !(== 358s:flag 0s) goto 0x000194
0x000188:
    global.battlegroup = 41s
0x000194:
    push -5s
    if !(== 358s:flag 1s) goto 0x0001BC
0x0001B0:
    global.battlegroup = 42s
0x0001BC:
    push -5s
    if !(== 358s:flag 2s) goto 0x0001E4
0x0001D8:
    global.battlegroup = 54s
0x0001E4:
    push -5s
    if !(== 358s:flag 3s) goto 0x00020C
0x000200:
    global.battlegroup = 55s
0x00020C:
    push -5s
    stog.flag[(+ 358s:flag 1s)] = 358s
    if !(== self.alldead 2s) goto 0x000250
0x000244:
    global.battlegroup = 19s
0x000250:
    if !(== self.alldead 1s) goto 0x000294
0x000264:
    stog.flag[223s] = 1s
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x0002B8
0x000294:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x0002B8:
    goto 0x0002C8
0x0002BC:
    self.steps = 0s
0x0002C8:
    exit
