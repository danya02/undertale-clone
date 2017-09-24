0x000000:
    if !(> global.encounter self.steps) goto 0x0002A4
0x000018:
    if !(== global.interact 0s) goto 0x0002A4
0x00002C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 100s) (var 290s) (var 101s))
    push -5s
    if !(== 6s:flag 1s) goto 0x0000B0
0x00007C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 60s) (var 120s) (var 101s))
0x0000B0:
    global.encounter = 0s
    self.battlegroup = (random[]:int32 (var 20s))
    if !(<= self.battlegroup 5s) goto 0x0000F4
0x0000E8:
    global.battlegroup = 6s
0x0000F4:
    if !(> self.battlegroup 5s) goto 0x000114
0x000108:
    global.battlegroup = 7s
0x000114:
    if !(> self.battlegroup 10s) goto 0x000134
0x000128:
    global.battlegroup = 8s
0x000134:
    if !(> self.battlegroup 15s) goto 0x000154
0x000148:
    global.battlegroup = 9s
0x000154:
    if !(> self.battlegroup 18s) goto 0x000174
0x000168:
    global.battlegroup = 10s
0x000174:
    push -5s
    if !(== 6s:flag 1s) goto 0x000230
0x000190:
    if !(<= self.battlegroup 5s) goto 0x0001B0
0x0001A4:
    global.battlegroup = 125s
0x0001B0:
    if !(> self.battlegroup 5s) goto 0x0001D0
0x0001C4:
    global.battlegroup = 126s
0x0001D0:
    if !(> self.battlegroup 10s) goto 0x0001F0
0x0001E4:
    global.battlegroup = 123s
0x0001F0:
    if !(> self.battlegroup 15s) goto 0x000210
0x000204:
    global.battlegroup = 122s
0x000210:
    if !(> self.battlegroup 18s) goto 0x000230
0x000224:
    global.battlegroup = 124s
0x000230:
    if !(== self.alldead 2s) goto 0x000250
0x000244:
    global.battlegroup = 19s
0x000250:
    if !(== self.alldead 1s) goto 0x000280
0x000264:
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x0002A4
0x000280:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x0002A4:
    exit
