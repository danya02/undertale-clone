0x000000:
    if !(== global.entrance 2s) goto 0x000028
0x000014:
    push (== self.ld 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000058
0x000030:
    call (caster_free[]:int32 self.usong)
    call (caster_free[]:int32 self.ushock)
0x000058:
    exit
