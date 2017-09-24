0x000000:
    if !(> global.encounter self.steps) goto 0x000338
0x000018:
    if !(== global.phasing 0s) goto 0x00032C
0x00002C:
    if !(== global.interact 0s) goto 0x000328
0x000040:
    call (script_execute[]:int32 (var 205s) (var 40s) (var 380s) (var 340s) (var 101s))
    if !(== self.room 144s) goto 0x0000BC
0x000088:
    call (script_execute[]:int32 (var 205s) (var 40s) (var 680s) (var 1040s) (var 101s))
0x0000BC:
    global.encounter = 0s
    self.battlegroup = (floor[]:int32 (random[]:int32 (var 15s)))
    if !(< self.battlegroup 15s) goto 0x000108
0x0000FC:
    global.battlegroup = 50s
0x000108:
    if !(< self.battlegroup 10s) goto 0x000128
0x00011C:
    global.battlegroup = 78s
0x000128:
    if !(< self.battlegroup 6s) goto 0x000148
0x00013C:
    global.battlegroup = 77s
0x000148:
    push -5s
    if (== 8s:flag 1s) goto 0x000180
0x000164:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000184
0x000180:
    push 1s
0x000184:
    if !pop goto 0x000194
0x000188:
    call (instance_destroy[]:int32 )
0x000194:
    push -5s
    if !(== 408s:flag 0s) goto 0x0001BC
0x0001B0:
    global.battlegroup = 51s
0x0001BC:
    push -5s
    if !(== 408s:flag 1s) goto 0x0001E4
0x0001D8:
    global.battlegroup = 50s
0x0001E4:
    push -5s
    if !(== 408s:flag 2s) goto 0x00020C
0x000200:
    global.battlegroup = 52s
0x00020C:
    push -5s
    if !(== 408s:flag 3s) goto 0x000234
0x000228:
    global.battlegroup = 77s
0x000234:
    push -5s
    if !(== 408s:flag 4s) goto 0x00025C
0x000250:
    global.battlegroup = 78s
0x00025C:
    push -5s
    stog.flag[(+ 408s:flag 1s)] = 408s
    if !(== self.alldead 2s) goto 0x0002A0
0x000294:
    global.battlegroup = 19s
0x0002A0:
    if !(== self.alldead 1s) goto 0x0002E4
0x0002B4:
    stog.flag[224s] = 1s
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x000328
0x0002E4:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    if !(== self.desto 1s) goto 0x000328
0x00031C:
    call (instance_destroy[]:int32 )
0x000328:
    goto 0x000338
0x00032C:
    self.steps = 0s
0x000338:
    exit
