0x000000:
    [blt_splinter].iend = self.ii
    push (var 623s)
    push -1s
    self.k = (instance_create[]:int32 (int32 self.ii):cy -1s (int32 self.ii):cx)
    push 63s
    stog.sprite_index* = (int32 self.k)
    push 1.5d
    stog.speed* = (int32 self.k)
    push 90s
    stog.direction* = (int32 self.k)
    push -0.2d
    stog.friction* = (int32 self.k)
0x0000C8:
    exit
