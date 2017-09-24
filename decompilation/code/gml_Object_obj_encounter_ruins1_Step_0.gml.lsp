0x000000:
    if !(> global.encounter self.steps) goto 0x000220
0x000018:
    if !(== global.interact 0s) goto 0x000220
0x00002C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 80s) (var 190s) (var 101s))
    push -5s
    if !(== 6s:flag 1s) goto 0x0000B0
0x00007C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 60s) (var 100s) (var 101s))
0x0000B0:
    global.encounter = 0s
    push -5s
    if !(== 6s:flag 0s) goto 0x000134
0x0000D8:
    self.battlegroup = (random[]:int32 (var 2s))
    if !(<= self.battlegroup 1s) goto 0x000110
0x000104:
    global.battlegroup = 4s
0x000110:
    if !(> self.battlegroup 1s) goto 0x000130
0x000124:
    global.battlegroup = 5s
0x000130:
    goto 0x0001AC
0x000134:
    self.battlegroup = (random[]:int32 (var 3s))
    if !(<= self.battlegroup 1s) goto 0x00016C
0x000160:
    global.battlegroup = 126s
0x00016C:
    if !(> self.battlegroup 1s) goto 0x00018C
0x000180:
    global.battlegroup = 125s
0x00018C:
    if !(> self.battlegroup 2s) goto 0x0001AC
0x0001A0:
    global.battlegroup = 120s
0x0001AC:
    if !(== self.alldead 2s) goto 0x0001CC
0x0001C0:
    global.battlegroup = 19s
0x0001CC:
    if !(== self.alldead 1s) goto 0x0001FC
0x0001E0:
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x000220
0x0001FC:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x000220:
    exit
