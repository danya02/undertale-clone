0x000000:
    if !(> global.encounter self.steps) goto 0x000130
0x000018:
    if !(== global.phasing 0s) goto 0x000130
0x00002C:
    if !(== global.interact 0s) goto 0x000124
0x000040:
    call (script_execute[]:int32 (var 203s) (var 16s) (var 680s) (var 840s) (var 101s))
    global.encounter = 0s
    global.battlegroup = 135s
    if !(== self.alldead 2s) goto 0x0000AC
0x0000A0:
    global.battlegroup = 19s
0x0000AC:
    if !(== self.alldead 1s) goto 0x0000F0
0x0000C0:
    stog.flag[222s] = 1s
    global.battlegroup = 19s
    self.alldead = 2s
    goto 0x000120
0x0000F0:
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
0x000120:
    goto 0x000130
0x000124:
    self.steps = 0s
0x000130:
    exit
