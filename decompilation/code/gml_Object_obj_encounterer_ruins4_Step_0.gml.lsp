0x000000:
    if !(> global.encounter self.steps) goto 0x0002E4
0x000018:
    if !(== global.interact 0s) goto 0x0002E4
0x00002C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 100s) (var 120s) (var 101s))
    push -5s
    if !(== 6s:flag 1s) goto 0x0000B0
0x00007C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 60s) (var 120s) (var 101s))
0x0000B0:
    global.encounter = 0s
    self.battlegroup = (random[]:int32 (var 20s))
    if !(<= self.battlegroup 4s) goto 0x0000F4
0x0000E8:
    global.battlegroup = 11s
0x0000F4:
    if !(> self.battlegroup 4s) goto 0x000114
0x000108:
    global.battlegroup = 12s
0x000114:
    if !(> self.battlegroup 8s) goto 0x000134
0x000128:
    global.battlegroup = 13s
0x000134:
    if !(> self.battlegroup 12s) goto 0x000154
0x000148:
    global.battlegroup = 16s
0x000154:
    if !(> self.battlegroup 16s) goto 0x000174
0x000168:
    global.battlegroup = 17s
0x000174:
    if !(> self.battlegroup 19s) goto 0x000194
0x000188:
    global.battlegroup = 15s
0x000194:
    push -5s
    if !(== 6s:flag 1s) goto 0x000270
0x0001B0:
    if !(<= self.battlegroup 4s) goto 0x0001D0
0x0001C4:
    global.battlegroup = 128s
0x0001D0:
    if !(> self.battlegroup 4s) goto 0x0001F0
0x0001E4:
    global.battlegroup = 129s
0x0001F0:
    if !(> self.battlegroup 8s) goto 0x000210
0x000204:
    global.battlegroup = 130s
0x000210:
    if !(> self.battlegroup 12s) goto 0x000230
0x000224:
    global.battlegroup = 121s
0x000230:
    if !(> self.battlegroup 16s) goto 0x000250
0x000244:
    global.battlegroup = 124s
0x000250:
    if !(> self.battlegroup 19s) goto 0x000270
0x000264:
    global.battlegroup = 132s
0x000270:
    if !(== self.alldead 2s) goto 0x000290
0x000284:
    global.battlegroup = 19s
0x000290:
    if !(== self.alldead 1s) goto 0x0002C0
0x0002A4:
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x0002E4
0x0002C0:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x0002E4:
    exit
