0x000000:
    self.image_yscale = (+ self.image_yscale 1s)
    if !(== (instance_exists[]:int32 (var 191s)) 0s) goto 0x000048
0x000034:
    push (== self.over 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x000070
0x000050:
    stog.alarm[1s] = 3s
    self.over = 1s
0x000070:
    exit
