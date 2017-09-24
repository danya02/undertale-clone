0x000000:
    if !(== self.mode 0s) goto 0x000028
0x000014:
    call (caster_free[]:int32 self.dist)
0x000028:
    call (caster_resume[]:int32 global.currentsong)
0x00003C:
    exit
