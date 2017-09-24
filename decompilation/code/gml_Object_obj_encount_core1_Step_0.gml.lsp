0x000000:
    stog.flag[15s] = 1s
    if !(> global.encounter self.steps) goto 0x000460
0x00002C:
    if !(== global.phasing 0s) goto 0x000454
0x000040:
    if !(== global.interact 0s) goto 0x000450
0x000054:
    call (script_execute[]:int32 (var 205s) (var 40s) (var 380s) (var 340s) (var 101s))
    if !(== self.room 144s) goto 0x0000D0
0x00009C:
    call (script_execute[]:int32 (var 205s) (var 40s) (var 680s) (var 1040s) (var 101s))
0x0000D0:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000118
0x0000E4:
    call (script_execute[]:int32 (var 205s) (var 40s) (var 120s) (var 70s) (var 101s))
0x000118:
    global.encounter = 0s
    self.battlegroup = (floor[]:int32 (random[]:int32 (var 15s)))
    if !(<= self.battlegroup 15s) goto 0x000164
0x000158:
    global.battlegroup = 66s
0x000164:
    if !(<= self.battlegroup 12s) goto 0x000184
0x000178:
    global.battlegroup = 64s
0x000184:
    if !(<= self.battlegroup 9s) goto 0x0001A4
0x000198:
    global.battlegroup = 65s
0x0001A4:
    if (== self.battlegroup 4s) goto 0x0001E0
0x0001B8:
    if (== self.battlegroup 5s) goto 0x0001E0
0x0001CC:
    push (== self.battlegroup 6s)
    goto 0x0001E4
0x0001E0:
    push 1s
0x0001E4:
    if !pop goto 0x0001F4
0x0001E8:
    global.battlegroup = 68s
0x0001F4:
    if (== self.battlegroup 3s) goto 0x00021C
0x000208:
    push (== self.battlegroup 2s)
    goto 0x000220
0x00021C:
    push 1s
0x000220:
    if !pop goto 0x000230
0x000224:
    global.battlegroup = 67s
0x000230:
    if !(== self.battlegroup 1s) goto 0x000250
0x000244:
    global.battlegroup = 60s
0x000250:
    if !(== self.battlegroup 0s) goto 0x000270
0x000264:
    global.battlegroup = 59s
0x000270:
    push -5s
    if (== 8s:flag 1s) goto 0x0002A8
0x00028C:
    push -5s
    push (== 7s:flag 1s)
    goto 0x0002AC
0x0002A8:
    push 1s
0x0002AC:
    if !pop goto 0x0002BC
0x0002B0:
    call (instance_destroy[]:int32 )
0x0002BC:
    push -5s
    if !(== 426s:flag 0s) goto 0x0002E4
0x0002D8:
    global.battlegroup = 62s
0x0002E4:
    push -5s
    if !(== 426s:flag 1s) goto 0x00030C
0x000300:
    global.battlegroup = 64s
0x00030C:
    push -5s
    if !(== 426s:flag 2s) goto 0x000334
0x000328:
    global.battlegroup = 65s
0x000334:
    push -5s
    if !(== 426s:flag 3s) goto 0x00035C
0x000350:
    global.battlegroup = 66s
0x00035C:
    push -5s
    if !(== 426s:flag 4s) goto 0x000384
0x000378:
    global.battlegroup = 68s
0x000384:
    push -5s
    stog.flag[(+ 426s:flag 1s)] = 426s
    if !(== self.alldead 2s) goto 0x0003C8
0x0003BC:
    global.battlegroup = 19s
0x0003C8:
    if !(== self.alldead 1s) goto 0x00040C
0x0003DC:
    global.battlegroup = 19s
    self.alldead = 2s
    stog.flag[225s] = 1s
    goto 0x000450
0x00040C:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    if !(== self.desto 1s) goto 0x000450
0x000444:
    call (instance_destroy[]:int32 )
0x000450:
    goto 0x000460
0x000454:
    self.steps = 0s
0x000460:
    exit
