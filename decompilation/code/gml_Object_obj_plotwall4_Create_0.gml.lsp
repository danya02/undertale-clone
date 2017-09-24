0x000000:
    self.phase = 0s
    self.image_yscale = 400s
    push -5s
    if !(== 35s:flag 1s) goto 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    exit
