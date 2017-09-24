0x000000:
    self.col = (- self.col 1s)
    if !(== self.col 0s) goto 0x000044
0x00002C:
    push 0s
    stog.image_index* = (int32 self.object_index)
0x000044:
    exit
