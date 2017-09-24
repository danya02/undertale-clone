0x000000:
    if !(> global.encounter self.steps) goto 0x00029C
0x000018:
    if !(== global.interact 0s) goto 0x00029C
0x00002C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 160s) (var 130s) (var 101s))
    push -5s
    if !(== 6s:flag 1s) goto 0x0000B0
0x00007C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 60s) (var 120s) (var 101s))
0x0000B0:
    global.encounter = 0s
    self.battlegroup = (random[]:int32 (var 15s))
    if !(<= self.battlegroup 2s) goto 0x0000F4
0x0000E8:
    global.battlegroup = 18s
0x0000F4:
    if !(> self.battlegroup 2s) goto 0x000114
0x000108:
    global.battlegroup = 11s
0x000114:
    if !(> self.battlegroup 9s) goto 0x000134
0x000128:
    global.battlegroup = 13s
0x000134:
    push -5s
    if !(== 6s:flag 1s) goto 0x000228
0x000150:
    self.battlegroup = (random[]:int32 (var 20s))
    if !(<= self.battlegroup 4s) goto 0x000188
0x00017C:
    global.battlegroup = 128s
0x000188:
    if !(> self.battlegroup 4s) goto 0x0001A8
0x00019C:
    global.battlegroup = 129s
0x0001A8:
    if !(> self.battlegroup 8s) goto 0x0001C8
0x0001BC:
    global.battlegroup = 130s
0x0001C8:
    if !(> self.battlegroup 12s) goto 0x0001E8
0x0001DC:
    global.battlegroup = 121s
0x0001E8:
    if !(> self.battlegroup 16s) goto 0x000208
0x0001FC:
    global.battlegroup = 124s
0x000208:
    if !(> self.battlegroup 19s) goto 0x000228
0x00021C:
    global.battlegroup = 132s
0x000228:
    if !(== self.alldead 2s) goto 0x000248
0x00023C:
    global.battlegroup = 19s
0x000248:
    if !(== self.alldead 1s) goto 0x000278
0x00025C:
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x00029C
0x000278:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x00029C:
    exit
