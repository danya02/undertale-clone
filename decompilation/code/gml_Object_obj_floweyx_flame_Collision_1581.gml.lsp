0x000000:
    if !(>= self.image_index 3s) goto 0x000028
0x000014:
    push (<= self.image_index 18s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    call (event_inherited[]:int32 )
0x00003C:
    exit
