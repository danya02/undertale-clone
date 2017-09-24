0x000000:
    if !(> global.plot 110s) goto 0x00003C
0x000014:
    push -5s
    if !(== 81s:flag 2s) goto 0x000030
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    self.image_yscale = 12s
0x000048:
    exit
