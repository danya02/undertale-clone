0x000000:
    if !(== self.tvmode 0s) goto 0x000068
0x000014:
    self.tt = (choose[]:int32 (var 16s) (var 15s))
    self.tvmode = 4s
    stog.alarm[1s] = 15s
    stog.alarm[2s] = 40s
0x000068:
    exit
