0x000000:
    self.i = 0s
    if !(< self.i 7s) goto 0x00006C
0x000020:
    push -1s
    pushenv (int32 (int32 self.i):part) 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    popenv 0x000040
0x000050:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00006C:
    exit
