0x000000:
    if !(== self.flush 1s) goto 0x000028
0x000014:
    push (< self.image_alpha 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000050
0x000030:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x000050:
    if !(== self.flush 1s) goto 0x000078
0x000064:
    push (>= self.image_alpha 1s)
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x000098
0x000080:
    self.flush = 2s
    self.image_alpha = 1s
0x000098:
    if !(> self.iteration 0s) goto 0x0000C0
0x0000AC:
    push (== self.flush 0s)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x0000E0
0x0000C8:
    self.flush = 1s
    self.image_alpha = 0s
0x0000E0:
    if !(== self.iend self.iteration) goto 0x000104
0x0000F8:
    call (instance_destroy[]:int32 )
0x000104:
    exit
