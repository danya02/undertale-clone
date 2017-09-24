0x000000:
    if !(> global.encounter self.steps) goto 0x000254
0x000018:
    if !(== global.interact 0s) goto 0x000254
0x00002C:
    call (script_execute[]:int32 (var 202s) (var 20s) (var 230s) (var 250s) (var 101s))
    global.encounter = 0s
    self.battlegroup = (random[]:int32 (var 20s))
    if !(<= self.battlegroup 5s) goto 0x0000A4
0x000098:
    global.battlegroup = 4s
0x0000A4:
    if !(> self.battlegroup 5s) goto 0x0000C4
0x0000B8:
    global.battlegroup = 5s
0x0000C4:
    if !(> self.battlegroup 10s) goto 0x0000E4
0x0000D8:
    global.battlegroup = 7s
0x0000E4:
    if !(> self.battlegroup 15s) goto 0x000104
0x0000F8:
    global.battlegroup = 6s
0x000104:
    if !(> self.battlegroup 18s) goto 0x000124
0x000118:
    global.battlegroup = 9s
0x000124:
    push -5s
    if !(== 6s:flag 1s) goto 0x0001E0
0x000140:
    if !(<= self.battlegroup 5s) goto 0x000160
0x000154:
    global.battlegroup = 125s
0x000160:
    if !(> self.battlegroup 5s) goto 0x000180
0x000174:
    global.battlegroup = 126s
0x000180:
    if !(> self.battlegroup 10s) goto 0x0001A0
0x000194:
    global.battlegroup = 123s
0x0001A0:
    if !(> self.battlegroup 15s) goto 0x0001C0
0x0001B4:
    global.battlegroup = 122s
0x0001C0:
    if !(> self.battlegroup 18s) goto 0x0001E0
0x0001D4:
    global.battlegroup = 124s
0x0001E0:
    if !(== self.alldead 2s) goto 0x000200
0x0001F4:
    global.battlegroup = 19s
0x000200:
    if !(== self.alldead 1s) goto 0x000230
0x000214:
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x000254
0x000230:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
0x000254:
    exit
