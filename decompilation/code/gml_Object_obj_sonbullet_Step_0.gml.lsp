0x000000:
    if !(< self.image_alpha 1s) goto 0x000028
0x000014:
    push (== self.off 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000050
0x000030:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x000050:
    push self.x
    if !(< -5s (- 0s:idealborder 30s)) goto 0x000084
0x000078:
    self.off = 1s
0x000084:
    if !(== self.off 1s) goto 0x0000B8
0x000098:
    self.image_alpha = (- self.image_alpha 0.05d)
0x0000B8:
    if !(< self.image_alpha 0.1d) goto 0x0000E8
0x0000D4:
    push (== self.off 1s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x0000FC
0x0000F0:
    call (instance_destroy[]:int32 )
0x0000FC:
    exit
