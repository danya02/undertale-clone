0x000000:
    if !(== self.jump 1s) goto 0x00006C
0x000014:
    if !(== 1570.path_position 1s) goto 0x00006C
0x000028:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    stog.alarm[2s] = 60s
    self.jump = 2s
0x00006C:
    if !(== self.jump 3s) goto 0x0000E4
0x000080:
    if !(== 1570.path_position 1s) goto 0x0000E4
0x000094:
    global.interact = 0s
    self.myinteract = 0s
    self.jump = 0s
    stog.background_visible[2s] = 0s
    [obj_solidsmall].solid = 1s
    global.phasing = 0s
0x0000E4:
    exit
