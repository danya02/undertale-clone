0x000000:
    if !(== global.phasing 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000070
0x000030:
    self.ar = 3s
    if !(< self.image_alpha 1s) goto 0x000070
0x000050:
    self.image_alpha = (+ self.image_alpha 0.2d)
0x000070:
    exit
