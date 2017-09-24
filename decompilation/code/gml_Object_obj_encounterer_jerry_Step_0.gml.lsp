0x000000:
    if !(> global.encounter self.steps) goto 0x0001B4
0x000018:
    if !(== global.phasing 0s) goto 0x0001A8
0x00002C:
    if !(== global.interact 0s) goto 0x0001A4
0x000040:
    call (script_execute[]:int32 (var 203s) (var 16s) (var 680s) (var 840s) (var 101s))
    global.encounter = 0s
    self.battlegroup = (round[]:int32 (random[]:int32 (var 15s)))
    if !(>= self.battlegroup 0s) goto 0x0000C0
0x0000B4:
    global.battlegroup = 35s
0x0000C0:
    if !(> self.battlegroup 8s) goto 0x0000E0
0x0000D4:
    global.battlegroup = 36s
0x0000E0:
    push -5s
    if !(< 70s:flag 3s) goto 0x00011C
0x0000FC:
    global.battlegroup = 24s
    stog.flag[70s] = 4s
0x00011C:
    if !(== self.alldead 2s) goto 0x00013C
0x000130:
    global.battlegroup = 19s
0x00013C:
    if !(== self.alldead 1s) goto 0x000180
0x000150:
    stog.flag[222s] = 1s
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x0001A4
0x000180:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x0001A4:
    goto 0x0001B4
0x0001A8:
    self.steps = 0s
0x0001B4:
    exit
