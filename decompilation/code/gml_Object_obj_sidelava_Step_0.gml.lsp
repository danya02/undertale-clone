0x000000:
    if (< self.x 100s) goto 0x000028
0x000014:
    push (> self.x 500s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    exit
