0x000000:
    if !(== self.touched 0s) goto 0x000060
0x000014:
    stog.flag[388s] = 1s
    self.touched = 1s
    stog.alarm[0s] = 1s
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].vspeed = 0s
0x000060:
    exit
