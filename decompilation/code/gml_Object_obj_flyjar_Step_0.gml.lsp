0x000000:
    if !(== self.off 1s) goto 0x000028
0x000014:
    push (< self.image_alpha 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000050
0x000030:
    self.image_alpha = (+ self.image_alpha 0.02d)
0x000050:
    if (> 307.phase 2s) goto 0x000078
0x000064:
    push (< 307.phase 1s)
    goto 0x00007C
0x000078:
    push 1s
0x00007C:
    if !pop goto 0x00008C
0x000080:
    self.off = 2s
0x00008C:
    if !(== self.off 2s) goto 0x0000B4
0x0000A0:
    push (> self.image_alpha 0s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x000104
0x0000BC:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(<= self.image_alpha 0.05d) goto 0x000104
0x0000F8:
    call (instance_destroy[]:int32 )
0x000104:
    exit
