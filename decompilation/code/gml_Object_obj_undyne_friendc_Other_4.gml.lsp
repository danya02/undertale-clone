0x000000:
    if !(== self.room 236s) goto 0x00003C
0x000014:
    push -5s
    if !(== 7s:flag 0s) goto 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    exit
