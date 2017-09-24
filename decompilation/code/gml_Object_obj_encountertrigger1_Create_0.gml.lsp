0x000000:
    self.image_yscale = 50s
    push -5s
    if !(== 30s:flag 1s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    exit
