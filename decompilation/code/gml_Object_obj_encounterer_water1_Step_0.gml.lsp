0x000000:
    if !(> global.encounter self.steps) goto 0x0002BC
0x000018:
    if !(== global.phasing 0s) goto 0x0002B0
0x00002C:
    if !(== global.interact 0s) goto 0x0002AC
0x000040:
    call (script_execute[]:int32 (var 204s) (var 18s) (var 380s) (var 340s) (var 101s))
    if !(== self.room 90s) goto 0x0000BC
0x000088:
    call (script_execute[]:int32 (var 204s) (var 18s) (var 380s) (var 1040s) (var 101s))
0x0000BC:
    global.encounter = 0s
    self.battlegroup = (floor[]:int32 (random[]:int32 (var 15s)))
    if !(< self.battlegroup 15s) goto 0x000108
0x0000FC:
    global.battlegroup = 43s
0x000108:
    if !(< self.battlegroup 11s) goto 0x000128
0x00011C:
    global.battlegroup = 53s
0x000128:
    if !(< self.battlegroup 7s) goto 0x000148
0x00013C:
    global.battlegroup = 40s
0x000148:
    if !(< self.battlegroup 4s) goto 0x000168
0x00015C:
    global.battlegroup = 54s
0x000168:
    push -5s
    if !(== 357s:flag 0s) goto 0x000190
0x000184:
    global.battlegroup = 40s
0x000190:
    push -5s
    if !(== 357s:flag 1s) goto 0x0001B8
0x0001AC:
    global.battlegroup = 43s
0x0001B8:
    push -5s
    if !(== 357s:flag 2s) goto 0x0001E0
0x0001D4:
    global.battlegroup = 53s
0x0001E0:
    push -5s
    stog.flag[(+ 357s:flag 1s)] = 357s
    if !(== self.alldead 2s) goto 0x000224
0x000218:
    global.battlegroup = 19s
0x000224:
    if !(== self.alldead 1s) goto 0x000268
0x000238:
    stog.flag[223s] = 1s
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x0002AC
0x000268:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    if !(== self.desto 1s) goto 0x0002AC
0x0002A0:
    call (instance_destroy[]:int32 )
0x0002AC:
    goto 0x0002BC
0x0002B0:
    self.steps = 0s
0x0002BC:
    exit
