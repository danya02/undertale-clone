0x000000:
    if !(== self.image_alpha 1s) goto 0x0000C4
0x000014:
    stog.c[(int32 self.cn)] = (instance_create[]:int32 (var 472s) (+ self.y 30s) (+ self.x 30s))
    push 2s
    push -1s
    stog.image_xscale* = (int32 (int32 self.cn):c)
    push 2s
    push -1s
    stog.image_yscale* = (int32 (int32 self.cn):c)
    self.cn = (+ self.cn 1s)
0x0000C4:
    stog.alarm[0s] = 4s
0x0000D8:
    exit
