0x000000:
    self.i = 0s
    if !(< self.i self.maxnum) goto 0x000098
0x000024:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):glove)) goto 0x00007C
0x00004C:
    push -1s
    pushenv (int32 (int32 self.i):glove) 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    popenv 0x00006C
0x00007C:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000098:
    exit
