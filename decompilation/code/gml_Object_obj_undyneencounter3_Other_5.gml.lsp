0x000000:
    if !(== global.entrance 2s) goto 0x00003C
0x000014:
    call (caster_free[]:int32 self.usong)
    call (caster_free[]:int32 self.ushock)
0x00003C:
    exit
