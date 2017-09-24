0x000000:
    self.i = 0s
    if !(< self.i 10s) goto 0x000060
0x000020:
    push -1s
    call (caster_free[]:int32 (int32 self.i):p)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000060:
    if !(!= self.won 2s) goto 0x000080
0x000074:
    global.interact = 0s
0x000080:
    exit
