0x000000:
    if !(>= global.plot 35s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    push -5s
    if !(>= 275s:flag 2s) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    self.conversation = 0s
    self.image_yscale = 999s
    push -5s
    if !(> 47s:flag 2s) goto 0x000088
0x00007C:
    call (instance_destroy[]:int32 )
0x000088:
    exit
