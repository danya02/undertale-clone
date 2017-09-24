0x000000:
    if !(< self.x 0s) goto 0x000028
0x000014:
    push (< self.hspeed 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    if !(> self.x 640s) goto 0x000064
0x000050:
    push (> self.hspeed 0s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    exit
