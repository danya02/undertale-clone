0x000000:
    if !(== self.dt 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000068
0x000038:
    self.dt = 0s
    push -5s
    stog.flag[(+ 253s:flag 1s)] = 253s
0x000068:
    push -5s
    if !(== 253s:flag 1s) goto 0x00009C
0x000084:
    self.sprite_index = 1297s
    self.image_index = 0s
0x00009C:
    push -5s
    if !(== 253s:flag 2s) goto 0x0000D0
0x0000B8:
    self.sprite_index = 1297s
    self.image_index = 1s
0x0000D0:
    push -5s
    if !(>= 253s:flag 3s) goto 0x000104
0x0000EC:
    self.sprite_index = 1297s
    self.image_index = 2s
0x000104:
    exit
