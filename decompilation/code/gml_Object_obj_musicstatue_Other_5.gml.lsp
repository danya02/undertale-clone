0x000000:
    if !(== self.boxactive 1s) goto 0x000028
0x000014:
    call (caster_free[]:int32 self.musicbox)
0x000028:
    exit
