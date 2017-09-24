0x000000:
    if !(> global.encounter self.steps) goto 0x0002C0
0x000018:
    if !(== global.phasing 0s) goto 0x0002B4
0x00002C:
    if !(== global.interact 0s) goto 0x0002B0
0x000040:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 210s) (var 140s) (var 101s))
    push -5s
    if !(== 6s:flag 1s) goto 0x0000C4
0x000090:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 120s) (var 120s) (var 101s))
0x0000C4:
    global.encounter = 0s
    self.battlegroup = (random[]:int32 (var 15s))
    if !(<= self.battlegroup 2s) goto 0x000108
0x0000FC:
    global.battlegroup = 18s
0x000108:
    if !(> self.battlegroup 2s) goto 0x000128
0x00011C:
    global.battlegroup = 11s
0x000128:
    if !(> self.battlegroup 9s) goto 0x000148
0x00013C:
    global.battlegroup = 13s
0x000148:
    push -5s
    if !(== 6s:flag 1s) goto 0x00023C
0x000164:
    self.battlegroup = (random[]:int32 (var 20s))
    if !(<= self.battlegroup 4s) goto 0x00019C
0x000190:
    global.battlegroup = 128s
0x00019C:
    if !(> self.battlegroup 4s) goto 0x0001BC
0x0001B0:
    global.battlegroup = 129s
0x0001BC:
    if !(> self.battlegroup 8s) goto 0x0001DC
0x0001D0:
    global.battlegroup = 130s
0x0001DC:
    if !(> self.battlegroup 12s) goto 0x0001FC
0x0001F0:
    global.battlegroup = 121s
0x0001FC:
    if !(> self.battlegroup 16s) goto 0x00021C
0x000210:
    global.battlegroup = 124s
0x00021C:
    if !(> self.battlegroup 19s) goto 0x00023C
0x000230:
    global.battlegroup = 132s
0x00023C:
    if !(== self.alldead 2s) goto 0x00025C
0x000250:
    global.battlegroup = 19s
0x00025C:
    if !(== self.alldead 1s) goto 0x00028C
0x000270:
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x0002B0
0x00028C:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x0002B0:
    goto 0x0002C0
0x0002B4:
    self.steps = 0s
0x0002C0:
    exit
