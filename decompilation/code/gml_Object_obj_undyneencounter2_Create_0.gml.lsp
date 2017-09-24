0x000000:
    self.cn = 0s
    self.active = 0s
    if !(< global.plot 110s) goto 0x0000B8
0x00002C:
    self.undyne = (instance_create[]:int32 (var 1117s) (var 90s) (var -40s))
    self.mkid = (instance_create[]:int32 (var 1115s) (var 100s) (var 360s))
    push 1436s
    stog.dsprite* = (int32 self.undyne)
    push 1436s
    stog.sprite_index* = (int32 self.undyne)
    self.active = 1s
0x0000B8:
    exit
