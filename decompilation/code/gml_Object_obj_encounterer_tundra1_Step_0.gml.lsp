0x000000:
    if !(> global.encounter self.steps) goto 0x000310
0x000018:
    if !(== global.phasing 0s) goto 0x000304
0x00002C:
    if !(== global.interact 0s) goto 0x000300
0x000040:
    call (script_execute[]:int32 (var 203s) (var 16s) (var 280s) (var 140s) (var 101s))
    global.encounter = 0s
    self.battlegroup = (floor[]:int32 (random[]:int32 (var 15s)))
    if !(>= self.battlegroup 0s) goto 0x0000C0
0x0000B4:
    global.battlegroup = 30s
0x0000C0:
    if !(>= self.battlegroup 8s) goto 0x0000E0
0x0000D4:
    global.battlegroup = 32s
0x0000E0:
    push -5s
    if !(== 70s:flag 0s) goto 0x000108
0x0000FC:
    global.battlegroup = 30s
0x000108:
    push -5s
    if !(== 70s:flag 1s) goto 0x000130
0x000124:
    global.battlegroup = 32s
0x000130:
    push -5s
    if !(== 70s:flag 2s) goto 0x000160
0x00014C:
    push (< global.plot 42s)
    goto 0x000164
0x000160:
    push 0s
0x000164:
    if !pop goto 0x000188
0x000168:
    global.battlegroup = (choose[]:int32 (var 32s) (var 30s))
0x000188:
    push -5s
    if !(== 70s:flag 2s) goto 0x0001B8
0x0001A4:
    push (>= global.plot 42s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x0001E0
0x0001C0:
    global.battlegroup = 24s
    stog.flag[70s] = 4s
0x0001E0:
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x000210
0x0001F4:
    push -5s
    push (== 70s:flag 2s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x000238
0x000218:
    global.battlegroup = 24s
    stog.flag[70s] = 4s
0x000238:
    push -5s
    if !(< 70s:flag 2s) goto 0x000278
0x000254:
    push -5s
    stog.flag[(+ 70s:flag 1s)] = 70s
0x000278:
    if !(== self.alldead 2s) goto 0x000298
0x00028C:
    global.battlegroup = 19s
0x000298:
    if !(== self.alldead 1s) goto 0x0002DC
0x0002AC:
    stog.flag[222s] = 1s
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x000300
0x0002DC:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x000300:
    goto 0x000310
0x000304:
    self.steps = 0s
0x000310:
    exit
