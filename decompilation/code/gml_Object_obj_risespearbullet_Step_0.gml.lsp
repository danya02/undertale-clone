0x000000:
    if (== self.part 4s) goto 0x000028
0x000014:
    push (== self.deactivate 1s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000070
0x000030:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(<= self.image_alpha 0s) goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    exit
