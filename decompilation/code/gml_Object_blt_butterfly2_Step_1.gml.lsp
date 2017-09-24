0x000000:
    push self.x
    if !(< -5s 0s:idealborder) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    push self.x
    if !(> -5s (- 1s:idealborder 16s)) goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    push self.y
    if !(< -5s 2s:idealborder) goto 0x00008C
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    exit
