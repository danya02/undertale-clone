0x000000:
    if !(== self.active 1s) goto 0x0000AC
0x000014:
    self.i = 0s
    if !(< self.i self.num) goto 0x0000AC
0x000038:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):child)) goto 0x000090
0x000060:
    push -1s
    pushenv (int32 (int32 self.i):child) 0x00008C
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    popenv 0x000080
0x000090:
    self.i = (+ self.i 1s)
    goto 0x000020
0x0000AC:
    exit
