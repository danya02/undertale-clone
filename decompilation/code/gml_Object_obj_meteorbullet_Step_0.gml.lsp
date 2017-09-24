0x000000:
    if (> self.x 650s) goto 0x000028
0x000014:
    push (> self.y 490s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    if !(< self.image_alpha 1s) goto 0x000070
0x000050:
    self.image_alpha = (+ self.image_alpha 0.2d)
0x000070:
    exit
